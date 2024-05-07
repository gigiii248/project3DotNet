<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>signup</title>

    <link rel="stylesheet" href="help/css/signup.css">
</head>
    
<body>
   <form id="form1" runat="server">
    <aps:form>
         <br>
      <h1>create a new account</h1> <br>

     <div class="first">
             <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter first name" required ></asp:TextBox>
     </div>

     <div class="sec">
             <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter second name" required ></asp:TextBox>
     </div>
    
     <div class="email">
             <asp:TextBox ID="TextBox3" runat="server" placeholder="*******@gmail.com" required ></asp:TextBox>
     </div>

     <div class="pass">
             <asp:TextBox ID="TextBox4" runat="server" placeholder="Password" required ></asp:TextBox>
     </div>
    
     <div class="date">
             <input type="date"value="dd/mm/yyy"required>
     </div>

     <div class="mf">
             <input type="radio" value="Male" id="Male"name="gender"required>
             <label for="Male">Male</label>
             <input type="radio" value="Female" id="Female"name="gender"required>
             <label for="Female">Female</label>
     </div>

     <div class="signup">
             <asp:Button ID="Button1" runat="server" Text="Sign up"></asp:Button>
     </div>

     <div class="link">
             <label>you have an account...?</label>
             <a href="gigi2.html">Log In</a>
     </div>

    </aps:form> 
   </form>
</body>
</html>
