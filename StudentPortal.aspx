<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentPortal.aspx.cs" Inherits="StudentPortal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <table class="nav-justified" style="height: 369px">
        <tr>
            <td colspan="2" style="border-style: inset; font-size: xx-large; font-style: inherit; font-variant: normal; text-transform: none; color: #00FFFF; background-color: #660033; height: 73px;">Student Portal</td>
        </tr>
        <tr>
            <td style="height: 48px; width: 102px"></td>
            <td style="height: 48px"></td>
        </tr>
        <tr>
            <td style="width: 102px; height: 45px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" Text="StudentId"></asp:Label>
            </td>
            <td style="height: 45px">
                <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCFFCC" Font-Size="Medium" Height="26px" Width="316px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 46px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="StudentName"></asp:Label>
            </td>
            <td style="height: 46px">
                <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCFFCC" Font-Size="Medium" Height="26px" Width="316px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 47px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Gender"></asp:Label>
            </td>
            <td style="height: 47px">
                <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#CCFFCC" Height="26px" style="margin-bottom: 17px; margin-top: 0;" Width="321px">
                    <asp:ListItem Value="Male"></asp:ListItem>
                    <asp:ListItem Value="Female"></asp:ListItem>
                    <asp:ListItem Value="TransGender"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="height: 48px; width: 102px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Email"></asp:Label>
            </td>
            <td style="height: 48px">
                <asp:TextBox ID="TextBox3" runat="server" BackColor="#CCFFCC" Font-Size="Medium" Height="26px" OnTextChanged="TextBox3_TextChanged" Width="316px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 46px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="DateOfBirth"></asp:Label>
            </td>
            <td style="height: 46px">
                <asp:TextBox ID="TextBox4" runat="server" BackColor="#CCFFCC" Font-Size="Medium" Height="26px" Width="316px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 30px"></td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="height: 46px" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="#0033CC" Font-Size="Large" ForeColor="White" Height="37px" OnClick="Button1_Click" style="margin-right: 2; margin-bottom: 17" Text="AddStudent" Width="172px" Font-Bold="True" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#336600" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="37px" OnClick="Button2_Click1" Text="Update" Width="130px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#CC3300" Font-Bold="True" Font-Size="Large" ForeColor="#FFFFCC" Height="37px" OnClick="Button3_Click" Text="Delete" Width="130px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#999999" Font-Bold="True" Font-Size="Large" Height="37px" OnClick="Button4_Click1" Text="Clear" Width="120px" />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 46px">&nbsp;</td>
            <td style="height: 46px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 100px" colspan="2">
                <asp:GridView ID="GridView1" runat="server" style="margin-right: 772px; margin-bottom: 44px;" BackColor="#FFCC66" Font-Size="Medium" Height="8px" Width="936px" Caption="StudentRecords">
                    <HeaderStyle BackColor="#3399FF" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td style="height: 100px" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#999999" BorderColor="#393939" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="40px" PostBackUrl="~/Default.aspx" Width="100px">Home</asp:LinkButton>
            </td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
