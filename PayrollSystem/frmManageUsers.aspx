<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmManageUsers.aspx.cs" Inherits="PayrollSystem.frmManageUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
            text-decoration: underline;
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <p>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/CIS407A_iLab_ACITLogo.jpg" PostBackUrl="~/frmMain.aspx" />
        </p>
        <p class="auto-style2">
            <strong>Manage Users</strong></p>
        <p class="auto-style1">
            User Name:&nbsp;
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        </p>
        <p class="auto-style1">
            Password:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        </p>
        <p>
            Security Level:&nbsp;&nbsp;
            <asp:DropDownList ID="ddlSecurityLevel" runat="server">
                <asp:ListItem>A</asp:ListItem>
                <asp:ListItem>U</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Button ID="btnAddUser" runat="server" OnClick="Button1_Click" Text="Add User" BorderColor="#000066" BorderStyle="Inset" style="background-color: #66FFFF" />
        </p>
        <p>
            <asp:Label ID="lblDisplay" runat="server"></asp:Label>
        </p>
        <asp:GridView ID="grdViewUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1" style="margin-right: 0px">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
                <asp:BoundField DataField="SecurityLevel" HeaderText="SecurityLevel" SortExpression="SecurityLevel" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [tblUserLogin]"></asp:SqlDataSource>
    </form>
</body>
</html>
