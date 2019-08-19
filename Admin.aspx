<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="unibook.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       body{
           background-color:lightskyblue;
       }
        .auto-style1 {
            margin-left: 308px;
            margin-top: 126px;
        }
        .auto-style2 {
            margin-top: 17px;
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
        <div class="auto-style2">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="Red"></asp:Label> <br/><br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="20px" ForeColor="Red"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataKeyNames="ISBN"
                CellPadding="4" CssClass="auto-style1" ForeColor="#333333" GridLines="None" Width="203px" Font-Bold="True" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
                <Columns>
                    <asp:TemplateField HeaderText="Delete?">
                            <ItemTemplate >
                                <span onclick="return confirm('Jeni te sigurt qe deshironi te fshini rekordin?')">
                                    <asp:LinkButton ID="lnkB" runat="server" Text="Delete" CommandName="Delete"></asp:LinkButton>
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                    <asp:BoundField DataField="ISBN" HeaderText="ID" />
                    <asp:BoundField DataField="Autori" HeaderText="Autori" />
                    <asp:BoundField DataField="Titulli" HeaderText="Titulli" />
                    <asp:BoundField DataField="Gjendja" HeaderText="Gjendja" />
                    <asp:BoundField DataField="Viti_botimit" HeaderText="Viti i botimit" />
                    <asp:BoundField DataField="Cmimi" HeaderText="Cmimi" />
                    <asp:BoundField DataField="Email" HeaderText="Email" />
                    <asp:ImageField ControlStyle-Width="200" ControlStyle-Height="200" DataImageUrlField="Foto" HeaderText="Foto" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
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
