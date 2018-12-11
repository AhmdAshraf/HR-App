using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollSystem
{
    public partial class frmManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (clsDataLayer.SaveUser(Server.MapPath("PayrollSystem_DB.accdb"),
                txtUserName.Text, txtPassword.Text, ddlSecurityLevel.SelectedValue))
            {
                lblDisplay.Text = "The user was successfully added!";
                grdViewUsers.DataBind();
            } 

            else
            {
                lblDisplay.Text = "The User was not added";
            }
        }
    }
}