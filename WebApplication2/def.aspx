<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="def.aspx.cs" Inherits="WebApplication2.def" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

         <div style="width:690px; height:auto; margin:0">
        <asp:DataList ID="dl_makale" runat="server" Width="690px">
            <ItemTemplate>
                <div style="width:690px; margin:0 auto; height:auto;">
                    <div class="auto-style6">

                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left; background-color: #000066; color: #FFFFFF;">
                           <a href="makdetay.aspx?makaleID=<%# Eval("makaleID") %>"><asp:Label ID="Label1" runat="server" Height="37px" Text='<%# Eval("makaleBaslik") %>' Width="359px" Font-Size="Large" ForeColor="White"></asp:Label></a> 
                        </div>

                    </div>
                    <div style="width:690px; float:left; height:70px; line-height:20px; font-size:12px;background-color:aliceblue;">
                        <div style="width:auto; height:20px; float:left;">

                            <asp:TextBox ID="TextBox1" runat="server" CssClass="textboxGorsel" Height="69px" TextMode="MultiLine" Width="689px" Text='<%# Eval("makaleOzet") %>'></asp:TextBox>

                        </div>

                    </div>
                     
                    <div style="margin-left: 15px; margin-top: 15px; margin-bottom: 15px;" class="auto-style3">

                       
                        <img class="auto-style9" src="../resim/time.png" />

                       
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih") %>' Width="182px" CssClass="auto-style8" Height="23px"></asp:Label>
        </div>
                    <div style="width:100%; height:40px; float:left;"></div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

</asp:Content>
