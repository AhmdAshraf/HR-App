using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollSystem
{
    public partial class frmLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            // create instance of dsUser class
            dsUser dsUserLogin;
            // create security level string variable
            string SecurityLevel;
            // verify user login info
            dsUserLogin = clsDataLayer.VerifyUser(Server.MapPath("PayrollSystem_DB.accdb"),
            Login1.UserName, Login1.Password);
            // do not let user login if not authenticated
            if (dsUserLogin.tblUserLogin.Count < 1)
            {
                e.Authenticated = false;
                return;
            }
            // get security level
            SecurityLevel = dsUserLogin.tblUserLogin[0].SecurityLevel.ToString();
            // set security based on case of A or U
            switch (SecurityLevel)
            {
                case "A":
                    // Add your comments here
                    e.Authenticated = true;
                    Session["SecurityLevel"] = "A";
                    break;
                case "U":
                    // Add your comments here
                    e.Authenticated = true;
                    Session["SecurityLevel"] = "U";
                    break;
                default:
                    e.Authenticated = false;
                    break;
            }
        }
    }
}