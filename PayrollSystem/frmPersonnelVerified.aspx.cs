using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollSystem
{
    public partial class frmPersonnelVerified : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtVerifiedInfo.Text = Request["txtFirstName"] +
                "\n" + Request["txtLastName"] +
                "\n" + Request["txtPayRate"] +
                "\n" + Request["txtStartDate"] +
                "\n" + Request["txtEndDate"];

            // save data to payrollsystem_db 
            if (clsDataLayer.SavePersonnel(Server.MapPath("PayrollSystem_DB.accdb"),
            Session["txtFirstName"].ToString(),
            Session["txtLastName"].ToString(),
            Session["txtPayRate"].ToString(),
            Session["txtStartDate"].ToString(),
            Session["txtEndDate"].ToString()))
            {
                txtVerifiedInfo.Text = txtVerifiedInfo.Text +
                "\nThe information was successfully saved!";
            }
            else
            {
                txtVerifiedInfo.Text = txtVerifiedInfo.Text +
                "\nThe information was NOT saved.";
            }
        }
    }
}