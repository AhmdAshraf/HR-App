<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmPersonnelVerified.aspx.cs" Inherits="PayrollSystem.frmPersonnelVerified" %>

<%--Author: Jason Fritsche
Date: 11/6/2018
Multiline text box that displays the new employee information that is submitted from the frmPersonnel.aspx file --%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
        </div>
        <asp:Panel ID="Panel1" runat="server" Height="250px" Width="650px">
            <asp:Label ID="Label1" runat="server" Text="Information to Submit: "></asp:Label>
            &nbsp;<asp:TextBox ID="txtVerifiedInfo" runat="server" Height="80px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btnViewPersonnel" runat="server" PostBackUrl="~/frmViewPersonnel.aspx" Text="View Personel" />
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
