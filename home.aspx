<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="unibook.home" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HOMEPAGE</title>
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
            margin-left: 27px;
            margin-top: 200px;
            font-weight:bold;
            text-align:center;
            font-size:20px;
            }
        .auto-style2 {
            float: right;
            background: orange;
            color: white;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            margin-top: 15px;
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
    <link rel="icon" href="book.png" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Webp.net-resizeimage (5).png" PostBackUrl="~/home.aspx" ImageAlign="Top" />
            <asp:Label runat="server" Text="WELCOME TO UNIBOOK!" Height="94px" Width="900px" CssClass="lbl" Font-Size="40px"> </asp:Label>
            <asp:LoginStatus ID="LoginStatus1" runat="server" Font-Underline="False" CssClass="auto-style10" BorderColor="#CCCCFF" BackColor="#CCCCFF" BorderStyle="Outset" Font-Bold="False" Font-Names="Calibri" ForeColor="Black" Height="25px" LoginText="Login" Width="87px" />
            <asp:Button Text="Sign Up" PostBackUrl="~/default.aspx" runat="server" Font-Underline="False" CssClass="auto-style10" BorderColor="#CCCCFF" BackColor="#CCCCFF" BorderStyle="Outset" Font-Bold="False" Font-Names="Calibri" ForeColor="Black" Height="32px" width="87px" />
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
                    <li><a href="profile.aspx">PROFILE</a></li>
                    <li><asp:TextBox CssClass="textbox" ID="txtbox1" runat="server"/></li>
                    <li><asp:Button CssClass="auto-style2" Text="Search" ID="btn1" runat="server" Height="30px" Width="70" OnClick="Kerko"  /></li>
                    
                    </ul>
            </nav>
        </div>
            </div>
        
        
    <div>
          <asp:Gridview ID="grid" runat="server" AutoGenerateColumns="False" CssClass="auto-style1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="301px" Width="1468px"  PageSize="5">
                <Columns>  
                        <asp:BoundField DataField="Autori" HeaderText="Autori" />  
                        <asp:BoundField DataField="Titulli" HeaderText="Titulli" />  
                        <asp:BoundField DataField="Viti_botimit" HeaderText="Viti i Botimit" />
                        <asp:BoundField DataField="Gjendja" HeaderText="Gjendja"/>
                        <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" />
                        <asp:BoundField DataField="Email" HeaderText="Emaili i shitesit" />
                       <asp:ImageField ControlStyle-Width="200" ControlStyle-Height="200" HeaderText = "Imazhi" DataImageUrlField="Foto" >
<ControlStyle Height="200px" Width="200px"></ControlStyle>
                        </asp:ImageField>
                    </Columns>

                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:Gridview>
               </div>
        <div class="footer">
            <footer>
                <asp:Label class="label1" Text="Copyright ©UniBook 2018. All rights reserved." runat="server"></asp:Label>
                <asp:Label class="labell" Text="Contact Information: unibook@yahoo.com" runat="server"></asp:Label>
            </footer>
        </div>
    </form>
</body>
</html>