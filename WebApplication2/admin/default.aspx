<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2.admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        * {
            C: \Users\Mariye Nur\source\repos\WebApplication2\WebApplication2\admin\default.aspx border-style: none;
            border-color: inherit;
            border-width: 0;
            padding: 0;
            margin-left: 0;
            margin-right: 0;
            margin-top: 0;
        }
        .auto-style1 {
            float: right;
            height: 33px;
            margin-left: 21px;
        }
        .auto-style2 {
            height: 105px;
        }
  </style>
</head>
<body style="background-color:aliceblue; height: 66px;">
    <form id="form1" runat="server">
        <div style="height:70px; background-color:midnightblue;color:#000000;">
            <div style="float:left; width:323px;margin-top:15px; height: 55px;  color:white;">Kullanıcı Adı:<asp:TextBox ID="txt_kullanici" runat="server" Height="31px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox></div>
            <div style="float:left;width:250px;margin-top:15px; color:white; height:55;">Şifre<asp:TextBox ID="txt_sifre" runat="server" Height="31px" TextMode="Password"></asp:TextBox></div>
            <div style="float:left; width:250px; height: 31px;margin-top:15px;">
                <asp:Button ID="btn_giris" runat="server" Text="Giriş" Height="35px "  Width="90px " BackColor="white" ForeColor="black" OnClick="Button1_Click" Font-Size="Medium"/></div>
           <div style="margin-top:15px; text-align:right; font-size: medium;" class="auto-style1">
               <asp:Label ID="lbl_bilgi" runat="server" Text="Üye Girişi" ForeColor="White" Height="50px" Width="120px" Font-Size="Medium"></asp:Label></div> 
           
        </div>
    <div style="height:80px;background-color:midnightblue;"></div>
        <div style="height:1px;background-color:aliceblue;"></div>
    <div style="background-color:midnightblue;color:#000000; margin-top:10000; color:white;" class="auto-style2" >
        <br />
        <br />
        Üye Olmadan Devam Et:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_user" runat="server" Text="Giriş" Height="35px" Width="90px" BackColor="White" ForeColor="Black" Font-Size="Medium" />

        <asp:TextBox ID="txt_user" runat="server" BackColor="MidnightBlue" OnTextChanged="txt_user_TextChanged"></asp:TextBox>

    </div>
           
    </form>
    </body>
</html>
