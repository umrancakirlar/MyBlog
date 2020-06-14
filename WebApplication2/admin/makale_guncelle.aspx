<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makale_guncelle.aspx.cs" Inherits="WebApplication2.admin.makale_guncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 264px;
        }
        .auto-style3 {
            background-color: aliceblue;
            border: 1px dotted midnightblue;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Başlık:</td>
            <td>
                <asp:TextBox ID="txt_makaleBaslik" runat="server" CssClass="textboxGorsel" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Özet:</td>
            <td>
                <asp:TextBox ID="txt_makale_ozet" runat="server" CssClass="textboxGorsel" Height="131px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">İçerik:</td>
            <td>
                <asp:TextBox ID="txt_makaleIcerik" runat="server" CssClass="textboxGorsel" Height="301px" TextMode="MultiLine" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resim:</td>
            <td>
                <asp:FileUpload ID="fu_resim" runat="server" CssClass="auto-style3" Height="37px" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td>
                <asp:Button ID="btn_guncelle" runat="server" CssClass="butonGorsel" Height="39px" OnClick="btn_guncelle_Click" Text="Güncelle" Width="132px" />
            </td>
        </tr>
    </table>
</asp:Content>
