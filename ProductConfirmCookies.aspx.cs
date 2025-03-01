using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies5834255
{
    public partial class ProductConfirmCookies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Retrieve the cookies
            ddlCategory.SelectedValue = Request.Cookies["ddlCategory"].Value;
            ddlSupplier.SelectedValue = Request.Cookies["ddlSupplier"].Value;
            lblProduct.Text = Request.Cookies["strProduct"].Value;
            txtDescription.Text = Request.Cookies["strDescription"].Value;
            lblImage.Text = Request.Cookies["strImage"].Value;
            decimal decPrice = Convert.ToDecimal(Request.Cookies["decPrice"].Value);
            lblPrice.Text = decPrice.ToString("c");
            lblNumberInStock.Text = Request.Cookies["bytNumberInStock"].Value;
            lblNumberOnOrder.Text = Request.Cookies["bytNumberOnOrder"].Value;
            lblReorderLevel.Text = Request.Cookies["bytReorderLevel"].Value;
            //Compute and display the value in stock and the value on order
            byte bytNumberInStock = Convert.ToByte(Request.Cookies["bytNumberInStock"].Value);
            byte bytNumberOnOrder = Convert.ToByte(Request.Cookies["bytNumberOnOrder"].Value);
            decimal decValueInStock = decPrice * bytNumberInStock;
            decimal decValueOnOrder = decPrice * bytNumberOnOrder;
            lblValueInStock.Text = " (Value: " + decValueInStock.ToString("c") + ")";
            lblValueOnOrder.Text = " (Value: " + decValueInStock.ToString("c") + ")";
            if (!IsPostBack)
            {
                ddlCategory.Enabled = false;
                ddlSupplier.Enabled = false;
            }
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductEnterViewState.aspx");
        }
    }
}