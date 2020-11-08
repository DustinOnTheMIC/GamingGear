using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GamingGear.WebForm
{
    public partial class Home : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["connect"].ConnectionString;
        string cookies = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            cookies = Context.Request.Cookies["TENDN"] != null ? Context.Request.Cookies["TENDN"].Value : "";
            
        }

        protected void btnOrderHeadPhone_Click(object sender, EventArgs e)
        {
            Context.Items["MALOAI"] = ((Button)sender).CommandArgument.ToString();
            Server.Transfer("products.aspx");
        }

        protected void btnOrderMonitor_Click(object sender, EventArgs e)
        {
            Context.Items["MALOAI"] = ((Button)sender).CommandArgument.ToString();
            Server.Transfer("products.aspx");
        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            Server.Transfer("products.aspx");
        }

        protected void btnOrderKeyboard_Click(object sender, EventArgs e)
        {
            Context.Items["MALOAI"] = ((Button)sender).CommandArgument.ToString();
            Server.Transfer("products.aspx");
        }

        protected void btnOrderMouse_Click(object sender, EventArgs e)
        {
            Context.Items["MALOAI"] = ((Button)sender).CommandArgument.ToString();
            Server.Transfer("products.aspx");
        }
    }
}