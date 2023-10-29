<%@ Page Title="" Language="C#" MasterPageFile="~/HomLeyout.Master" AutoEventWireup="true" CodeBehind="HomCntac.aspx.cs" Inherits="WebArabaSatım.HomCntac" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            height: 40px;
            color: #fff;
            font-size: 16px;
            left: calc(50% - 50%);
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: 3px solid #fff;
            margin-left: 598px;
            margin-bottom: 20px;
            background-color: transparent;
        }
        .auto-style2 {
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            font-size: 16px;
            line-height: 1.42857143;
            border-radius: 20px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            width: 100%;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            height: 40px;
            color: #fff;
            transition: .3s ease-in-out;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-right: 0;
            margin-bottom: 20px;
            padding: 6px 12px;
            background-color: rgb(255,9,9);
            background-image: none;
            margin-left: 598px;
        }
        .auto-style3 {
            width: 100%;
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            height: 40px;
            color: #fff;
            font-size: 16px;
            left: calc(50% - 50%);
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: 3px solid #fff;
            margin-left:598px;
            margin-bottom: 20px;
            background-color: transparent;
        }
        .auto-style4 {
            margin-bottom: 20px;
            margin-left:598px;
            background-color:transparent;
            
        }
        .lblnam ,.lblmail ,.lblmessg
        {
         margin-left:598px;

        }
    </style>
   
    
</asp:Content>  

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="Class/HomCntact.css" rel="stylesheet" />
      <form id="form1" Cssclass="contact" runat="server">
     <div CssClass="warning">
  
         <asp:Label ID="Label1" runat="server"  CssClass="lblnam"    Text="İsim Giriniz"></asp:Label>
         <br />
         <br />
          <asp:TextBox  ID="TbName" runat="server" Cssclass="auto-style3"  Width="300px" ToolTip="İsminizi Giriniz"></asp:TextBox>
        <br />
          <asp:Label ID="Label2" runat="server"  CssClass="lblmail"    Text="Mail Giriniz"></asp:Label>
        <br />
         <br />
        <asp:TextBox ID="TbMail" runat="server" Cssclass="auto-style1"  Width="300px" ToolTip="Mail inizi Girin"></asp:TextBox>
        <br />
          <asp:Label ID="Label3" runat="server"  CssClass="lblmessg"    Text="Mesajlar Giriniz"></asp:Label>
         <br />
        <br />
          <asp:TextBox ID="Tbmessge" runat="server" Cssclass="auto-style4"  Width="300px" TextMode="MultiLine" OnTextChanged="Tbmessge_TextChanged1" Height="101px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="Btn" runat="server" Cssclass="auto-style2"  Width="300px" Text="Mesaj Gönder" OnClick="Messeg_Click"></asp:Button>

     </div>
    </form>
</asp:Content>
