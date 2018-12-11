<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMain.aspx.cs" Inherits="PayrollSystem.frmMain" %>



<%--Author: Jason Fritsche
Date: 11/6/2018
Annual Salary Calculator Image and link. Image and link both link to the Annual Salary Calculator page --%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/CIS407A_iLab_ACITLogo.jpg" />
        <asp:Panel ID="Panel1" runat="server" Height="350px" Width="500px">
            <div class="auto-style1">
                &nbsp;&nbsp;
                <asp:ImageButton ID="imgbtnCalculator" runat="server" Height="90px" ImageUrl="~/images/laptop1.png" PostBackUrl="~/frmSalaryCalculator.aspx" />
                &nbsp;
                <asp:LinkButton ID="linkbtnCalculator" runat="server" PostBackUrl="~/frmSalaryCalculator.aspx">Annual Salary Calculator</asp:LinkButton>
                <br />
                <asp:ImageButton ID="imgbtnNewEmployee" runat="server" Height="160px" ImageUrl="~/images/businessdude.png" PostBackUrl="~/frmPersonnel.aspx" />
                &nbsp;
                <asp:LinkButton ID="linkbtnNewEmployee" runat="server" PostBackUrl="~/frmPersonnel.aspx">Add New Employee</asp:LinkButton>
                <br />
                <asp:ImageButton ID="imgbtnViewUserActivity" runat="server" Height="160px" ImageUrl="~/images/dude_in_chair.png" PostBackUrl="~/frmUserActivity.aspx" />
                &nbsp;
                <asp:LinkButton ID="linkbtnViewUserActivity" runat="server" PostBackUrl="~/frmUserActivity.aspx">View User Activity</asp:LinkButton>
                <br />
                <br />
                <asp:ImageButton ID="imgbtnViewPersonnel" runat="server" Height="185px" ImageUrl="~/images/runningBusinessGuy.png" Width="148px" />
                <asp:LinkButton ID="linkbtnViewPersonnel" runat="server" PostBackUrl="~/frmViewPersonnel.aspx">View Personnel</asp:LinkButton>
                <br />
                <asp:ImageButton ID="imgbtnSearch" runat="server" Height="185px" ImageUrl="~/images/search.png.jpg" PostBackUrl="~/frmSearchPersonnel.aspx" Width="148px" />
                <asp:LinkButton ID="linkbtnSearch" runat="server" PostBackUrl="~/frmSearchPersonnel.aspx" >Search Personnel</asp:LinkButton>
                <br />
                <asp:ImageButton ID="imgbtnEditEmployees" runat="server" Height="185px" ImageUrl="~/images/thinkingwoman.png.png" PostBackUrl="~/frmEditPersonnel.aspx" Width="148px" />
                <asp:LinkButton ID="linkbtnEditEmployees" runat="server" PostBackUrl="~/frmEditPersonnel.aspx" >Edit Employees</asp:LinkButton>
                <br />
                <asp:ImageButton ID="imgbtnManageUsers" runat="server" Height="251px" ImageUrl="~/images/businessguy.png" PostBackUrl="~/frmManageUsers.aspx" Width="148px" />
                <asp:LinkButton ID="linkbtnManageUsers" runat="server" PostBackUrl="~/frmManageUsers.aspx" >Manage Users</asp:LinkButton>
                <br />
                <br />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
