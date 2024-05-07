<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication4.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>login</title>

    <link rel="stylesheet" href="help/css/login.css">

</head>
<body>
    <form id="form1" runat="server">
      <aps:form>
              <br>
       <h1>Your account</h1> <br>

       <div class="email">
              <asp:TextBox ID="TextBox3" runat="server" placeholder="*******@gmail.com" required ></asp:TextBox>
       </div>

       <div class="pass">
              <asp:TextBox ID="TextBox4" runat="server" placeholder="Password" required ></asp:TextBox>
       </div>

       <div class="login">
              <asp:Button ID="Button1" runat="server" Text="Log In"></asp:Button>
       </div>

       <div class="link">
              <label>you dont have an account...?</label>
              <a href="gigi.html">Sign Up</a>
       </div>
    
    </aps:form> 
   </form>
</body>
</html>
