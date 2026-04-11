<%@ Page Title="Invoice Preview" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InvoicePreview.aspx.cs" Inherits="TailwindConfiguration.InvoicePreview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        @media print {
            .no-print {
                display: none !important;
            }
            body {
                background: white;
            }
            .invoice-container {
                box-shadow: none;
                max-width: 100%;
            }
        }
        
        .invoice-container {
            background: white;
            color: #000;
        }
        
        .invoice-header {
            border-bottom: 3px solid #667eea;
            padding-bottom: 20px;
        }
        
        .invoice-section {
            border-bottom: 1px solid #e5e7eb;
            padding: 20px 0;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Action Buttons (No Print) -->
    <div class="no-print bg-gray-50 dark:bg-gray-800 py-6 mb-8">
        <div class="container mx-auto px-6">
            <div class="flex flex-wrap gap-4 justify-center items-center">
                <asp:Button ID="btnPrint" runat="server" 
                    Text="Print Invoice" 
                    OnClick="btnPrint_Click"
                    CssClass="px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors font-bold flex items-center">
                </asp:Button>
                
                <asp:Button ID="btnDownloadPDF" runat="server" 
                    Text="Download PDF" 
                    OnClick="btnDownloadPDF_Click"
                    CssClass="px-6 py-3 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors font-bold">
                </asp:Button>
                
                <asp:Button ID="btnBackToInvoice" runat="server" 
                    Text="Back to Editor" 
                    OnClick="btnBackToInvoice_Click"
                    CssClass="px-6 py-3 bg-purple-600 text-white rounded-lg hover:bg-purple-700 transition-colors font-bold">
                </asp:Button>
                
                <asp:Button ID="btnViewAll" runat="server" 
                    Text="View All Invoices" 
                    OnClick="btnViewAll_Click"
                    CssClass="px-6 py-3 border-2 border-gray-400 text-gray-700 dark:text-gray-300 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors font-bold">
                </asp:Button>
            </div>
        </div>
    </div>

    <!-- Invoice Document -->
    <div class="container mx-auto px-6 py-8">
        <div class="invoice-container max-w-4xl mx-auto bg-white shadow-2xl p-12">
            <!-- Invoice Header -->
            <div class="invoice-header mb-8">
                <div class="grid grid-cols-2 gap-8 mb-8">
                    <!-- Company Info -->
                    <div>
                        <div class="flex items-center mb-4">
                            <div class="w-12 h-12 bg-gradient-to-r from-purple-600 to-pink-600 rounded-lg flex items-center justify-center mr-3">
                                <i class="fas fa-file-invoice-dollar text-white text-xl"></i>
                            </div>
                            <div>
                                <h1 class="text-3xl font-bold text-gray-900">
                                    <asp:Label ID="lblCompanyName" runat="server"></asp:Label>
                                </h1>
                            </div>
                        </div>
                        <div class="text-sm text-gray-600 space-y-1">
                            <div><asp:Label ID="lblCompanyAddress" runat="server"></asp:Label></div>
                            <div>
                                <i class="fas fa-phone mr-2"></i>
                                <asp:Label ID="lblCompanyPhone" runat="server"></asp:Label>
                            </div>
                            <div>
                                <i class="fas fa-envelope mr-2"></i>
                                <asp:Label ID="lblCompanyEmail" runat="server"></asp:Label>
                            </div>
                        </div>
                    </div>

                    <!-- Invoice Number & Date -->
                    <div class="text-right">
                        <div class="mb-4">
                            <p class="text-gray-500 text-sm">INVOICE</p>
                            <p class="text-4xl font-bold text-purple-600">
                                <asp:Label ID="lblInvoiceNumber" runat="server"></asp:Label>
                            </p>
                        </div>
                        <div class="space-y-2 text-sm">
                            <div class="flex justify-end">
                                <span class="w-32 text-gray-600">Invoice Date:</span>
                                <span class="font-semibold">
                                    <asp:Label ID="lblInvoiceDate" runat="server"></asp:Label>
                                </span>
                            </div>
                            <div class="flex justify-end">
                                <span class="w-32 text-gray-600">Due Date:</span>
                                <span class="font-semibold">
                                    <asp:Label ID="lblDueDate" runat="server"></asp:Label>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Customer & Bill To -->
            <div class="invoice-section grid grid-cols-2 gap-8">
                <div>
                    <h3 class="text-sm font-bold text-gray-900 uppercase tracking-wide mb-3">Bill To:</h3>
                    <div class="text-sm text-gray-700 space-y-1">
                        <div class="font-semibold">
                            <asp:Label ID="lblCustomerName" runat="server"></asp:Label>
                        </div>
                        <div><asp:Label ID="lblCustomerAddress" runat="server"></asp:Label></div>
                        <div>
                            <i class="fas fa-phone mr-2 text-purple-600"></i>
                            <asp:Label ID="lblCustomerPhone" runat="server"></asp:Label>
                        </div>
                        <div>
                            <i class="fas fa-envelope mr-2 text-purple-600"></i>
                            <asp:Label ID="lblCustomerEmail" runat="server"></asp:Label>
                        </div>
                    </div>
                </div>

                <div>
                    <h3 class="text-sm font-bold text-gray-900 uppercase tracking-wide mb-3">Payment Terms:</h3>
                    <div class="bg-purple-50 p-4 rounded-lg border border-purple-200">
                        <p class="text-sm text-gray-700">
                            <asp:Label ID="lblPaymentTerms" runat="server"></asp:Label>
                        </p>
                    </div>
                </div>
            </div>

            <!-- Items Table -->
            <div class="invoice-section mt-8">
                <table class="w-full">
                    <thead>
                        <tr class="bg-gray-100 border-b-2 border-gray-300">
                            <th class="px-4 py-3 text-left text-sm font-bold text-gray-900">Description</th>
                            <th class="px-4 py-3 text-right text-sm font-bold text-gray-900">Unit Price</th>
                            <th class="px-4 py-3 text-center text-sm font-bold text-gray-900">Quantity</th>
                            <th class="px-4 py-3 text-right text-sm font-bold text-gray-900">Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:GridView ID="gvInvoicePreview" runat="server" 
                            AutoGenerateColumns="false"
                            CssClass="w-full"
                            GridLines="None">
                            <RowStyle CssClass="border-b border-gray-200"/>
                            <Columns>
                                <asp:BoundField DataField="ProductName" HeaderText="" 
                                    ItemStyle-CssClass="px-4 py-3 text-sm text-gray-700"/>
                                <asp:BoundField DataField="Price" HeaderText="" DataFormatString="₹ {0:N2}"
                                    ItemStyle-CssClass="px-4 py-3 text-sm text-right text-gray-700"/>
                                <asp:BoundField DataField="Quantity" HeaderText=""
                                    ItemStyle-CssClass="px-4 py-3 text-sm text-center text-gray-700"/>
                                <asp:TemplateField HeaderText="">
                                    <ItemTemplate>
                                        <div class="px-4 py-3 text-sm text-right text-gray-700 font-semibold">
                                            ₹ <%# (decimal.Parse(Eval("Price").ToString()) * int.Parse(Eval("Quantity").ToString())).ToString("N2") %>
                                        </div>
                                    </ItemTemplate>
                                    <ItemStyle CssClass="px-4 py-3 text-sm text-right"/>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </tbody>
                </table>
            </div>

            <!-- Totals Section -->
            <div class="invoice-section mt-8">
                <div class="grid grid-cols-2 gap-8">
                    <div id="notesSection" runat="server">
                        <h3 class="text-sm font-bold text-gray-900 uppercase tracking-wide mb-3">Notes:</h3>
                        <p class="text-sm text-gray-700 whitespace-pre-wrap">
                            <asp:Label ID="lblNotes" runat="server"></asp:Label>
                        </p>
                    </div>

                    <div>
                        <div class="space-y-3">
                            <!-- Subtotal -->
                            <div class="flex justify-between">
                                <span class="text-gray-700 font-semibold">Subtotal:</span>
                                <span class="text-gray-900 font-semibold">
                                    <asp:Label ID="lblSubtotalAmount" runat="server"></asp:Label>
                                </span>
                            </div>

                            <!-- GST -->
                            <div class="flex justify-between bg-blue-50 p-3 rounded">
                                <span class="text-gray-700 font-semibold">
                                    GST (<asp:Label ID="lblGSTRate" runat="server"></asp:Label>):
                                </span>
                                <span class="text-blue-600 font-bold">
                                    <asp:Label ID="lblGSTAmountValue" runat="server"></asp:Label>
                                </span>
                            </div>

                            <!-- Total -->
                            <div class="flex justify-between bg-gradient-to-r from-purple-600 to-pink-600 p-4 rounded-lg text-white">
                                <span class="font-bold text-lg">TOTAL AMOUNT:</span>
                                <span class="font-bold text-2xl">
                                    <asp:Label ID="lblTotalAmountValue" runat="server"></asp:Label>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer -->
            <div class="mt-12 pt-8 border-t border-gray-300 text-center text-xs text-gray-500">
                <p>This is a computer-generated invoice. No signature is required.</p>
                <p class="mt-2">Thank you for your business!</p>
            </div>
        </div>
    </div>
</asp:Content>
