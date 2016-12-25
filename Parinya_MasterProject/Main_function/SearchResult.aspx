<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="Parinya_MasterProject.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><span style="font-size: x-large">Found </span>
        <asp:Label ID="Label_foundNum" runat="server"></asp:Label>
&nbsp;items from
        <asp:Label ID="Label_totalItemNum" runat="server"></asp:Label>
        .</h2>
    <table class="nav-justified">
        <tr>
            <td style="width: 95px">&nbsp;</td>
            <td>
                <asp:Table ID="Table1" runat="server">
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">1</asp:TableCell>
                        <asp:TableCell runat="server">2</asp:TableCell>
                        <asp:TableCell runat="server">3</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">1</asp:TableCell>
                        <asp:TableCell runat="server">2</asp:TableCell>
                        <asp:TableCell runat="server">3</asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow runat="server">
                        <asp:TableCell runat="server">3</asp:TableCell>
                        <asp:TableCell runat="server">3</asp:TableCell>
                        <asp:TableCell runat="server">3</asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <br />
                data list result<br />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
