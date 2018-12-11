using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollSystem
{
    public partial class frmSalaryCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculateSalary_Click(object sender, EventArgs e)
        {
            //variable declarations
            double annualHours = 0.0;
            double payRate = 0.0;
            double annualSalary = 0.0;

            annualHours = Double.Parse(txtAnnualHours.Text);
            payRate = Double.Parse(txtPayRate.Text);
            annualSalary = annualHours * payRate;

            lblAnnualSalary.Text = annualSalary.ToString("C");
        }

        protected void txtAnnualHours_TextChanged(object sender, EventArgs e)
        {
            Console.Write("Text Changed");
        }

        protected void txtPayRate_TextChanged(object sender, EventArgs e)
        {
            Console.Write("Text Changed");
        }
    }
}
/*
In this method, add code that will get the text in the txtAnnualHours text box, 
convert it to a Double, and store it in a double variable.

Add code that will get the text from the txtPayRate text box,
convert it to a Double, 
and store it in another variable.

Create a third variable of type Double
and set its value to the annual hours variable value
multiplied by the rate double variable value.
Take this resulting value and convert it to a string (text),
and update the lblAnnualSalary Text property with this new string.
*/