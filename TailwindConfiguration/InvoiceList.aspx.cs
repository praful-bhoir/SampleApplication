using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using TailwindConfiguration.Models;

namespace TailwindConfiguration
{
    public partial class InvoiceList : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInvoices();
            }
        }

        private void LoadInvoices()
        {
            var invoices = InvoiceRepository.GetAllInvoices();

            if (invoices.Count == 0)
            {
                emptyState.Visible = true;
                gvInvoices.Visible = false;
            }
            else
            {
                emptyState.Visible = false;
                gvInvoices.Visible = true;
                gvInvoices.DataSource = invoices.OrderByDescending(i => i.InvoiceDate).ToList();
                gvInvoices.DataBind();

                // Update statistics
                UpdateStatistics(invoices);
            }
        }

        private void UpdateStatistics(List<Models.Invoice> invoices)
        {
            int totalInvoices = invoices.Count;
            decimal totalRevenue = invoices.Sum(i => i.TotalAmount);
            decimal averageInvoice = totalInvoices > 0 ? totalRevenue / totalInvoices : 0;

            lblTotalInvoices.Text = totalInvoices.ToString();
            lblTotalRevenue.Text = "₹ " + totalRevenue.ToString("N2");
            lblAverageInvoice.Text = "₹ " + averageInvoice.ToString("N2");
        }

        protected void gvInvoices_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            string invoiceNumber = e.CommandArgument.ToString();

            if (e.CommandName == "View")
            {
                Response.Redirect("InvoicePreview.aspx?invoiceNo=" + invoiceNumber);
            }
            else if (e.CommandName == "Delete")
            {
                InvoiceRepository.DeleteInvoice(invoiceNumber);
                LoadInvoices();
                ShowMessage("Invoice deleted successfully", "success");
            }
        }

        protected void btnCreateNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("Invoice.aspx");
        }

        private void ShowMessage(string message, string type)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", 
                $"alert('{message}');", true);
        }
    }
}
