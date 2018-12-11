<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmUserActivity.aspx.cs" Inherits="PayrollSystem.frmUserActivity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
        <p>
            &nbsp;</p>
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="Label1" runat="server" Text="User Activity"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="grdUserActivity" runat="server">
            </asp:GridView>
        </asp:Panel>
    </form>
</body>
</html>
