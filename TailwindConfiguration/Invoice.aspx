<%@ Page Title="Create Invoice" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="TailwindConfiguration.Invoice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .invoice-item-row {
            @apply border-b border-gray-200 dark:border-gray-700;
        }

            .invoice-item-row:hover {
                @apply bg-gray-50 dark:bg-gray-700;
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-purple-600 to-pink-600 text-white py-12 mb-12">
        <div class="container mx-auto px-6">
            <div class="flex items-center justify-between">
                <div>
                    <h1 class="text-4xl font-bold mb-2">Invoice Generator</h1>
                    <p class="text-purple-100">Create professional invoices with products and GST calculation</p>
                </div>
                <div class="text-5xl opacity-30">
                    <i class="fas fa-file-invoice-dollar"></i>
                </div>
            </div>
        </div>
    </section>

    <!-- Main Container -->
    <div class="container mx-auto px-6 py-8">
        <div class="grid lg:grid-cols-3 gap-8">
            <!-- Left Column - Customer & Products -->
            <div class="lg:col-span-2 space-y-6">
                <!-- Customer Information Card -->
                <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                    <h2 class="text-2xl font-bold mb-6 gradient-text flex items-center">
                        <i class="fas fa-user-circle mr-3"></i>Customer Information
                    </h2>

                    <div class="grid md:grid-cols-2 gap-4 mb-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                                Customer Name <span class="text-red-500">*</span>
                            </label>
                            <asp:TextBox ID="txtCustomerName" runat="server"
                                placeholder="Enter customer name"
                                CssClass="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            </asp:TextBox>
                        </div>

                        <div>
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                                Email Address
                            </label>
                            <asp:TextBox ID="txtCustomerEmail" runat="server"
                                TextMode="Email"
                                placeholder="customer@example.com"
                                CssClass="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            </asp:TextBox>
                        </div>
                    </div>

                    <div class="grid md:grid-cols-2 gap-4 mb-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                                Phone Number
                            </label>
                            <asp:TextBox ID="txtCustomerPhone" runat="server"
                                TextMode="Phone"
                                placeholder="+1 (555) 123-4567"
                                CssClass="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            </asp:TextBox>
                        </div>

                        <div>
                            <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                                GST Rate (%)
                            </label>
                            <asp:TextBox ID="txtGSTRate" runat="server"
                                Text="18"
                                placeholder="18"
                                CssClass="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                            </asp:TextBox>
                        </div>
                    </div>

                    <div>
                        <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                            Address
                        </label>
                        <asp:TextBox ID="txtCustomerAddress" runat="server"
                            TextMode="MultiLine"
                            Rows="3"
                            placeholder="Enter customer address"
                            CssClass="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white resize-none">
                        </asp:TextBox>
                    </div>
                </div>

                <!-- Add Products Card -->
                <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                    <h2 class="text-2xl font-bold mb-6 gradient-text flex items-center">
                        <i class="fas fa-box-open mr-3"></i>Add Products
                    </h2>

                    <div class="space-y-4">
                        <div class="grid md:grid-cols-3 gap-4">
                            <div>
                                <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                                    Select Product
                                </label>
                                <asp:DropDownList ID="ddlProducts" runat="server"
                                    CssClass="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                                </asp:DropDownList>
                            </div>

                            <div>
                                <label class="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                                    Quantity
                                </label>
                                <asp:TextBox ID="txtQuantity" runat="server"
                                    Text="1"
                                    TextMode="Number"
                                    Min="1"
                                    placeholder="Enter quantity"
                                    CssClass="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white">
                                </asp:TextBox>
                            </div>

                            <div class="flex items-end">
                                <asp:Button ID="btnAddProduct" runat="server"
                                    Text="Add Product"
                                    OnClick="btnAddProduct_Click"
                                    CssClass="w-full px-6 py-2 gradient-bg text-white rounded-lg hover:opacity-90 transition-opacity font-medium"></asp:Button>
                            </div>
                        </div>

                        <!-- Products in invoice -->
                        <div class="mt-6">
                            <h3 class="font-semibold text-lg mb-4 text-gray-800 dark:text-white">Invoice Items (<asp:Label ID="lblItemCount" runat="server" Text="0"></asp:Label>)
                            </h3>

                            <asp:GridView ID="gvInvoiceItems" runat="server"
                                AutoGenerateColumns="false"
                                CssClass="w-full"
                                OnRowCommand="gvInvoiceItems_RowCommand"
                                GridLines="None">
                                <HeaderStyle CssClass="bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300 font-semibold border-b border-gray-300 dark:border-gray-600" />
                                <RowStyle CssClass="invoice-item-row" />
                                <Columns>
                                    <asp:BoundField DataField="ProductName" HeaderText="Product Name" ItemStyle-CssClass="px-4 py-3" />
                                    <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="₹ {0:N2}" ItemStyle-CssClass="px-4 py-3 text-right" />
                                    <asp:BoundField DataField="Quantity" HeaderText="Qty" ItemStyle-CssClass="px-4 py-3 text-center" />
                                    <asp:TemplateField HeaderText="Total" ItemStyle-CssClass="px-4 py-3 text-right">
                                        <ItemTemplate>
                                            ₹ <%# (decimal.Parse(Eval("Price").ToString()) * int.Parse(Eval("Quantity").ToString())).ToString("N2") %>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Action" ItemStyle-CssClass="px-4 py-3 text-center">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="btnDelete" runat="server"
                                                CommandName="Delete"
                                                CommandArgument="<%# Container.DataItemIndex %>"
                                                CssClass="text-red-600 hover:text-red-800 font-semibold">
                                                    <i class="fas fa-trash"></i> Delete
                                            </asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                            <% if (currentInvoice?.Items?.Count == 0) { %>
                            <div class="text-center py-8 text-gray-500 dark:text-gray-400">
                                <i class="fas fa-inbox text-4xl mb-2"></i>
                                <p>No items added yet. Add products above to create an invoice.</p>
                            </div>
                            <% } %>
                        </div>
                    </div>
                </div>

                <!-- Notes Card -->
                <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                    <h2 class="text-lg font-bold mb-4 text-gray-800 dark:text-white">
                        <i class="fas fa-sticky-note mr-2 text-purple-600"></i>Additional Notes
                    </h2>
                    <asp:TextBox ID="txtNotes" runat="server"
                        TextMode="MultiLine"
                        Rows="4"
                        placeholder="Enter payment terms, special instructions, etc."
                        CssClass="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg focus:ring-2 focus:ring-purple-500 focus:border-transparent dark:bg-gray-700 dark:text-white resize-none">
                    </asp:TextBox>
                </div>
            </div>

            <!-- Right Column - Summary -->
            <div class="space-y-6">
                <!-- Invoice Summary Card -->
                <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6 sticky top-20">
                    <h2 class="text-2xl font-bold mb-6 text-gray-800 dark:text-white">Invoice Summary</h2>

                    <div class="space-y-4">
                        <!-- Subtotal -->
                        <div class="flex justify-between items-center pb-4 border-b border-gray-200 dark:border-gray-700">
                            <span class="text-gray-700 dark:text-gray-300">Subtotal:</span>
                            <span class="text-lg font-semibold text-gray-900 dark:text-white">
                                <asp:Label ID="lblSubtotal" runat="server" Text="₹ 0.00"></asp:Label>
                            </span>
                        </div>

                        <!-- GST Calculation -->
                        <div class="space-y-2 pb-4 border-b border-gray-200 dark:border-gray-700">
                            <div class="flex justify-between items-center">
                                <span class="text-gray-700 dark:text-gray-300">GST Rate:</span>
                                <span class="font-semibold text-gray-900 dark:text-white">
                                    <asp:Label ID="lblGSTRate" runat="server" Text="18%"></asp:Label>
                                </span>
                            </div>
                            <div class="flex justify-between items-center">
                                <span class="text-gray-700 dark:text-gray-300">GST Amount:</span>
                                <span class="font-semibold text-gray-900 dark:text-white">
                                    <asp:Label ID="lblGSTAmount" runat="server" Text="₹ 0.00"></asp:Label>
                                </span>
                            </div>
                        </div>

                        <!-- Total Amount -->
                        <div class="flex justify-between items-center py-4 bg-purple-50 dark:bg-purple-900/20 px-4 rounded-lg">
                            <span class="text-lg font-bold text-gray-800 dark:text-white">Total Amount:</span>
                            <span class="text-2xl font-bold gradient-text">
                                <asp:Label ID="lblTotalAmount" runat="server" Text="₹ 0.00"></asp:Label>
                            </span>
                        </div>

                        <!-- Quick Stats -->
                        <div class="grid grid-cols-2 gap-4 pt-4">
                            <div class="bg-blue-50 dark:bg-blue-900/20 p-4 rounded-lg text-center">
                                <div class="text-2xl font-bold text-blue-600 dark:text-blue-400">
                                    <asp:Label ID="lblItemCount2" runat="server" Text="0"></asp:Label>
                                </div>
                                <div class="text-xs text-gray-600 dark:text-gray-400">Items</div>
                            </div>
                            <div class="bg-green-50 dark:bg-green-900/20 p-4 rounded-lg text-center">
                                <div class="text-2xl font-bold text-green-600 dark:text-green-400">
                                    ₹<asp:Label ID="lblTotalItems" runat="server" Text="0"></asp:Label>
                                </div>
                                <div class="text-xs text-gray-600 dark:text-gray-400">Subtotal</div>
                            </div>
                        </div>
                    </div>

                    <!-- Action Buttons -->
                    <div class="space-y-3 mt-8">
                        <asp:Button ID="btnGenerateInvoice" runat="server"
                            Text="Generate & Preview"
                            OnClick="btnGenerateInvoice_Click"
                            CssClass="w-full px-6 py-3 gradient-bg text-white rounded-lg hover:opacity-90 transition-opacity font-bold text-lg"></asp:Button>

                        <asp:Button ID="btnNewInvoice" runat="server"
                            Text="New Invoice"
                            OnClick="btnNewInvoice_Click"
                            CssClass="w-full px-6 py-3 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition-colors font-bold"></asp:Button>

                        <asp:Button ID="btnClearCart" runat="server"
                            Text="Clear Cart"
                            OnClick="btnClearCart_Click"
                            CssClass="w-full px-6 py-3 border-2 border-red-600 text-red-600 dark:border-red-500 dark:text-red-400 rounded-lg hover:bg-red-50 dark:hover:bg-red-900/20 transition-colors font-bold"></asp:Button>
                    </div>
                </div>

                <!-- Info Card -->
                <div class="bg-blue-50 dark:bg-blue-900/20 border border-blue-200 dark:border-blue-800 rounded-xl p-6">
                    <h3 class="font-bold text-blue-900 dark:text-blue-300 mb-3 flex items-center">
                        <i class="fas fa-info-circle mr-2"></i>How to Use
                    </h3>
                    <ul class="text-sm text-blue-800 dark:text-blue-200 space-y-2">
                        <li class="flex items-start">
                            <span class="mr-2">1.</span>
                            <span>Enter customer details</span>
                        </li>
                        <li class="flex items-start">
                            <span class="mr-2">2.</span>
                            <span>Select products and quantity</span>
                        </li>
                        <li class="flex items-start">
                            <span class="mr-2">3.</span>
                            <span>GST is calculated automatically</span>
                        </li>
                        <li class="flex items-start">
                            <span class="mr-2">4.</span>
                            <span>Click "Generate & Preview" to create invoice</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
