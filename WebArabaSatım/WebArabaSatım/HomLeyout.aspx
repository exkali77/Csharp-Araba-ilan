<%@ Page Title="" Language="C#" MasterPageFile="~/HomLeyout.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="HomLeyout.aspx.cs" Inherits="WebArabaSatım.HomLeyout1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
      
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 33px;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form ID="form1" cssClass="Warning" runat="server">

        <asp:DataList ID="DataList" CssClass="datalist" runat="server" OnSelectedIndexChanged="DataList_SelectedIndexChanged">
                   <ItemTemplate>
             
                <table class="nav-justified">
                   
                    <link href="Class/Homstyle.css" rel="stylesheet" /> 
                    <tr>
                        <td>
                      
                           
                            <asp:Label ID="Label14" runat="server" ForeColor="White" Text="Araç Tipi"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label15" runat="server" ForeColor="White" Text="Araç Modeli"></asp:Label>


                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:TextBox ID="Label1" CssClass="Brname" runat="server" ForeColor="Black" ReadOnly="True"  Text='<%# Eval("BrandName") %>'/>

                            &nbsp;
                              <asp:TextBox ID="Label3" runat="server"  CssClass="Model" ForeColor="Black" ReadOnly="True"  Text='<%# Eval("CarModel") %>'/>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="height: 20px"></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server"  CssClass="Photo" Height="323px" ImageUrl='<%# Eval("CarPhoto") %>' Width="1239px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Araç Yakıt Tipi"></asp:Label>
                            <br />
                            <asp:TextBox ID="Label6" runat="server"  CssClass="Fuel" ForeColor="Black" ReadOnly="True"  Text='<%# Eval("CarFuelType") %>' Height="18px"/>
                            <br />
                            <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Açıklama"></asp:Label>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <asp:TextBox ID="Label7" runat="server"  CssClass="Dexcrip" BackColor="Transparent"  ForeColor="White" Text='<%# Eval("CarDexcription") %>' Height="202px" ReadOnly="True" TextMode="MultiLine" Width="1201px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 20px">
                            <asp:Label ID="Label11" runat="server" ForeColor="White"  Text="Satıcı İsmi"></asp:Label>
                        </td>
                       
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="Label4" runat="server"  CssClass="Seller" ForeColor="Black" ReadOnly="True"  Text='<%# Eval("CarSeller") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">


                            <asp:Label ID="Label12" runat="server" ForeColor="White"  Text="Araç Fiyatı"></asp:Label>


                        </td>
                    </tr>
                     <tr>
                        <td>


                            <asp:TextBox ID="Label5" runat="server"  CssClass="Price" ForeColor="Black" ReadOnly="True"  Text='<%# Eval("CarPrice") %>' />
                         </td>
                    </tr>
                     <tr>
                        <td>


                            <asp:Label ID="Label13" runat="server" ForeColor="White" Text="İletişim"></asp:Label>


                        </td>
                    </tr>
                     <tr>
                        <td>


                            <asp:TextBox ID="Label8" runat="server"  CssClass="Contact" ForeColor="Black" ReadOnly="True"  OnTextChanged="Label8_TextChanged" Text='<%# Eval("CarContact") %>' />


                        </td>
                    </tr> 
                    <tr>
                        <td class="auto-style2">


                            &nbsp;</td>
                    </tr>
                     <tr>
                        <td>


                            &nbsp;</td>
                    </tr>
                     <tr>
                        <td>


                            &nbsp;</td>
                    </tr>
 
            </ItemTemplate>
        </asp:DataList> 

      
    </form>
   
</asp:Content>


