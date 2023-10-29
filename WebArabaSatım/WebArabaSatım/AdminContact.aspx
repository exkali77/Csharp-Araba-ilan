<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLeyout.Master" AutoEventWireup="true" CodeBehind="AdminContact.aspx.cs" Inherits="WebArabaSatım.AdminContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
     
        <table class="nav-justified">
            <tr>
                <td style="width: 1408px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    MESAJLAR</td>
            </tr>
            <tr>
                <td style="width: 1408px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1408px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1408px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1408px">
                        <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                            <table class="nav-justified" style="height: 113px">
                                <tr>
                                    <td style="height: 20px">GÖNDEREN KİŞİ:<asp:Label ID="Label1" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>GÖNDEREN KİŞİNİN MAİL ADRESİ:<asp:Label ID="Label2" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                        <br />
                                        MESAJ:</td>
                                </tr>
                                <tr>
                                    <td>:<asp:TextBox ID="TextBox1" runat="server" Height="163px" ReadOnly="True" Text='<%# Eval("ContactMessage") %>' TextMode="MultiLine" Width="526px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                      <a href="MassegDelet.aspx?id=<%# Eval("ContactID") %>"><div>Sil</div></a>
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
            </tr>
            <tr>
                <td style="width: 1408px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1408px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1408px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 1408px">&nbsp;</td>
            </tr>
        </table>
    </form>
</asp:Content>
