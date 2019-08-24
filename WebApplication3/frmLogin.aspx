<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="WebApplication3.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #008080;
        }
        .auto-style2 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>

                <br />
                <strong>

            <asp:Label ID="lblLogin" runat="server" Text="Login" CssClass="auto-style1"></asp:Label>
                </strong>
                <br /><br/>
            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

            <br />
                <br />

            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            &nbsp;
            <asp:TextBox ID="txtPassword" type="password" runat="server"></asp:TextBox>
                <br/><span class="auto-style2">
                <br />
                <asp:Label ID="lblVoid" runat="server" Text="Username or password incorrect!" Visible="False"></asp:Label>                
                <br/>
                <br />
        <asp:Button ID="btnOk" runat="server" Text="Ok" OnClick="btnOk_Click" Width="77px"></asp:Button>
            </center>
        </div>
    </form>
</body>
</html>
