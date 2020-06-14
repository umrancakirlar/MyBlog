<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="makaleekle.aspx.cs" Inherits="WebApplication2.admin.makaleekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 486px;
        }
        .auto-style5 {
            background-color: aliceblue;
            border: 1px dotted midnightblue;
        }
        .auto-style6 {
            background-color: :aliceblue;
            color: midnightblue;
        }
        .auto-style7 {
            width: 486px;
            height: 416px;
        }
        .auto-style8 {
            height: 416px;
        }
        .auto-style9 {
            width: 371px;
        }
        .auto-style10 {
            width: 199px;
        }
        .auto-style11 {
            width: 100%;
            height: 26px;
        }
        .auto-style12 {
            width: 50px;
            height: 50px;
        }
        .auto-style13 {
            width: 50px;
            height: 55px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <div style="height:25px;background-color:midnightblue;color:white;font-weight:bolder">Makale Ekleme Paneli</div>
    </div>


    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp; &nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Kategori:</td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddl_kategori" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="dropdownlistGorsel" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Başlık:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txt_makale_baslik" runat="server" CssClass="textboxGorsel" Height="40px" OnTextChanged="TextBox3_TextChanged" Width="400px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Özet:</td>
            <td style="text-align: left">
                <asp:TextBox ID="txt_makale_ozet" runat="server" CssClass="textboxGorsel" Height="151px" TextMode="MultiLine" Width="401px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" style="text-align: right">İçerik:</td>
            <td style="text-align: left" class="auto-style8">&nbsp;<asp:TextBox ID="txt_makale_icerik" runat="server" CssClass="textboxGorsel" Height="389px" TextMode="MultiLine" Width="403px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">Resim:</td>
            <td style="text-align: left">
                <asp:FileUpload ID="fu_makale_resim" runat="server" CssClass="textboxGorsel" Height="44px" Width="369px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: right">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" style="text-align: right">&nbsp;</td>
            <td style="text-align: center">
                <asp:Button ID="btn_makale_ekle" runat="server" CssClass="butonGorsel" Text="Ekle" Height="37px" Width="75px" OnClick="btn_makale_ekle_Click" />
            </td>
        </tr>
    </table>
    <div style="height:50px;"></div>
    <div style="height:25px;background-color:midnightblue;color:white;font-weight:bolder">Makale Düzenleme Paneli</div>
   
    <asp:Panel ID="pnl_makale_duzenle" runat="server" BackColor="AliceBlue" ForeColor="Black">
        <asp:DataList ID="dl_makale_getir" runat="server" Width="700px">
            <HeaderTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style9">Makale Adı&nbsp;</td>
                        <td class="auto-style10">Güncelle</td>
                        <td>Sil</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td class="auto-style9">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("makaleBaslik") %>'></asp:Literal>
                        </td>
                        <td class="auto-style10">
                            <a href="makale_guncelle.aspx?makaleID=<%#Eval("makaleID") %>"><img class="auto-style12" src="../resim/ayark.png" /></a>
                        </td>
                        <td>
                          <a href="makaleekle.aspx?makaleID=<%# Eval("makaleID")%>&islem=sil"><img alt="" class="auto-style13" src="../resim/deletek.jpg" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <div style="height:30px;"></div>
    </div>


</asp:Content>
