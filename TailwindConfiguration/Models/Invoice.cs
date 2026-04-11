using System;
using System.Collections.Generic;
using System.Linq;

namespace TailwindConfiguration.Models
{
    public class InvoiceItem
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public decimal Total { get; set; }

        public decimal GetLineTotal()
        {
            return Price * Quantity;
        }
    }

    public class Invoice
    {
        public string InvoiceNumber { get; set; }
        public DateTime InvoiceDate { get; set; }
        public DateTime DueDate { get; set; }
        public string CustomerName { get; set; }
        public string CustomerEmail { get; set; }
        public string CustomerPhone { get; set; }
        public string CustomerAddress { get; set; }
        public List<InvoiceItem> Items { get; set; }
        public decimal Subtotal { get; set; }
        public decimal GSTRate { get; set; } // In percentage (e.g., 18 for 18%)
        public decimal GSTAmount { get; set; }
        public decimal TotalAmount { get; set; }
        public string Notes { get; set; }
        public string CompanyName { get; set; }
        public string CompanyAddress { get; set; }
        public string CompanyPhone { get; set; }
        public string CompanyEmail { get; set; }
        public string PaymentTerms { get; set; }

        public Invoice()
        {
            Items = new List<InvoiceItem>();
            InvoiceDate = DateTime.Now;
            DueDate = DateTime.Now.AddDays(30);
            GSTRate = 18; // Default 18% GST (India standard)
            CompanyName = "Your Company Name";
            CompanyAddress = "123 Business Street, City, Country";
            CompanyPhone = "+1 (555) 123-4567";
            CompanyEmail = "info@company.com";
            PaymentTerms = "Net 30";
        }

        public void AddItem(InvoiceItem item)
        {
            Items.Add(item);
            CalculateTotals();
        }

        public void RemoveItem(int index)
        {
            if (index >= 0 && index < Items.Count)
            {
                Items.RemoveAt(index);
                CalculateTotals();
            }
        }

        public void CalculateTotals()
        {
            Subtotal = Items.Sum(i => i.GetLineTotal());
            GSTAmount = Subtotal * (GSTRate / 100m);
            TotalAmount = Subtotal + GSTAmount;
        }

        public string GenerateInvoiceNumber()
        {
            return "INV-" + DateTime.Now.ToString("yyyyMMddHHmmss");
        }
    }

    // In-memory storage for invoices
    public static class InvoiceRepository
    {
        private static List<Invoice> invoices = new List<Invoice>();

        public static List<Invoice> GetAllInvoices()
        {
            return invoices;
        }

        public static Invoice GetInvoiceByNumber(string invoiceNumber)
        {
            return invoices.FirstOrDefault(i => i.InvoiceNumber == invoiceNumber);
        }

        public static void SaveInvoice(Invoice invoice)
        {
            if (string.IsNullOrEmpty(invoice.InvoiceNumber))
            {
                invoice.InvoiceNumber = invoice.GenerateInvoiceNumber();
            }

            // Check if invoice already exists
            var existingIndex = invoices.FindIndex(i => i.InvoiceNumber == invoice.InvoiceNumber);
            if (existingIndex != -1)
            {
                invoices[existingIndex] = invoice;
            }
            else
            {
                invoices.Add(invoice);
            }
        }

        public static void DeleteInvoice(string invoiceNumber)
        {
            invoices.RemoveAll(i => i.InvoiceNumber == invoiceNumber);
        }

        public static decimal GetTotalRevenue()
        {
            return invoices.Sum(i => i.TotalAmount);
        }

        public static int GetTotalInvoices()
        {
            return invoices.Count;
        }
    }
}
