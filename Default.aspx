<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    
   

    
    <table class="nav-justified">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Font-Underline="True" ForeColor="#003366" Height="50px" Text="Education System" Width="600px"></asp:Label>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#00CC00" Font-Italic="True" Font-Size="Large" ForeColor="#990000" Height="40px" PostBackUrl="~/StudentPortal.aspx" Width="200px">Student Portal</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton2" runat="server" BackColor="#9900CC" Font-Italic="True" Font-Size="Large" ForeColor="White" Height="40px" PostBackUrl="~/Faculty.aspx" Width="200px">Faculty Portal</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td></td>
        </tr>
    </table>

    
   

    
</asp:Content>
