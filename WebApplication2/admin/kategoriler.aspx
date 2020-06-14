<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="kategoriler.aspx.cs" Inherits="WebApplication2.admin.kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 288px;
        }
        .auto-style3 {
            background-color: aliceblue;
            border: 1px dotted midnightblue;
        }
        .auto-style4 {
            width: 363px;
        }
        .auto-style5 {
            width: 200px;
        }
        .auto-style6 {
            width: 50px;
            height: 50px;
        }
        .auto-style8 {
            width: 50px;
            height: 55px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 24px">
    <div style="height:25px;background-color:midnightblue;color:white;font-weight:bolder">Kategori Ekleme Paneli</div>
      <asp:Panel ID="panel_kategori_ekle" runat="server" BackColor="#9999FF">
          <table class="auto-style1">
              <tr>
                  <td class="auto-style2" style="text-align: right">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style2" style="text-align: right">Kategori Adı:</td>
                  <td>
                      <asp:TextBox ID="txt_kategori_adi" runat="server" CssClass="textboxGorsel" BackColor="AliceBlue" Width="150px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="text-align: right">Sıra:</td>
                  <td>
                      <asp:TextBox ID="txt_sira" runat="server" BackColor="AliceBlue" CssClass="textboxGorsel" OnTextChanged="TextBox2_TextChanged" Width="150px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="text-align: right">Resim:</td>
                  <td>
                      <asp:FileUpload ID="kategori_resim" runat="server" BackColor="AliceBlue" CssClass="auto-style3" Height="25px" Width="300px" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2" style="text-align: right">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style2" style="text-align: right">&nbsp;</td>
                  <td>
                      <asp:Button ID="btn_kategori_ekle" runat="server" Text="Ekle" CssClass="butonGorsel" OnClick="btn_kategori_ekle_Click" />
                  </td>
              </tr>
          </table>
        
    </asp:Panel>
    <br />
    <div style="height:25px; background-color:midnightblue;color:white;font-weight:bolder;">&nbsp
        
        &nbsp;&nbsp; Kategori Ekleme </div>
    <asp:Panel ID="pnl_kategori_duzenle" runat="server" BackColor="aliceblue" ForeColor="black" Height="59px">
        <asp:DataList ID="dl_kategorigetir" runat="server" BackColor="#3366FF" ForeColor="White" Width="700px">
            <HeaderTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">Kategori Adı</td>
                        <td class="auto-style5">Güncelle</td>
                        <td>Sil</td>
                    </tr>
                </table>
            </HeaderTemplate>
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style4">
                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("kategoriAd") %>'></asp:Literal>
                        </td>
                        <td class="auto-style5">
                          <a href="kategoriguncelle.aspx?kategoriID=<%# Eval("kategoriID") %>">  <img class="auto-style6" src="../resim/ayark.png" /></a>
                        </td>
                        <td>
                          
                           <a href="kategoriler.aspx?kategoriID=<%# Eval("kategoriID") %>&islem=sil"> <img class="auto-style8" src="../resim/deletek.jpg" /></a>
                          
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </asp:Panel>
    
    </div>



   

</asp:Content>
