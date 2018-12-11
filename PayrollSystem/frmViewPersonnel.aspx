<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmViewPersonnel.aspx.cs" Inherits="PayrollSystem.frmViewPersonnel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 147px">
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Personnel Data"></asp:Label>
        </p>
        <asp:GridView ID="grdViewPersonnel" runat="server">
        </asp:GridView>
    </form>
</body>
</html>
