using System;
using System.Web.UI;
using TailwindConfiguration.Models;

namespace TailwindConfiguration
{
    public partial class InvoicePreview : Page
    {
        private Models.Invoice invoice;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadInvoice();
            }
        }

        private void LoadInvoice()
        {
            string invoiceNo = Request.QueryString["invoiceNo"];
            
            if (string.IsNullOrEmpty(invoiceNo))
            {
                // Try to get from session
                invoice = (Models.Invoice)Session["CurrentInvoice"];
                if (invoice == null)
                {
                    Response.Redirect("Invoice.aspx");
                    return;
                }
            }
            else
            {
                invoice = InvoiceRepository.GetInvoiceByNumber(invoiceNo);
                if (invoice == null)
                {
                    Response.Redirect("InvoiceList.aspx");
                    return;
                }
            }

            // Bind invoice details
            BindInvoiceData();
        }

        private void BindInvoiceData()
        {
            // Company Details
            lblCompanyName.Text = invoice.CompanyName;
            lblCompanyAddress.Text = invoice.CompanyAddress;
            lblCompanyPhone.Text = invoice.CompanyPhone;
            lblCompanyEmail.Text = invoice.CompanyEmail;

            // Invoice Details
            lblInvoiceNumber.Text = invoice.InvoiceNumber;
            lblInvoiceDate.Text = invoice.InvoiceDate.ToString("MMM dd, yyyy");
            lblDueDate.Text = invoice.DueDate.ToString("MMM dd, yyyy");

            // Customer Details
            lblCustomerName.Text = invoice.CustomerName;
            lblCustomerEmail.Text = invoice.CustomerEmail;
            lblCustomerPhone.Text = invoice.CustomerPhone;
            lblCustomerAddress.Text = invoice.CustomerAddress;

            // Invoice Items
            gvInvoicePreview.DataSource = invoice.Items;
            gvInvoicePreview.DataBind();

            // Totals
            lblSubtotalAmount.Text = "₹ " + invoice.Subtotal.ToString("N2");
            lblGSTRate.Text = invoice.GSTRate.ToString("N2") + "%";
            lblGSTAmountValue.Text = "₹ " + invoice.GSTAmount.ToString("N2");
            lblTotalAmountValue.Text = "₹ " + invoice.TotalAmount.ToString("N2");

            // Notes
            if (!string.IsNullOrEmpty(invoice.Notes))
            {
                lblNotes.Text = invoice.Notes;
                notesSection.Visible = true;
            }
            else
            {
                notesSection.Visible = false;
            }

            // Payment Terms
            lblPaymentTerms.Text = invoice.PaymentTerms;
        }

        protected void btnPrint_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "print", "window.print();", true);
        }

        protected void btnDownloadPDF_Click(object sender, EventArgs e)
        {
            // For now, direct to print dialog which can save as PDF
            ClientScript.RegisterStartupScript(this.GetType(), "print", "window.print();", true);
        }

        protected void btnBackToInvoice_Click(object sender, EventArgs e)
        {
            Response.Redirect("Invoice.aspx");
        }

        protected void btnViewAll_Click(object sender, EventArgs e)
        {
            Response.Redirect("InvoiceList.aspx");
        }
    }
}
