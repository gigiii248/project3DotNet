<%@ Page Title="" Language="C#" MasterPageFile="~/Mainlayout.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="WebApplication4.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black">
        <AlternatingItemStyle BackColor="PaleGoldenrod" />
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            firstname:
            <asp:Label ID="firstnameLabel" runat="server" Text='<%# Eval("firstname") %>' />
            <br />
            secname:
            <asp:Label ID="secnameLabel" runat="server" Text='<%# Eval("secname") %>' />
            <br />
            role:
            <asp:Label ID="roleLabel" runat="server" Text='<%# Eval("role") %>' />
            <br />
            email:
            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            <br />
            password:
            <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
            <br />
            gender:
            <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
            <br />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1"  runat="server" ConnectionString="Data Source=DESKTOP-VSUOIB8;Initial Catalog=anime;Integrated Security=True;Trust Server Certificate=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
</asp:Content>
