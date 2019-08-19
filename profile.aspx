<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="unibook.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-color:lightskyblue;
        }
        
        .auto-style1 {
            width: 102%;
        }
        .auto-style3 {
            margin-right: 4px;
        }
        .auto-style4 {
            width: 161px;
        }
        .auto-style5 {
            margin-left: 487px;
            margin-top: 32px;
        }
        .auto-style6 {
            margin-left: 469px;
            margin-top: 24px;
        }
        .auto-style7 {
            width: 992px;
            height: 629px;
        }
        .auto-style8 {
            margin-left: 65px;
        }
        .auto-style9 {
            width: 84%;
        }
        .auto-style14 {
            width: 335px;
        }
        .auto-style19 {
            width: 107px;
        }
        .auto-style20 {
            width: 107px;
            height: 32px;
        }
        .auto-style21 {
            width: 335px;
            height: 32px;
        }
        .auto-style22 {
            width: 107px;
            height: 21px;
        }
        .auto-style23 {
            width: 335px;
            height: 21px;
        }
        .auto-style24 {
            width: 161px;
            height: 42px;
        }
        .auto-style25 {
            height: 42px;
        }
        .menu{
    width:151%;
    background:#142b47;
    overflow:auto;
}
.menu ul{
    margin:0;
    padding:0;
    list-style:none;
    line-height:60px;
    align-items:center;
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
        .auto-style26 {
            margin-left: 458px;
        }
        .auto-style27 {
            margin-left: 455px;
        }
        .auto-style28 {
            width: 201px;
        }
        .auto-style29 {
            width: 200px;
        }
        .auto-style30 {
            margin-top: 0px;
        }
        .auto-style31 {
            margin-top: 11px;
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
    <form id="form1" runat="server" class="auto-style7">
     <div>
          <div>
            <nav class="menu">
                <ul>
                    <li class="auto-style29"><a href="home.aspx">HOME</a></li>
                    <li class="dropdown"><a href="#uni">UNIVERSITETET</a>
                        <ul class="submenu">
                            <li><a href="politekniku.aspx">Universiteti Politeknik</a></li>
                            <li><a href="tiranes.aspx">Universiteti i Tiranes</a></li>
                            <li><a href="bujqesori.aspx">Universiteti Bujqesor</a></li>
                            <li><a href="mjeksia.aspx">Universiteti i Mjekesise</a></li>
                            <li><a href="arte.aspx">Universiteti i Arteve</a></li>
                        </ul>
                    </li>
                    <li class="auto-style28"><a href="books.aspx">MY BOOKS</a></li>
                    <li><a href="profile.aspx">PROFILE</a></li>
                    <asp:Button Text="Admin" runat="server" BackColor="DarkOrange" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Size="20px" ForeColor="Black" OnClick="Unnamed1_Click" />
                    
                    </ul>
            </nav>
        </div>
         <asp:DetailsView ID="D2" runat="server" AutoGenerateColumns="false" AutoGenerateRows="False" CssClass="auto-style5" Height="144px" Width="233px" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" CellPadding="3" GridLines="Vertical" Font-Bold="True">
             <AlternatingRowStyle BackColor="#DCDCDC" />
             <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
             <fields>
                 <asp:BoundField DataField="Username" HeaderText="Emri:"/>
                 <asp:BoundField DataField="LastName" HeaderText="Mbiemri:" />
                 <asp:BoundField DataField="Email"   HeaderText="Email:"  />
                 <asp:BoundField DataField="Phone"   HeaderText="Nr-Kontakti:" />
             </fields>
            
             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
             <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            
         </asp:DetailsView>

         <asp:Button ID="Button2" runat="server" CssClass="auto-style6" Text="EDIT" Width="80px" OnClick="Edit" BackColor="DarkOrange" BorderColor="Black" Font-Bold="True" Font-Size="14px" ForeColor="Black" Height="30px" />
        
         <asp:Button ID="Button3" runat="server" CssClass="auto-style8" Text="Change Password" Width="150px" OnClick="Changepass" BackColor="DarkOrange" BorderColor="Black" BorderStyle="Inset" Font-Bold="True" Font-Size="14px" Height="30px" />
         <br />
         <br /> 
         <asp:Panel ID="Panel2" runat="server" Height="194px" Visible="False" CssClass="auto-style26" BorderStyle="Solid" Font-Bold="True" ForeColor="Black">
             <table class="auto-style9">
                 <tr>
                     <td class="auto-style20">Current Password:</td>
                     <td class="auto-style21">
                         <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="178px" TextMode="Password"></asp:TextBox>
                     </td>
                     <td class="auto-style21">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="Textbox5"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style22">New Password:</td>
                     <td class="auto-style23">
                         <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="176px" TextMode="Password"></asp:TextBox>
                     </td>
                     <td class="auto-style23">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match" ForeColor="Red" ControlToCompare="TextBox7" ControlToValidate="Textbox6"></asp:CompareValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style19">Confirm Password:</td>
                     <td class="auto-style14">
                         <asp:TextBox ID="TextBox7" runat="server" Height="28px" Width="174px" TextMode="Password"></asp:TextBox>
                     </td>
                     <td class="auto-style14">
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style19">&nbsp;</td>
                     <td class="auto-style14">
                         <asp:Button ID="Button4" runat="server" Text="Save Changes" Width="114px" OnClick="Save_Changes" BackColor="DarkOrange" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" />
                      </td>
                     <td class="auto-style14">
                         <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                     </td>
                 </tr>
             </table>
         </asp:Panel>
         <br />
          S<br />
         <asp:Panel ID="Panel1" runat="server" Height="217px" Visible="False" Width="461px" CssClass="auto-style27" BorderStyle="Solid" Font-Bold="True" ForeColor="Black">
             <table class="auto-style1">
                 <tr>
                     <td class="auto-style24">Username:</td>
                     <td class="auto-style25">
                         <asp:TextBox ID="TextBox1" runat="server" Width="169px" Height="24px" CssClass="auto-style30"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style4">Lastname:</td>
                     <td>
                         <asp:TextBox ID="TextBox2" runat="server" Width="167px" Height="26px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style4">Email:</td>
                     <td>
                         <asp:TextBox ID="TextBox3" runat="server" Width="168px" Height="25px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email not valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style4">Phone:</td>
                     <td>
                         <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style3" Width="168px" Height="25px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td class="auto-style4">&nbsp;</td>
                     <td>
                         <asp:Button ID="Button1" runat="server" Text="Apply" Width="67px" OnClick="Apply" BackColor="DarkOrange" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" />
                         
                     </td>
                 </tr>
             </table>
         </asp:Panel>

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
