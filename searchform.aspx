<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchform.aspx.cs" Inherits="unibook.searchform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
      body{
    background:skyblue;
    margin:0;
}
.menu{
    width:111%;
    background:#142b47;
    overflow:auto;
}
.menu ul{
    margin:0;
    padding:0;
    list-style:none;
    line-height:60px;
    
}
.menu li{
    float:left;
    
}

.dropdown:hover > .submenu{
    display: block;
}
.submenu > li > a{
    display:block;
    width: 200%;
    height: 60px;
    border:solid;
    border-color: black;
}
.submenu{
    position:absolute;
    width: 200px;
    background: #142b47;
    display: none;  
}
.menu ul li a{
    background:#142b47;
    text-decoration:none;
    width:200px;
    display:block;
    text-align:center;
    color:#f2f2f2;
    font-size:18px;
    font-family:sans-serif;
    
}
.menu li a:hover{
    color:#fff;
    opacity:0.5;
    font-size:19px;
}
.search-form{
    margin-top:15px;
    float:right;
    margin-right:100px;
}
.textbox{
    padding:7px;
    border:none;
    font-size:16px;
    font-family:sans-serif;
}
.button{
    float:right;
    background:orange;
    color:white;
    border-radius:0 5px 5px 0;
    cursor:pointer;
    
}
a:hover{
    background:#142b47;
}
ul li ul li{
    display:none;
}
ul li:hover ul li{
    display:block;
}
#header{
    width:1366px;
    height:15px;
    
}
.lbl{ font-weight: bold;
    font-family:  Papyrus, fantasy;
    display: block;
    font-size: 2em;
    text-align:center;
    margin-top:50px;
    text-decoration-color:#142b47;
    }
        .auto-style1 {
            margin-left: 379px;
        }
        .auto-style2 {
            float: right;
            background: orange;
            color: white;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            margin-top: 14px;
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
        <div>
            <nav class="menu">
                <ul>
            <li><a href="home.aspx">HOME</a></li>
                    <li class="dropdown"><a href="#uni">UNIVERSITETET</a>
                        <ul class="submenu">
                            <li><a href="politekniku.aspx">Universiteti Politeknik</a></li>
                            <li><a href="tiranes.aspx">Universiteti i Tiranes</a></li>
                            <li><a href="bujqesori.aspx">Universiteti Bujqesor</a></li>
                            <li><a href="mjeksia.aspx">Universiteti i Mjekesise</a></li>
                            <li><a href="arte.aspx">Universiteti i Arteve</a></li>
                        </ul>
                    </li>
                    <li><a href="books.aspx">MY BOOKS</a></li>
                    <li><a href="#profili">PROFILE</a></li>
                    <li><asp:TextBox CssClass="textbox" ID="txtbox" runat="server"/></li>
                    <li><asp:Button CssClass="auto-style2" Text="Search" ID="btn1" runat="server" Height="30px" Width="70" OnClick="Kerko"/></li>
                      </ul>
            </nav>
        </div>
           
        <asp:DetailsView ID="detail" runat="server" Height="20px" Width="305px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateRows="False" CssClass="auto-style1">
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <Fields>  
                        <asp:BoundField DataField="Autori" HeaderText="Autori" />  
                        <asp:BoundField DataField="Titulli" HeaderText="Titulli" />  
                        <asp:BoundField DataField="Viti_botimit" HeaderText="Viti i Botimit" />
                        <asp:BoundField DataField="Gjendja" HeaderText="Gjendja"/>
                        <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" />
                        <asp:BoundField DataField="Email" HeaderText="Emaili i shitesit" />
                                      </Fields>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
        </asp:DetailsView>
<div class="footer">
            <footer>
                <asp:Label class="label1" Text="Copyright ©UniBook 2018. All rights reserved." runat="server"></asp:Label>
                <asp:Label class="labell" Text="Contact Information: unibook@yahoo.com" runat="server"></asp:Label>
            </footer>
        </div>
        </form>
        </body>
    </html>