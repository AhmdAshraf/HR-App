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
                <asp:ImageButton ID="ImageButton1" runat="server" Height="90px" ImageUrl="~/images/laptop1.png" PostBackUrl="~/frmSalaryCalculator.aspx" />
                &nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmSalaryCalculator.aspx">Annual Salary Calculator</asp:LinkButton>
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" Height="160px" ImageUrl="~/images/businessdude.png" PostBackUrl="~/frmPersonnel.aspx" />
                &nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/frmPersonnel.aspx">Add New Employee</asp:LinkButton>
                <br />
                <asp:ImageButton ID="ImageButton3" runat="server" Height="160px" ImageUrl="~/images/dude_in_chair.png" PostBackUrl="~/frmUserActivity.aspx" />
                &nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/frmUserActivity.aspx">View User Activity</asp:LinkButton>
                <br />
                <br />
                <asp:ImageButton ID="ImageButton4" runat="server" Height="185px" ImageUrl="~/images/runningBusinessGuy.png" Width="148px" />
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/frmViewPersonnel.aspx">View Personnel</asp:LinkButton>
                <br />
                <asp:ImageButton ID="ImageButton5" runat="server" Height="185px" ImageUrl="~/images/search.png.jpg" PostBackUrl="~/frmSearchPersonnel.aspx" Width="148px" />
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/frmSearchPersonnel.aspx">Search Personnel</asp:LinkButton>
                <br />
                <br />
                <br />
                <br />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
