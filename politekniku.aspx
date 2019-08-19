<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="politekniku.aspx.cs" Inherits="unibook.politekniku" %>

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
    overflow:hidden;
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
    z-index:1000;
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
        .auto-style3 {
            width: 301px;
        }
        .unitir{
            color:orange;
            font-weight:bold;
            font-size:17px;
            text-align:center;
        }
        .level1
{
    color:orange;
    font-weight:bold;
    font-size:22px;
    text-align:center;
    background-color:#142b47;
    height:40px;
    margin-top:15px;
}

.level2
{
    color:white;
    text-align:left;
    font-family: sans-serif;
    font-size: medium;
    background-color: black;
    height:40px;
    padding-top:15px;
    font-size:18px;
}
        .auto-style4 {
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
    <link rel="stylesheet" href="styles.css"/>
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
                    <li><a href="profile.aspx">PROFILE</a></li>
                    <li><asp:TextBox CssClass="textbox" ID="txtbox" runat="server"/></li>
                    <li><asp:Button CssClass="auto-style4" Text="Search" ID="btn1" runat="server" Height="30px" Width="70" OnClick="Kerko"/></li>
                      </ul>
            </nav>
        </div>
            <p>

            </p>
            <p class="auto-style5">

            </p>
      <div>
       <asp:menu  id="NavigationMenu" dynamichorizontaloffset="10" staticdisplaylevels="2" staticsubmenuindent="10" target="_blank" runat="server" OnMenuItemClick="NavigationMenu_MenuItemClick" BorderColor="Orange" BorderStyle="Solid">
 <LevelMenuItemStyles>
    <asp:MenuItemStyle CssClass="level1" BorderStyle="Solid"/>
    <asp:MenuItemStyle CssClass="level2"/>
  </LevelMenuItemStyles>
           <DynamicHoverStyle BorderStyle="Dashed" />
           <items>
    <asp:menuitem text="UNIVERSITETI POLITEKNIK" selectable="false">
    <asp:menuitem text="Fakulteti i Teknologjise se Informacionit" tooltip="Fakulteti i Teknologjise se Informacionit">
    </asp:menuitem>
    <asp:menuitem text="Fakulteti i Inxhinierise Elektrike" tooltip="Fakulteti i Inxhinierise Elektrike">
      </asp:menuitem>
      <asp:menuitem text="Fakulteti i Inxhinierise Mekanike" tooltip="Fakulteti i Inxhinierise Mekanike"/>
        <asp:MenuItem Text="Fakulteti i Inxhinierise se Ndertimit" ToolTip="Fakulteti i Inxhinierise se Ndertimit">
        </asp:MenuItem>
        <asp:MenuItem Text="Fakulteti i Arkitektures dhe Urbanistikes" ToolTip="Fakulteti i Arkitektures dhe Urbanistikes">
        </asp:MenuItem>
        <asp:MenuItem Text="Fakulteti i Gjeologjise dhe i Minierave" ToolTip="Fakulteti i Gjeologjise dhe i Minierave">
        </asp:MenuItem>
        <asp:MenuItem Text="Fakulteti i Inxhinerise Matematike dhe Fizike" ToolTip="Fakulteti i Inxhinerise Matematike dhe Fizike">
        </asp:MenuItem>
    </asp:menuitem>
  </items>
       </asp:menu>
     </div>
   <asp:GridView ID="grid1" runat="server" CssClass="auto-style3" Height="116px" Width="401px" AutoGenerateColumns="False" style="margin-left: 448px" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                      <Columns> 
                   <asp:BoundField DataField="Autori" HeaderText="Autori" />  
                        <asp:BoundField DataField="Titulli" HeaderText="Titulli" />  
                        <asp:BoundField DataField="Viti_botimit" HeaderText="Viti i Botimit" />
                        <asp:BoundField DataField="Gjendja" HeaderText="Gjendja"/>
                        <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" />
                        <asp:BoundField DataField="Email" HeaderText="Emaili i shitesit" />
                       <asp:ImageField ControlStyle-Width="200" ControlStyle-Height="200" HeaderText = "Imazhi" DataImageUrlField="Foto" >
<ControlStyle Height="200px" Width="200px"></ControlStyle></asp:ImageField></Columns> 
                      <FooterStyle BackColor="#CCCCCC" />
                      <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                      <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                      <RowStyle BackColor="White" />
                      <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                      <SortedAscendingCellStyle BackColor="#F1F1F1" />
                      <SortedAscendingHeaderStyle BackColor="#808080" />
                      <SortedDescendingCellStyle BackColor="#CAC9C9" />
                      <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
        <div class="footer">
            <footer>
                <asp:Label class="label1" Text="Copyright ©UniBook 2018. All rights reserved." runat="server"></asp:Label>
                <asp:Label class="labell" Text="Contact Information: unibook@yahoo.com" runat="server"></asp:Label>
            </footer>
        </div>
       </form>
      </body>
     </html>