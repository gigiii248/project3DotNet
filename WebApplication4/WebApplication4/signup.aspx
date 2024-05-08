<%@ Page Title="" Language="C#" MasterPageFile="~/Mainlayout.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication4.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="help/css/signup.css">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <form class="SignUpFrom">
              <h1>create a new account</h1> <br>

<div class="first">
       
        <asp:TextBox ID="firstName" runat="server" placeholder="Enter first name"  ></asp:TextBox>
</div>

<div class="sec">
        <asp:TextBox ID="secName" runat="server" placeholder="Enter second name"  ></asp:TextBox>
</div>
    
<div class="email">
        <asp:TextBox ID="email" runat="server" placeholder="*******@gmail.com"  ></asp:TextBox>
</div>

<div class="pass">
        <asp:TextBox ID="password" runat="server" placeholder="Password"  ></asp:TextBox>
</div>
    


<div class="mf">
       
            <asp:RadioButton ID="Male" runat="server" />
            <asp:Label ID="lbl_male" runat="server" Text="Male"></asp:Label>

        <asp:RadioButton ID="Female" runat="server" />
        <asp:Label ID="lbl_female" runat="server" Text="Female"></asp:Label>


   
</div>

<div class="signup">
        <asp:Button ID="Button1" runat="server" type="submit" Text="Sign up" OnClick="Button1Clicked"></asp:Button>
</div>

<div class="link">
        <label>you have an account...?</label>
        
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/LogIn.aspx" runat="server">Log In</asp:HyperLink>
</div>



     </form>





</asp:Content>
