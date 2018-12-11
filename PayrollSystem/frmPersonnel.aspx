<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPersonnel.aspx.cs" Inherits="PayrollSystem.frmPersonnel" %>
<%#Server.HtmlEncode(Eval("post_content").ToString()).Replace("\r\n", "<br />\r\n") %><%-- Author: Jason Fritsche
Date: 11/6/2018
this form takes the new employee input, name, pay, start and end date--%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
        </p>
        <div style="height: 41px; width: 455px">
            <asp:Panel ID="Panel1" runat="server" Height="250px" Width="396px">
                <asp:Label ID="Label1" runat="server" Text="First Name:" Width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Last Name:      " width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Pay Rate: " width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtPayRate" runat="server"></asp:TextBox>
                &nbsp;<br />
                <asp:Label ID="Label4" runat="server" Text="Start Date: " width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="End Date: " width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                &nbsp;
                <asp:Button ID="btnCancel" runat="server" PostBackUrl="~/frmMain.aspx" Text="Cancel" />
                &nbsp;
                <asp:Button ID="btnViewPersonnel" runat="server" PostBackUrl="~/frmViewPersonnel.aspx" Text="View Personnel" />
                <br />
                <br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
