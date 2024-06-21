<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty.aspx.cs" Inherits="Faculty" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 43px;
            visibility: visible;
            width: 500px;
        }
        .auto-style3 {
            height: 48px;
            visibility: visible;
            width: 500px;
        }
        .auto-style4 {
            height: 44px;
            visibility: visible;
            width: 500px;
        }
        .auto-style9 {
            height: 56px;
        }
        .auto-style11 {
            height: 48px;
            width: 221px;
        }
        .auto-style12 {
            height: 43px;
            width: 221px;
        }
        .auto-style13 {
            height: 44px;
            width: 221px;
        }
        .auto-style14 {
            height: 54px;
        }
        .auto-style15 {
            width: 500px;
        }
        .auto-style16 {
            width: 221px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" BackColor="#003366" Font-Bold="True" Font-Size="X-Large" ForeColor="#FFFF66" Text="Faculty Portal" Width="300px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="FacultyId" Width="250px"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server" BackColor="#CCCCCC" Height="33px" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Salutation" Width="250px"></asp:Label>
                </td>
                <td class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" BackColor="#CCCCCC" Font-Size="Medium" ForeColor="#0033CC" Height="36px" RepeatDirection="Horizontal" Width="281px">
                        <asp:ListItem Value="Mr."></asp:ListItem>
                        <asp:ListItem Value="Mrs."></asp:ListItem>
                        <asp:ListItem Value="Miss"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="FacultyName" Width="250px"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" BackColor="#CCCCCC" Height="33px" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text="Department" Width="250px"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#CCCCCC">
                        <asp:ListItem Value="Computer Science"></asp:ListItem>
                        <asp:ListItem Value="Biology"></asp:ListItem>
                        <asp:ListItem Value="Social Studies"></asp:ListItem>
                        <asp:ListItem Value="Mathematics"></asp:ListItem>
                        <asp:ListItem Value="Physics"></asp:ListItem>
                        <asp:ListItem Value="Physical Education"></asp:ListItem>
                        <asp:ListItem Value="Special Education"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">
                    <asp:Button ID="Button1" runat="server" BackColor="#00CC66" Font-Size="Medium" Height="49px" OnClick="Button1_Click" Text="AddFaculty" Width="172px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" BackColor="#FF6600" BorderColor="#FF6600" Font-Size="Medium" ForeColor="White" Height="42px" OnClick="Button2_Click" Text="Clear" Width="123px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" BackColor="#FFFF66" Font-Size="Medium" Height="47px" OnClick="Button3_Click" Text="FacultyDetails" Width="327px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14" colspan="2"></td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#99CCFF" Width="973px">
                        <HeaderStyle BackColor="#6600FF" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#999999" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="40px" PostBackUrl="~/Default.aspx" Width="120px">Home</asp:LinkButton>
                </td>
            </tr>
        </table>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    </form>
</body>
</html>
