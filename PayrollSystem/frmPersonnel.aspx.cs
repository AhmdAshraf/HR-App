using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollSystem
{
    public partial class frmPersonnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            // validation of form data
            // if all conditions in the frmPersonnelVerified function are met, execute this code block
            if(frmPersonnelVerified() == true)
            {
                Session["txtFirstName"] = txtFirstName.Text;
                Session["txtLastName"] = txtLastName.Text;
                Session["txtPayRate"] = txtPayRate.Text;
                Session["txtStartDate"] = txtStartDate.Text;
                Session["txtEndDate"] = txtEndDate.Text;
                Server.Transfer("frmPersonnelVerified.aspx");
            }
        }


        //this function performs validation on the five pieces of data. 

        protected bool frmPersonnelVerified()
        {
            //if any strings are not valid, the validator will return false resulting in 
            // the data not being saved to the state.
            bool validator = true;

            // string variables, they are easier to read 
            string payRate = Request["txtPayRate"].ToString();
            string firstName = Request["txtFirstName"].ToString();
            string lastName = Request["txtLastName"].ToString();
            string strStartDate = Request["txtStartDate"].ToString();
            string strEndDate = Request["txtEndDate"].ToString();

            // regular expression that will be used to see if date format is in ##/##/## format
            Regex dateRegEx = new Regex(@"\d{2}/\d{2}/\d{2}");

            // date time objects for start and end dates
            DateTime startDate = new DateTime();
            DateTime endDate = new DateTime();


            //sets the date time object for start and end date if they both match the regex date format
            if (dateRegEx.IsMatch(strStartDate) && dateRegEx.IsMatch(strEndDate))
            {
                startDate = DateTime.Parse(Request["txtStartDate"]);
                endDate = DateTime.Parse(Request["txtEndDate"]);
            }

            //first name field validation
            if (firstName.Trim() == "")
            {
                validator = false;
                txtFirstName.BackColor = System.Drawing.Color.Yellow;
                lblError.BackColor = System.Drawing.Color.Red;
                lblError.Text = "Please enter a valid first name ";
            }

            //last name field validation
            else if (lastName.Trim() == "")
            {
                validator = false;
                txtLastName.BackColor = System.Drawing.Color.Yellow;
                lblError.BackColor = System.Drawing.Color.Red;
                lblError.Text = "Please enter a valid last name ";
            }


            //payrate field validation. Checks if empty or if contains letters
            else if (payRate.Trim() == "" || payRate.All(Char.IsLetter))
            {

                validator = false;
                txtPayRate.BackColor = System.Drawing.Color.Yellow;
                lblError.BackColor = System.Drawing.Color.Red;
                lblError.Text = "Please enter a valid Pay Rate ";
            }

            //start date farmat validation. Compares entry to regex date format
            else if (!dateRegEx.IsMatch(strStartDate))
            {
                validator = false;
                txtStartDate.BackColor = System.Drawing.Color.Yellow;
                lblError.BackColor = System.Drawing.Color.Red;
                lblError.Text = "Please use the following date format: mm/dd/yy ";
            }

            //end date farmat validation. Compares entry to regex date format
            else if (!dateRegEx.IsMatch(strEndDate))
            {
                validator = false;
                txtEndDate.BackColor = System.Drawing.Color.Yellow;
                lblError.BackColor = System.Drawing.Color.Red;
                lblError.Text = "Please use the following date format: mm/dd/yy ";
            }

            //date validation. Checks that end date is later than start date
            else if (DateTime.Compare(startDate, endDate) > 0)
            {
                validator = false;
                txtStartDate.BackColor = System.Drawing.Color.Yellow;
                txtEndDate.BackColor = System.Drawing.Color.Yellow;
                lblError.BackColor = System.Drawing.Color.Red;
                lblError.Text = "The end date must be a later date than the start date.";
              
            }

            return validator;

        }

    }
}