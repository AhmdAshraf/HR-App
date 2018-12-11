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
            <asp:Panel ID="Panel1" runat="server" Height="250px" Width="625px">
                <asp:Label ID="Label1" runat="server" Text="First Name:" Width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Enter a valid first name" ForeColor="Maroon"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Last Name:      " width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Enter a valid last name" ForeColor="Maroon"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Pay Rate: " width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtPayRate" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BackColor="#003366" ControlToValidate="txtPayRate" ErrorMessage="Please enter a valid pay rate" ForeColor="#FF9900"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Start Date: " width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtStartDate" ErrorMessage="Please use the MM/DD/YY format" ForeColor="Maroon" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.]\d\d$"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label5" runat="server" Text="End Date: " width="80px"></asp:Label>
                &nbsp;<asp:TextBox ID="txtEndDate" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEndDate" ErrorMessage="Please use the MM/DD/YY format" ForeColor="Maroon" ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.]\d\d$"></asp:RegularExpressionValidator>
                <br />
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                &nbsp; &nbsp;
                <br />
                <br />
                <asp:Label ID="lblError" runat="server"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
