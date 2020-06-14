<%@ Page Title="" Language="C#" MasterPageFile="~/kullanici.Master" AutoEventWireup="true" CodeBehind="makaledetay.aspx.cs" Inherits="WebApplication2.makaledetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 180px;
            height: 20px;
            float: left;
            margin-left: 45px;
            margin-right: 140px;
        }
        .auto-style6 {
            width: 690px;
            height: 40px;
            float: left;
        }
        .auto-style7 {
            margin-top: 6px;
        }
        .auto-style8 {
            height: 304px;
        }
        .auto-style9 {
            float: right;
            width: 340px;
            height: 289px;
        }
        .auto-style10 {
            width: 340px;
            height: 289px;
            float: left;
        }
        .auto-style11 {
            background-color: : aliceblue;
            color: midnightblue;
        }
        .auto-style12 {
            height: 25px;
            width: 100%;
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div style="width:690px; height:auto; margin:0">
        <asp:DataList ID="dl_makale" runat="server" Width="690px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <div style="width:690px; margin:0 auto; height:auto;">
                    <div class="auto-style6">

                        <div style="width: 40px; height: 40px; float: left">
                            <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl='<%# Eval("kategoriResim") %>' Width="40px" />
                        </div>
                        <div style="width: 650px; height: 40px; float: left; background-color: #000066; color: #FFFFFF;">
                            <asp:Label ID="Label1" runat="server" Height="37px" Text='<%# Eval("makaleBaslik") %>' Width="100px" CssClass="auto-style7"></asp:Label>
                        </div>

                        <br />

                    </div>
                    <div style="width:690px; float:left; height:70px; line-height:20px; font-size:12px;background-color:aliceblue;">
                        <div style="width:auto; height:20px; float:left;">

                            <br />

                        </div>

                        <asp:Label ID="Label5" runat="server" Height="30px" Text='<%# Eval("makaleIcerik") %>' Width="100px" Font-Size="Medium"></asp:Label>

                    </div>
                     
                    <div style="margin:15px;" class="auto-style3">

                       
                        &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("makaleTarih") %>' Width="178px" Height="25px"></asp:Label>
        </div>
                    <div style="width:100%; height:40px; float:left;"></div>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>

    <div style="height:30px; width:100%;"></div>
    <div style="background-color:midnightblue; color:aliceblue; height:30px; width:100%; font-size:25px;font-weight:bolder;">Yorumlar</div>
    <div style="height:10px; width:100%;"></div>
    <div style="width:690px; height:auto;margin:0 auto; border-bottom-style: dotted; border-bottom-width: 1px; border-bottom-color: #000080;">

        <asp:DataList ID="dl_yorumgetir" runat="server">
            <ItemTemplate>
                <div style="width: 690px; height: auto; float: left;">
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("yorumAdSoyad") %>' Height="18px" Width="18px"></asp:Label>
                </div>
                <div style="float:left; width:630px; height:auto;">
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("yorumIcerik") %>'></asp:Label>
                </div>
            </ItemTemplate>
        </asp:DataList>

    </div>
    <div style="height:30px; width:100%;"></div>
    <div style="background-color:midnightblue; color:aliceblue; height:30px; width:100%; font-size:25px;font-weight:bolder;">Yorum Yap&nbsp; </div>
    <div style="height:10px; width:100%;"></div>
    <div class="auto-style8">




        <div style="border: 1px dotted #000080" class="auto-style10" >
            <asp:TextBox ID="txt_yorumIcerik" placeHolder="Yorumunuzu Giriniz" runat="server" Height="289px" TextMode="MultiLine" Width="337px"></asp:TextBox>
        </div>

   <div class="auto-style9" style="border: 1px dotted #000080">

       <table class="auto-style1">
           <tr>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="txt_adsoyad" runat="server" CssClass="textboxGorsel"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="btn_yorumekle" runat="server" Text="Gönder" BackColor="#000066" CssClass="auto-style11" ForeColor="White" Height="42px" Width="120px" OnClick="btn_yorumekle_Click"  />
               </td>
           </tr>
       </table>

   </div>


    </div>
    <div class="auto-style12">
        <asp:Label ID="lbl_bilgi" runat="server" ForeColor="#333399" Text="Label"></asp:Label>
    </div>

</asp:Content>
