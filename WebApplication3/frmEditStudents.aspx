<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmEditStudents.aspx.cs" Inherits="WebApplication3.frmEditStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" DataKeyNames="StudentId">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" InsertVisible="False" ReadOnly="True" />
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" />
        <asp:BoundField DataField="EmailAddr" HeaderText="EmailAddr" SortExpression="EmailAddr" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:StudentsConnectionString %>" DeleteCommand="DELETE FROM Students.Students WHERE (StudentId = @StudentId)" InsertCommand="INSERT INTO Students.Students(FirstName, LastName, BirthDate, EmailAddr, Country) VALUES (@FirstName, @LastName, @BirthDate, @EmailAddr, @Country)" SelectCommand="SELECT StudentId, FirstName, LastName, BirthDate, EmailAddr, Country FROM Students.Students" UpdateCommand="UPDATE Students.Students SET FirstName = @FirstName, LastName = @LastName, BirthDate = @BirthDate, EmailAddr = @EmailAddr, Country = @Country WHERE (StudentId = StudentId)">
    <DeleteParameters>
        <asp:Parameter Name="StudentId" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="FirstName" />
        <asp:Parameter Name="LastName" />
        <asp:Parameter Name="BirthDate" />
        <asp:Parameter Name="EmailAddr" />
        <asp:Parameter Name="Country" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="FirstName" />
        <asp:Parameter Name="LastName" />
        <asp:Parameter Name="BirthDate" />
        <asp:Parameter Name="EmailAddr" />
        <asp:Parameter Name="Country" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

