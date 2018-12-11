<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSalaryCalculator.aspx.cs" Inherits="PayrollSystem.frmSalaryCalculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Annual Hours:" width="100px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAnnualHours" runat="server" OnTextChanged="txtAnnualHours_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Pay Rate:" Width="100px"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPayRate" runat="server" OnTextChanged="txtPayRate_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnCalculateSalary" runat="server" OnClick="btnCalculateSalary_Click" Text="Calculate Salary" />
            <br />
            <br />
            <asp:Label ID="lblAnnualSalary" runat="server" Text="$"></asp:Label>
        </div>
    </form>
</body>
</html>
