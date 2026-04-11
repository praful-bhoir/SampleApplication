using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using TailwindConfiguration.Models;

namespace TailwindConfiguration
{
    public partial class Invoice : Page
    {
        public Models.Invoice currentInvoice;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                InitializeInvoice();
                LoadProducts();
                BindInvoiceItems();
                UpdateTotals();
            }
        }

        private void InitializeInvoice()
        {
            if (Session["CurrentInvoice"] == null)
            {
                currentInvoice = new Models.Invoice();
                Session["CurrentInvoice"] = currentInvoice;
            }
            else
            {
                currentInvoice = (Models.Invoice)Session["CurrentInvoice"];
            }
        }

        private void LoadProducts()
        {
            var products = ProductRepository.GetAllProducts();
            ddlProducts.DataSource = products;
            ddlProducts.DataTextField = "Name";
            ddlProducts.DataValueField = "Id";
            ddlProducts.DataBind();
            ddlProducts.Items.Insert(0, new ListItem("-- Select Product --", "0"));
        }

        protected void btnAddProduct_Click(object sender, EventArgs e)
        {
            try
            {
                int productId = int.Parse(ddlProducts.SelectedValue);
                int quantity = int.Parse(txtQuantity.Text);

                if (productId == 0)
                {
                    ShowAlert("Please select a product", "warning");
                    return;
                }

                if (quantity <= 0)
                {
                    ShowAlert("Quantity must be greater than 0", "warning");
                    return;
                }

                var product = ProductRepository.GetProductById(productId);
                if (product == null)
                {
                    ShowAlert("Product not found", "danger");
                    return;
                }

                // Check if product already exists in invoice
                var existingItem = currentInvoice?.Items?.FirstOrDefault(i => i.ProductId == productId);
                if (existingItem != null)
                {
                    existingItem.Quantity += quantity;
                }
                else
                {
                    var item = new InvoiceItem
                    {
                        ProductId = product.Id,
                        ProductName = product.Name,
                        Price = product.Price,
                        Quantity = quantity
                    };
                    currentInvoice.AddItem(item);
                }

                BindInvoiceItems();
                UpdateTotals();
                ClearProductFields();
                ShowAlert("Product added successfully", "success");
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message, "danger");
            }
        }

        protected void gvInvoiceItems_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = int.Parse(e.CommandArgument.ToString());
            
            if (e.CommandName == "Delete")
            {
                currentInvoice.RemoveItem(index);
                BindInvoiceItems();
                UpdateTotals();
                ShowAlert("Item removed from invoice", "info");
            }
        }

        protected void btnUpdateQuantity_Click(object sender, EventArgs e)
        {
            BindInvoiceItems();
            UpdateTotals();
        }

        protected void BindInvoiceItems()
        {
            gvInvoiceItems.DataSource = currentInvoice.Items;
            gvInvoiceItems.DataBind();
        }

        private void UpdateTotals()
        {
            currentInvoice.CalculateTotals();
            lblSubtotal.Text = "₹ " + currentInvoice.Subtotal.ToString("N2");
            lblGSTAmount.Text = "₹ " + currentInvoice.GSTAmount.ToString("N2");
            lblTotalAmount.Text = "₹ " + currentInvoice.TotalAmount.ToString("N2");
        }

        protected void btnGenerateInvoice_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txtCustomerName.Text))
                {
                    ShowAlert("Please enter customer name", "warning");
                    return;
                }

                if (currentInvoice.Items.Count == 0)
                {
                    ShowAlert("Please add at least one product", "warning");
                    return;
                }

                // Update invoice details
                currentInvoice.CustomerName = txtCustomerName.Text;
                currentInvoice.CustomerEmail = txtCustomerEmail.Text;
                currentInvoice.CustomerPhone = txtCustomerPhone.Text;
                currentInvoice.CustomerAddress = txtCustomerAddress.Text;
                currentInvoice.Notes = txtNotes.Text;
                currentInvoice.GSTRate = decimal.Parse(txtGSTRate.Text);

                currentInvoice.CalculateTotals();
                currentInvoice.InvoiceNumber = currentInvoice.GenerateInvoiceNumber();

                // Save invoice
                InvoiceRepository.SaveInvoice(currentInvoice);

                // Redirect to preview/print page
                Response.Redirect("InvoicePreview.aspx?invoiceNo=" + currentInvoice.InvoiceNumber);
            }
            catch (Exception ex)
            {
                ShowAlert("Error: " + ex.Message, "danger");
            }
        }

        protected void btnNewInvoice_Click(object sender, EventArgs e)
        {
            Session["CurrentInvoice"] = new Models.Invoice();
            currentInvoice = (Models.Invoice)Session["CurrentInvoice"];
            ClearAllFields();
            BindInvoiceItems();
            UpdateTotals();
            ShowAlert("New invoice created", "success");
        }

        protected void btnClearCart_Click(object sender, EventArgs e)
        {
            currentInvoice.Items.Clear();
            currentInvoice.CalculateTotals();
            BindInvoiceItems();
            UpdateTotals();
            ShowAlert("Cart cleared", "info");
        }

        private void ClearProductFields()
        {
            ddlProducts.SelectedIndex = 0;
            txtQuantity.Text = "1";
        }

        private void ClearAllFields()
        {
            txtCustomerName.Text = "";
            txtCustomerEmail.Text = "";
            txtCustomerPhone.Text = "";
            txtCustomerAddress.Text = "";
            txtNotes.Text = "";
            ClearProductFields();
        }

        private void ShowAlert(string message, string type)
        {
            string alertClass = "";
            string icon = "";

            switch (type.ToLower())
            {
                case "success":
                    alertClass = "bg-green-100 border-green-400 text-green-700";
                    icon = "fa-check-circle";
                    break;
                case "warning":
                    alertClass = "bg-yellow-100 border-yellow-400 text-yellow-700";
                    icon = "fa-exclamation-circle";
                    break;
                case "danger":
                    alertClass = "bg-red-100 border-red-400 text-red-700";
                    icon = "fa-times-circle";
                    break;
                default:
                    alertClass = "bg-blue-100 border-blue-400 text-blue-700";
                    icon = "fa-info-circle";
                    break;
            }

            // Display alert message (you can also use a Label control if preferred)
            ClientScript.RegisterStartupScript(this.GetType(), "alert", 
                $"alert('{message}');", true);
        }
    }
}
