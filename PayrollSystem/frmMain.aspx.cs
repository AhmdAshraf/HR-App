using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayrollSystem;

namespace PayrollSystem
{

    public partial class frmMain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Add personnel data to the database
            clsDataLayer.SaveUserActivity(Server.MapPath("PayrollSystem_DB.accdb"), "frmPersonnel");

            // If security level for user is A, make all options visibule
            if (Session["SecurityLevel"] == "A")
            {
                linkbtnNewEmployee.Visible = true;
                linkbtnViewUserActivity.Visible = true;
                linkbtnManageUsers.Visible = true;
                linkbtnEditEmployees.Visible = true;
                imgbtnNewEmployee.Visible = true;
                imgbtnViewUserActivity.Visible = true;
                imgbtnEditEmployees.Visible = true;
                imgbtnManageUsers.Visible = true;
                
            }

            // if security level is anything other than A, hide these options
            else
            {
                linkbtnNewEmployee.Visible = false;
                linkbtnViewUserActivity.Visible = false;
                linkbtnEditEmployees.Visible = false;
                linkbtnManageUsers.Visible = false;
                imgbtnNewEmployee.Visible = false;
                imgbtnViewUserActivity.Visible = false;
                imgbtnEditEmployees.Visible = false;
                imgbtnManageUsers.Visible = false;
            }
        }

    }
}
