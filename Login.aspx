<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="unibook.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
body{
    background-image:url(colorbooks.jpg)
}


.loginform{
   border-radius:7px;
    border:ridge;
    background-color:white;
    width:300px;
}
        .auto-style1 {
            height: 642px;    
        }
        .auto-style2 {
            border-color: inherit;
            border-width: medium;
            background-color: white;
            margin-left: 827px;
            margin-top: 1px;
            
        }
        .auto-style3 {
           border: medium solid black;
            background-color: white;
            margin-left: 967px;
            margin-top: 164px;
        }
.button {
  padding: 15px 25px;
  font-size: 14px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: darkorange;
  border: none;
  border-radius: 15px;
}

.button:hover {background-color: orange;}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
.titletext{
    padding: 15px 25px;
  font-size: 20px;
  height:5px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: darkorange;
  border: solid;
  border-color: black;
  border-radius: 15px;
  padding-left:30px;
}
.textbox{
    width: 100%;
    padding: 12px 20px;
    box-sizing: border-box;
    border: 1px solid #555;
    outline: none;
    margin: 6px 6px 6px 6px;
}
.textbox:focus{
    background-color: lightblue;
}
        .auto-style4 {
            width: 126px;
            float:right;
            position:relative;
        }
        .auto-style5 {
            width: 223px;
            float: right;
            position: relative;
            left: 109px;
            top: -5px;
        }
         .footer{
            position:fixed;
            left:0;
            bottom:0;
            width:100%;
            background-color:white;
            color:black;
            text-align:center;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="auto-style1">
            
           <asp:ImageButton CssClass="auto-style3" ID="ImageButton1" runat="server" ImageUrl="~/logologinform.png" PostBackUrl="~/home.aspx" Height="127px" />
            <asp:Login CssClass="auto-style2" ID="Login1" runat="server"  OnAuthenticate="LoginPerdorues" Height="126px"  Width="350px" BorderColor="Black" BorderPadding="16" BorderStyle="Inset" ForeColor="Black" Font-Bold="True" Font-Size="Medium">
                <LabelStyle HorizontalAlign="Left" />
                
                <LoginButtonStyle CssClass="button" />
                <TextBoxStyle CssClass="textbox" />

                <TitleTextStyle CssClass="titletext" />
               </asp:Login>
        </div>  
        <p class="auto-style4">
            &nbsp;</p>

        <p class="auto-style4">
            &nbsp;</p>
        <p class="auto-style4">
            &nbsp;</p>
        <p class="auto-style4">
            &nbsp;</p>
        <p class="auto-style5">
        <asp:LinkButton runat="server" PostBackUrl="default.aspx"  ForeColor="DarkOrange" Font-Size="Medium" Font-Bold="True" Text="New to UniBook? Register now!"> </asp:LinkButton>

        </p>
        <div class="footer">
            <footer>
                <asp:Label class="label1" Text="Copyright ©UniBook 2018. All rights reserved." runat="server"></asp:Label>
                <asp:Label class="labell" Text="Contact Information: unibook@yahoo.com" runat="server"></asp:Label>
            </footer>
        </div>
    </form>
</body>
</html>