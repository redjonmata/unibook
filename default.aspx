<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="unibook._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 671px;
        }
        .auto-style2 {
            width: 100%;
            height: 666px;
        }
        .auto-style3 {
            height: 80px;
        }
        .auto-style4 {
            height: 80px;
            width: 400px;
        }
        .auto-style5 {
            width: 400px;
        }
        .auto-style6 {
            height: 80px;
            width: 586px;
        }
        .auto-style7 {
            width: 586px;
        }
        .auto-style8 {
            width: 400px;
            height: 351px;
        }
        .auto-style9 {
            width: 586px;
            height: 351px;
        }
        .auto-style10 {
            height: 351px;
        }
        .auto-style11 {
            width: 149px;
        }
        .auto-style12 {
            width: 202px;
        }
        .auto-style16 {
            width: 100%;
            height: 362px;
            background:none;
        }
        .auto-style17 {
            width: 149px;
            height: 70px;
        }
        .auto-style18 {
            width: 202px;
            height: 70px;
        }
        .auto-style19 {
            height: 70px;
        }
        .auto-style20 {
            font-size: x-large;
            color: white;
            text-align:left;
        }
        .auto-style21 {
            width: 149px;
            height: 36px;
        }
        .auto-style22 {
            width: 202px;
            height: 36px;
        }
        .auto-style23 {
            height: 36px;
        }
        .auto-style24 {
            width: 149px;
            height: 41px;
        }
        .auto-style25 {
            width: 202px;
            height: 41px;
        }
        .auto-style26 {
            height: 41px;
        }
.button1 {
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
.button1:hover {background-color: orange;}

.button1:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
        .auto-style27 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 15px 25px;
            font-size: 18.5px;
            text-align: center;
            cursor: pointer;
            outline: none;
            color: #fff;
            background-color: darkorange;
            border-radius: 15px;
            margin-left: 0px;
        }
        table{background-image: url(librisignup.jpg)}
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
    <form id="form1" runat="server" class="auto-style1">
        <div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style4" style="background-color: darkorange">&nbsp;</td>
                    <td class="auto-style6" style="background-color: darkorange">
                        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><span class="auto-style20">Sign up</span></strong></h4>
                    </td>
                    <td class="auto-style3" style="background-color: darkorange"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9" style="vertical-align: top">
                        <table class="auto-style16">
                            <tr>
                                <td class="auto-style11">First Name:</td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style24">Last Name:</td>
                                <td class="auto-style25">
                                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style26">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style21">Email:</td>
                                <td class="auto-style22">
                                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style23">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="Textbox3" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email is not valid " ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">Password:</td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="TextBox4" TextMode="Password" runat="server" Width="201px"></asp:TextBox>
                                
                                </td>
                                <td style="color: #FF0000">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator1"  runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Passwords do not match." ForeColor="Red"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">Confirm Password:</td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="TextBox5" TextMode="Password" runat="server" Width="200px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="red" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                                    </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">Phone:</td>
                                <td class="auto-style12">
                                    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style11">Universiteti:</td>
                                <td class="auto-style12">
                                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="200px">
                                        <asp:ListItem Value="4">Universiteti i Tiranës</asp:ListItem>
                                        <asp:ListItem Value="5">Universiteti Politeknik</asp:ListItem>
                                        <asp:ListItem Value="1">Universiteti Bujqësor</asp:ListItem>
                                        <asp:ListItem Value="3">Universiteti i Mjeksisë</asp:ListItem>
                                        <asp:ListItem Value="2">Universiteti i Arteve</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style17"></td>
                                <td class="auto-style18" style="text-align: center">
                                    
                                    <br />
                                    <asp:Button CssClass="auto-style27" ID="Button1" runat="server" Text="Sign Up" Height="52px" Width="120px" onclick="Button1_Click"/>
                                </td>
                                <td class="auto-style19">
                                    
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style9" style="vertical-align: top">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
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

