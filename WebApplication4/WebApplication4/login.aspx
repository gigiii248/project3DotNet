<%@ Page Title="" Language="C#" MasterPageFile="~/Mainlayout.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="WebApplication4.LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="help/css/login.css">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Your account</h1> <br>

    <div class="MainErrormsg alert alert-danger" role="alert">
        <span id="Remove_alert" onclick="RemoveAlert()" >X</span>
        <asp:Label ID="Main_ERROR" runat="server" Text="please Check Your Email and password &#128520"></asp:Label>
    </div>
    <form class="loginFrom">

        <div class="email">
       <asp:TextBox ID="email" runat="server" placeholder="*******@gmail.com"  ></asp:TextBox>
</div>

<div class="pass">
       <asp:TextBox ID="password" runat="server" placeholder="Password"  ></asp:TextBox>
</div>

<div class="login">
       <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click"></asp:Button>
</div>

<div class="link">
       <label>you dont have an account...?</label>
       
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/SignUp.aspx" runat="server">Sign Up</asp:HyperLink>
      <br /> 
</div>

    </form>



    


</asp:Content>
