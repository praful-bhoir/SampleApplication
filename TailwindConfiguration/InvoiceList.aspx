<%@ Page Title="Invoice History" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InvoiceList.aspx.cs" Inherits="TailwindConfiguration.InvoiceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-purple-600 to-pink-600 text-white py-12 mb-12">
        <div class="container mx-auto px-6">
            <div class="flex items-center justify-between">
                <div>
                    <h1 class="text-4xl font-bold mb-2">Invoice History</h1>
                    <p class="text-purple-100">View and manage all generated invoices</p>
                </div>
                <div class="text-5xl opacity-30">
                    <i class="fas fa-list-ul"></i>
                </div>
            </div>
        </div>
    </section>

    <!-- Main Container -->
    <div class="container mx-auto px-6 py-8">
        
            <!-- Statistics Cards -->
            <div class="grid md:grid-cols-3 gap-6 mb-8">
                <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-gray-600 dark:text-gray-400 text-sm font-semibold">Total Invoices</p>
                            <h3 class="text-3xl font-bold text-gray-900 dark:text-white mt-2">
                                <asp:Label ID="lblTotalInvoices" runat="server" Text="0"></asp:Label>
                            </h3>
                        </div>
                        <div class="w-16 h-16 bg-blue-100 dark:bg-blue-900/30 rounded-full flex items-center justify-center">
                            <i class="fas fa-file-invoice text-3xl text-blue-600 dark:text-blue-400"></i>
                        </div>
                    </div>
                </div>

                <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-gray-600 dark:text-gray-400 text-sm font-semibold">Total Revenue</p>
                            <h3 class="text-3xl font-bold gradient-text mt-2">
                                <asp:Label ID="lblTotalRevenue" runat="server" Text="₹ 0.00"></asp:Label>
                            </h3>
                        </div>
                        <div class="w-16 h-16 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center">
                            <i class="fas fa-money-bill-wave text-3xl text-green-600 dark:text-green-400"></i>
                        </div>
                    </div>
                </div>

                <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                    <div class="flex items-center justify-between">
                        <div>
                            <p class="text-gray-600 dark:text-gray-400 text-sm font-semibold">Average Invoice</p>
                            <h3 class="text-3xl font-bold text-purple-600 dark:text-purple-400 mt-2">
                                <asp:Label ID="lblAverageInvoice" runat="server" Text="₹ 0.00"></asp:Label>
                            </h3>
                        </div>
                        <div class="w-16 h-16 bg-purple-100 dark:bg-purple-900/30 rounded-full flex items-center justify-center">
                            <i class="fas fa-chart-line text-3xl text-purple-600 dark:text-purple-400"></i>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Invoices Table -->
            <div class="bg-white dark:bg-gray-800 rounded-xl shadow-lg p-6">
                <div class="flex items-center justify-between mb-6">
                    <h2 class="text-2xl font-bold text-gray-900 dark:text-white">All Invoices</h2>
                    <asp:Button ID="btnCreateNew" runat="server" 
                        Text="Create New Invoice" 
                        OnClick="btnCreateNew_Click"
                        CssClass="px-6 py-2 gradient-bg text-white rounded-lg hover:opacity-90 transition-opacity font-medium">
                    </asp:Button>
                </div>

                <asp:GridView ID="gvInvoices" runat="server" 
                    AutoGenerateColumns="false"
                    CssClass="w-full"
                    OnRowCommand="gvInvoices_RowCommand"
                    GridLines="None">
                    <HeaderStyle CssClass="bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300 font-semibold border-b border-gray-300 dark:border-gray-600"/>
                    <RowStyle CssClass="border-b border-gray-200 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-700/50"/>
                    <Columns>
                        <asp:BoundField DataField="InvoiceNumber" HeaderText="Invoice #" ItemStyle-CssClass="px-4 py-3 font-semibold text-purple-600"/>
                        <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" ItemStyle-CssClass="px-4 py-3"/>
                        <asp:BoundField DataField="InvoiceDate" HeaderText="Date" DataFormatString="{0:MMM dd, yyyy}" ItemStyle-CssClass="px-4 py-3"/>
                        <asp:BoundField DataField="DueDate" HeaderText="Due Date" DataFormatString="{0:MMM dd, yyyy}" ItemStyle-CssClass="px-4 py-3"/>
                        <asp:TemplateField HeaderText="Items" ItemStyle-CssClass="px-4 py-3 text-center">
                            <ItemTemplate>
                                <%# Eval("Items.Count") %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="TotalAmount" HeaderText="Total Amount" DataFormatString="₹ {0:N2}" ItemStyle-CssClass="px-4 py-3 text-right font-bold text-green-600 dark:text-green-400"/>
                        <asp:TemplateField HeaderText="Actions" ItemStyle-CssClass="px-4 py-3 text-center">
                            <ItemTemplate>
                                <div class="flex items-center justify-center gap-2">
                                    <asp:LinkButton ID="btnView" runat="server" 
                                        CommandName="View" 
                                        CommandArgument='<%# Eval("InvoiceNumber") %>'
                                        CssClass="px-3 py-1 bg-blue-500 text-white rounded text-sm hover:bg-blue-600 transition">
                                        <i class="fas fa-eye mr-1"></i> View
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete" runat="server" 
                                        CommandName="Delete" 
                                        CommandArgument='<%# Eval("InvoiceNumber") %>'
                                        CssClass="px-3 py-1 bg-red-500 text-white rounded text-sm hover:bg-red-600 transition"
                                        OnClientClick="return confirm('Are you sure you want to delete this invoice?');">
                                        <i class="fas fa-trash mr-1"></i> Delete
                                    </asp:LinkButton>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <!-- Empty State -->
                <div id="emptyState" runat="server" visible="false" class="text-center py-12">
                    <i class="fas fa-inbox text-6xl text-gray-300 dark:text-gray-600 mb-4"></i>
                    <p class="text-gray-500 dark:text-gray-400 text-lg mb-6">No invoices created yet</p>
                    <asp:Button ID="btnCreateNewEmpty" runat="server" 
                        Text="Create Your First Invoice" 
                        OnClick="btnCreateNew_Click"
                        CssClass="px-6 py-3 gradient-bg text-white rounded-lg hover:opacity-90 transition-opacity font-bold">
                    </asp:Button>
                </div>
            </div>
    </div>
</asp:Content>
