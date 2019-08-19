<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="unibook.Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 86px;
            text-align:center;
        }
        .auto-style2 {
            width: 271px;
        }
        .auto-style3 {
            width: 110px;
        }
        .auto-style4 {
            width: 110px;
            height: 26px;
        }
        .auto-style5 {
            width: 271px;
            height: 26px;
        }
        #lb1{
            font-weight:bold;
            font-size:20px;

        }
        .mGrid { 
    width: 100%; 
    background-color: lightskyblue;
    margin: 5px 0 10px 0; 
    border: solid 1px #525252; 
    border-collapse:collapse; 
}
.mGrid td { 
    padding: 5px; 
    border: solid 1px #c1c1c1; 
    color: #717171; 
}
.mGrid th { 
    padding: 4px 2px; 
    color: #fff; 
    background: #142b47 url(grd_head.png) repeat-x top; 
    border-left: solid 1px #525252; 
    font-size: 0.9em; 
}
.mGrid .alt { background: #fcfcfc url(grd_alt.png) repeat-x top; }
.mGrid .pgr { background: #424242 url(grd_pgr.png) repeat-x top; }
.mGrid .pgr table { margin: 5px 0; }
.mGrid .pgr td { 
    border-width: 0; 
    padding: 0 6px; 
    border-left: solid 1px #666; 
    font-weight: bold; 
    color: #fff; 
    line-height: 10px; 
 }   
.mGrid .pgr a { color: #666; text-decoration: none; }
.mGrid .pgr a:hover { color: #000; text-decoration: none; }
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
input[type=text]{
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
    position:fixed;
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
table{
    background-color:darkorange;
    border:solid;
    text-align:center;
    font-weight:bold;
    margin-left:500px;
}
        .auto-style6 {
            width: 211px;
        }
        .auto-style7 {
            float: right;
            background: orange;
            color: white;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            left: 1005px;
            top: 14px;
            height: 26px;
            width: 66px;
            margin-left: 0px;
            margin-top: 19px;
        }
        .auto-style8 {
            background-color: lightskyblue;
            margin: 5px 0 10px 0;
            border: solid 1px #525252;
            border-collapse: collapse;
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
                    <li><a href="profile.aspx">PROFILE</a></li>
                    <li class="auto-style6"><asp:TextBox CssClass="textbox" ID="txtbox" runat="server"/></li>
                    <li><asp:Button CssClass="auto-style7" Text="Search" ID="btn1" runat="server"   /></li>
                </ul>
                
                  
                     
            </nav>
        </div>
        <div>  
                <table >  
                    <tr>  
                        <td colspan="2">  
                               <asp:Label ID="lb1" Text="Posto librin tend!" runat="server" ></asp:Label><br /><br /><br />  
                          </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style4">Autori:</td>  
                        <td class="auto-style5">  
                            <asp:TextBox runat="server" ID="tbautori"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">Titulli:</td>  
                        <td class="auto-style2">  
                            <asp:TextBox runat="server" ID="tbtitulli"></asp:TextBox>  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">Viti i Botimit:  
                        </td>  
                        <td class="auto-style2">  
                            <asp:TextBox ID="tbviti" runat="server"></asp:TextBox>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">Gjendja:</td>  
                        <td class="auto-style2">  
                            <asp:TextBox ID="tbgjendja" runat="server"></asp:TextBox>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">Cmimi:</td>  
                        <td class="auto-style2">  
                            <asp:TextBox ID="tbcmimi" runat="server" TextMode="Number"></asp:TextBox>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">Foto: </td>  
                        <td class="auto-style2">  
                            <asp:FileUpload runat="server" ID="uploadimage" />  
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">Fakulteti:</td>  
                        <td class="auto-style2">  
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="249px">
                                <asp:ListItem Value="1">Fakulteti i Bioteknologjise dhe Ushqimit</asp:ListItem>
                                <asp:ListItem Value="2">Fakulteti i Bujqesise dhe Mjedisit</asp:ListItem>
                                <asp:ListItem Value="3">Fakulteti i Ekonomise dhe Agrobiznesit</asp:ListItem>
                                <asp:ListItem Value="4">Fakulteti i Mjekesise Veterinere</asp:ListItem>
                                <asp:ListItem Value="5">Fakulteti i Shkencave Pyjore</asp:ListItem>
                                <asp:ListItem Value="6">Fakulteti i Muzikes</asp:ListItem>
                                <asp:ListItem Value="7">Fakulteti i Arteve te Bukura</asp:ListItem>
                                <asp:ListItem Value="8">Fakulteti i Artit Skenik</asp:ListItem>
                                <asp:ListItem Value="9">Fakulteti i Mjekesise</asp:ListItem>
                                <asp:ListItem Value="10">Fakulteti i Shkencave Mjeksore Teknike</asp:ListItem>
                                <asp:ListItem Value="11">Fakulteti i Mjekesise Dentare</asp:ListItem>
                                <asp:ListItem Value="12">Fakulteti i Drejtesise</asp:ListItem>
                                <asp:ListItem Value="13">Fakulteti i Ekonomisë </asp:ListItem>
                                <asp:ListItem Value="14">Fakulteti i Gjuheve te Huaja</asp:ListItem>
                                <asp:ListItem Value="15">Fakulteti i Histori-Filologji</asp:ListItem>
                                <asp:ListItem Value="16">Fakulteti i Shkencave Sociale</asp:ListItem>
                                <asp:ListItem Value="17">Fakulteti i Shkencave te Natyres</asp:ListItem>
                                <asp:ListItem Value="18">Fakulteti i Arkitektures dhe Urbanistikes</asp:ListItem>
                                <asp:ListItem Value="19">Fakulteti i inxhinierise elektrike</asp:ListItem>
                                <asp:ListItem Value="20">Fakulteti i Inxhinierise Matematike dhe Inxhinierise Fizike</asp:ListItem>
                                <asp:ListItem Value="21">Fakulteti i inxhinierise mekanike</asp:ListItem>
                                <asp:ListItem Value="22">Fakulteti i inxhinierise se ndërtimit</asp:ListItem>
                                <asp:ListItem Value="23">Fakulteti i Teknologjise Informacionit</asp:ListItem>
                            </asp:DropDownList>
                        </td>  
                    </tr>  
                    <tr>  
                        <td class="auto-style3">  
                        </td>  
                        <td class="auto-style2">  
                            <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="Submit_Click"  />  
                        </td> 
                    </tr> 
                    <tr>  
                        <td colspan="2" class="auto-style1">  
                            <asp:Label runat="server" ID="lblMessage" ForeColor="Red"></asp:Label>  
                        </td>  
                    </tr>  
                </table> 
                <br />  
                <br />  
                <asp:GridView runat="server" ID="grid" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" 
                    BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CssClass="auto-style8" OnRowDeleting="grid_RowDeleting" 
                    Width="1404px" CellSpacing="2" ForeColor="Black" PageSize="5" 
                     DataKeyNames="ISBN">  
                    <Columns>  
                        <asp:TemplateField HeaderText="Delete?">
                            <ItemTemplate >
                                <span onclick="return confirm('Jeni te sigurt qe deshironi te fshini rekordin?')">
                                    <asp:LinkButton ID="lnkB" runat="server" Text="Delete" CommandName="Delete"></asp:LinkButton>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ISBN"   HeaderText="Id" InsertVisible="false" />
                        <asp:BoundField DataField="Autori" HeaderText="Autori"  SortExpression="Autori"/>  
                        <asp:BoundField DataField="Titulli" HeaderText="Titulli" />  
                        <asp:BoundField DataField="Viti_botimit" HeaderText="Viti i Botimit" />
                        <asp:BoundField DataField="Gjendja" HeaderText="Gjendja"/>
                        <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" />
                        <asp:ImageField ControlStyle-Width="200" ControlStyle-Height="200" HeaderText = "Imazh" DataImageUrlField="Foto" >
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
  
                </asp:GridView> 
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
