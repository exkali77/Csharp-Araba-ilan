<%@ Page Title="" Language="C#" MasterPageFile="~/HomLeyout.Master" AutoEventWireup="true" CodeBehind="AddCar.aspx.cs" Inherits="WebArabaSatım.AddCar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Class/AddCar.css" rel="stylesheet" />
      <form id="form1" runat="server">
        <table class="nav-justified">
            <tr>
                <td class="modal-lg" style="height: 20px; width: 278px">Araba Markasını Seçiniz&nbsp;:</td>
                <td style="height: 20px; width: 567px;"><asp:DropDownList ID="Combobox" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 0" Width="221px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px; height: 20px">Araba Modelini Yazınız&nbsp;&nbsp;:</td>
                <td style="height: 20px; width: 567px;"><asp:TextBox ID="TbModel" runat="server" style="margin-left: 0" Width="224px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px">Arabanın Fotoraf Linki&nbsp;:&nbsp;&nbsp;</td>
                <td style="width: 567px"><asp:TextBox ID="TbPhoto" runat="server" style="margin-left: 0" Width="223px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="height: 20px; width: 278px">Araba Yakıt Tipi&nbsp; :</td>
                <td style="height: 20px; width: 567px;"><asp:TextBox ID="TbFuel" runat="server" style="margin-left: 0" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px; height: 20px">Açıklama Giriniz&nbsp;&nbsp;&nbsp;&nbsp;:</td>
                <td style="height: 20px; width: 567px;"><asp:TextBox ID="TbDescription" runat="server" style="margin-left: 0" Width="437px" Height="181px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px; height: 27px">Araç Satıcısı&nbsp; :</td>
                <td style="height: 27px; width: 567px;"><asp:TextBox ID="TbSeller" runat="server" style="margin-left: 0" Width="201px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px; height: 20px;">İletişim Numarası&nbsp;&nbsp;:<br />
                </td>
                <td style="height: 20px; width: 567px;"><asp:TextBox ID="TbContact" runat="server" style="margin-left: 0" Width="199px" Height="25px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px; height: 20px;">Araç Fiyatı:</td>
                <td style="height: 20px; width: 567px;"><asp:TextBox ID="TbPrice" runat="server" style="margin-left: 0" Width="196px" Height="25px"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px; height: 20px;">
                    <asp:Button ID="btnSend" runat="server" CssClass="btn" Height="53px" style="margin-left: 0" Text="İlanı gönder" Width="267px" OnClick="btnSend_Click" />
                </td>
                <td style="height: 20px; width: 567px;">&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px; height: 20px;">&nbsp;</td>
                <td style="height: 20px; width: 567px;">&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 278px; height: 20px;">&nbsp;</td>
                <td style="height: 20px; width: 567px;">&nbsp;</td>
            </tr>
            </table>
    </form>
</asp:Content>
