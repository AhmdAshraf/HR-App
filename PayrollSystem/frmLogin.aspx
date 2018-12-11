<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="PayrollSystem.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/CIS407A_iLab_ACITLogo.jpg" />
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/frmMain.aspx" OnAuthenticate="Login1_Authenticate" style="text-align: center" TitleText=" 	Please enter your UserName and Password in order to log in to the system.">
        </asp:Login>
    </form>
</body>
</html>
