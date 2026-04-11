<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="TailwindConfiguration.SignIn" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Sign In</title>

    <link href="Assets/tailwind/output.css" rel="stylesheet" />
</head>
<body class="bg-gray-100 min-h-screen flex items-center justify-center">

    <form id="form1" runat="server" class="w-full max-w-md">
        
        <div class="bg-white shadow-lg rounded-2xl p-8">
            
            <!-- Title -->
            <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">
                Sign in to your account
            </h2>

            <!-- Email -->
            <div class="mb-4">
                <label class="block text-gray-600 text-sm mb-2">Email</label>
                <asp:TextBox ID="txtEmail" runat="server"
                    CssClass="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400"
                    placeholder="Enter your email" />
            </div>

            <!-- Password -->
            <div class="mb-4">
                <label class="block text-gray-600 text-sm mb-2">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"
                    CssClass="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400"
                    placeholder="Enter your password" />
            </div>

            <!-- Remember + Forgot -->
            <div class="flex items-center justify-between mb-6">
                <label class="flex items-center text-sm text-gray-600">
                    <asp:CheckBox ID="chkRemember" runat="server" CssClass="mr-2" />
                    Remember me
                </label>

                <a href="#" class="text-sm text-blue-500 hover:underline">
                    Forgot password?
                </a>
            </div>

            <!-- Button -->
            <asp:Button ID="btnSignIn" runat="server" Text="Sign In"
                CssClass="w-full bg-blue-500 text-white py-2 rounded-lg hover:bg-blue-600 transition duration-200"
                OnClick="btnSignIn_Click"/>

            <!-- Divider -->
            <div class="text-center text-gray-500 text-sm mt-6">
                Don't have an account?
                <a href="#" class="text-blue-500 hover:underline">Sign up</a>
            </div>

        </div>

    </form>

</body>
</html>
