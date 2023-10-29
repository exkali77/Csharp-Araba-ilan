<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLeyout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="WebArabaSatım.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 193px;
            height: 20px;
        }
        .auto-style2 {
            width: 292px;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                 <table class="nav-justified" style="width: 1210px">
            <tr>
                <td class="modal-lg" style="height: 20px; width: 193px;">&nbsp;</td>
                <td style="height: 20px; width: 292px;"></td>
            </tr>
            <tr>
                <td class="modal-lg" style="height: 20px; width: 193px;">Araba Modelini :&nbsp;&nbsp;</td>
                <td style="height: 20px; width: 292px;">
                    <asp:TextBox ID="TbModel" runat="server" CssClass="col-xs-offset-0" ReadOnly="True" Text='<%# Eval("CarModel") %>' Width="224px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 193px">Arabanın Fotoraf Linki&nbsp;:&nbsp;&nbsp;</td>
                <td style="width: 292px">
                    <asp:TextBox ID="TbPhoto" runat="server" CssClass="col-xs-offset-0" ReadOnly="True" Text='<%# Eval("CarPhoto") %>' Width="223px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="height: 20px; width: 193px;">Araba Yakıt Tipi&nbsp;:&nbsp;&nbsp;&nbsp;</td>
                <td style="height: 20px; width: 292px;">
                    <asp:TextBox ID="TbFuel" runat="server" CssClass="col-xs-offset-0" ReadOnly="True" Text='<%# Eval("CarFuelType") %>' Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="height: 20px; width: 193px;">Açıklama&nbsp;:&nbsp;&nbsp;</td>
                <td style="height: 20px; width: 292px;">
                    <asp:TextBox ID="TbDescription" runat="server" Height="181px" ReadOnly="True" Text='<%# Eval("CarDexcription") %>' TextMode="MultiLine" Width="388px" CssClass="col-xs-offset-0"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="height: 31px; width: 193px;">Araç Satıcısı&nbsp;&nbsp;:</td>
                <td style="height: 31px; width: 292px;">
                    <asp:TextBox ID="TbSeller" runat="server" CssClass="col-xs-offset-0" ReadOnly="True" Text='<%# Eval("CarSeller") %>' Width="221px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 193px;">İletişim Numarası&nbsp;:&nbsp;</td>
                <td style="width: 292px;">
                    <br />
                    <asp:TextBox ID="TbContact" runat="server" CssClass="col-xs-offset-0" Height="25px" ReadOnly="True" Text='<%# Eval("CarContact") %>' Width="217px" style="margin-top: 0"></asp:TextBox>
                    <br />
                </td>
            </tr>
                     <tr>
                         <td class="auto-style1">Araç Fiyatı :</td>
                         <td class="auto-style2">
                             <asp:TextBox ID="TbPrice" runat="server" CssClass="col-xs-offset-0" Height="25px" ReadOnly="True" Text='<%# Eval("CarPrice") %>' Width="215px"></asp:TextBox>
                         </td>
                     </tr>
                     <tr>
                         <td class="modal-lg" style="height: 20px; border-bottom-style: solid; width: 193px;"><a href='ApproCar.aspx?id=<%# Eval("CarID") %>'>
                             <div>
                                 Onayla</div>
                             </a></td>
                         <td style="height: 20px; width: 292px;">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="modal-lg" style="height: 20px; width: 193px;">&nbsp;</td>
                         <td style="height: 20px; width: 292px;">&nbsp;</td>
                     </tr>
                     <tr>
                         <td class="modal-lg" style="height: 20px; width: 193px;">&nbsp;</td>
                         <td style="height: 20px; width: 292px;">&nbsp;</td>
                     </tr>
            </table>


            </ItemTemplate>
        </asp:DataList>
    </form>
</asp:Content>
