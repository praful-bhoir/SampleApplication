using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TailwindConfiguration
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            if (email == "admin" && password == "123")
            {
                FormsAuthentication.SetAuthCookie(email, chkRemember.Checked);

                if (Request.QueryString["ReturnUrl"] != null)
                {
                    Response.Redirect(Request.QueryString["ReturnUrl"]);
                }
                else
                {
                    Response.Redirect("~/Home.aspx");
                }
            }
            else
            {
                // Show error
            }
        }
    }
}