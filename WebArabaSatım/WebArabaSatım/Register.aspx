<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebArabaSatım.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Kayıt Ol</title>
    <link href="Class/regis.css" rel="stylesheet" />
</head>
<body>
    <div class="register">
    <img src="ımage/indir.png" alt="Alternate Text" class="user"/>
       <h2>Giriş Yapın</h2>
    <form id="form1" runat="server">
       
           <asp:Label ID="lblemail" Text="Email" CssClass="lblemail" runat="server"/>
           <asp:TextBox ID="txtemail" CssClass="txtemail" runat="server" placeholder="Email Giriniz" />
           <asp:Label ID="lblpass" Text="Password" CssClass="lblpass" runat="server"/>
           <asp:TextBox ID="txtpass" CssClass="txtpass" runat="server" placeholder="Şifre Giriniz " />
           <asp:Button ID="btn" Text="Giriş Yap" CssClass="btnsubmit" runat="server" OnClick="Btn_Click" />
           <asp:LinkButton ID="btnforget" Text="Geri" CssClass="btnforget" runat="server" OnClick="btnforget_Click"/>

       
    </form>

    </div>
</body>
</html>
