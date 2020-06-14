<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="arama.aspx.cs" Inherits="WebApplication2.admin.aramak" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="width:690px; height:auto; margin:0 auto;">
        <asp:DataList ID="dl_ara" runat="server" Width="690px" OnSelectedIndexChanged="dl_kategori_SelectedIndexChanged">
            <ItemTemplate>
                <div style="width:690px; margin:0 auto; height:auto;">
                    <div class="auto-style6">

                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left; background-color: #000066; color: #FFFFFF;">
                          <a href="makaledetay.aspx?makaleID=<%# Eval("makaleID") %>">  <asp:Label ID="Label1" runat="server" Height="37px" Text='<%# Eval("makaleBaslik") %>' Width="100px"></asp:Label></a>
                        </div>

                    </div>
                    <div style="width:690px; float:left; height:70px; line-height:20px; font-size:12px;background-color:aliceblue;">
                        <div style="width:auto; height:20px; float:left;">

                        </div>

                        <asp:Label ID="Label5" runat="server" Height="30px" Text='<%# Eval("makaleOzet") %>' Width="100px"></asp:Label>

                    </div>
                     
                    <div style="margin:15px;" class="auto-style3">

                       
                        <img class="auto-style4" src="resim/tarih.png" height="12" width="12" />

                       
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih") %>' Width="100px"></asp:Label>
        </div>
                    <div style="width:100%; height:40px; float:left;"></div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
