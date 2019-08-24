<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmInsertStudent.aspx.cs" Inherits="WebApplication3.frmInsertUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table style="width: 100%;">
        <tr>
            <td>Name</td>
            <td>            
                <asp:TextBox ID="FirstName" required="true" runat="server"></asp:TextBox>
            </td>            
        </tr>

        <tr>
            <td>Last Name</td>
            <td>            
                <asp:TextBox ID="LastName" required="true" runat="server"></asp:TextBox>
            </td>            
        </tr>
        
        <tr>
            <td>Birth Date</td>
            <td>            
                <asp:TextBox type="date" required="true" ID="BirthDate" runat="server"></asp:TextBox>
            </td>            
        </tr>

                <tr>
            <td>e-Mail Address</td>
            <td>            
                <asp:TextBox type="email" required="true" ID="EmailAddr" runat="server"></asp:TextBox>
            </td>            
        </tr>

                <tr>
            <td>Country</td>
            <td>            
                <asp:TextBox ID="Coutry" required="true" runat="server"></asp:TextBox>
            </td>            
        </tr>       

    </table
    <br /><br />
    <asp:Label ID="lblSuccess" runat="server" Text="User created successfully!" CssClass="auto-style1" Visible="False"></asp:Label>
    <br /><br />
    <asp:Button ID="bntInsert" runat="server" Text="Insert" OnClick="bntInsert_Click" />
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <center>
        Students Management System
      </center>
    <style type="text/css">
    .auto-style1 {
        color: #008000;
        font-weight: bold;
    }
</style>
</asp:Content>

