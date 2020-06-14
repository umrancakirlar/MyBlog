<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="WebApplication2.admin.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            background-color: aliceblue;
            border: 1px dotted midnightblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div></div>
    
    <div style="height:40px; width:100%; float:left; font-weight: bold; background-color: #000080; color: #FFFFFF;">Mesaj</div>


     <div style="height:10px; width:100%;"></div>
    <div class="auto-style8">




        <div style="border: 1px dotted #000080" class="auto-style10" >
            <asp:TextBox ID="txt_yorumIcerik" placeHolder="Mesajınızı Yazınız." runat="server" Height="289px" TextMode="MultiLine" Width="697px"></asp:TextBox>
        </div>

   <div class="auto-style9" style="border: 1px dotted #000080">

       <table class="auto-style1">
           <tr>
               <td>&nbsp;</td>
           </tr>
           <tr>
               <td>
                   <asp:TextBox ID="txt_adsoyad" placeHolder="Adınız ve Soyadınızı Giriniz" runat="server" CssClass="auto-style2" Width="328px" BackColor="White"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   &nbsp;</td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="btn_yorumekle" runat="server" Text="Gönder" BackColor="#000066" CssClass="auto-style11" ForeColor="White" Height="42px" Width="120px"  />
               </td>
           </tr>
       </table>

   </div>


    </div>
    <div class="auto-style12">
         <asp:Label ID="lbl_bilgi" runat="server" ForeColor="#333399" Text="Label"></asp:Label>
    </div>
</asp:Content>
