<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Parinya_MasterProject.Main_Function.Search" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="height: 22px; width: 350px">&nbsp;</td>
            <td style="height: 22px; width: 6px">&nbsp;</td>
            <td style="height: 22px">
                Symptoms:</td>
        </tr>
        <tr>
            <td class="text-right" style="height: 22px; width: 350px">&nbsp;</td>
            <td style="height: 22px; width: 6px">&nbsp;</td>
            <td style="height: 22px">
                <asp:TextBox runat="server" ID="symptom" CssClass="form-control" TextMode="MultiLine" Width="400px" Height="150px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px; height: 38px;"></td>
            <td style="width: 6px; height: 38px;"></td>
            <td style="height: 38px">
                <asp:Button ID="Search_button" runat="server" CssClass="btn btn-default" Text="Search" OnClick="Search_button_Click" Width="400px" BackColor="#CCCCCC" Font-Bold="True" />
            &nbsp;
                </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px; height: 21px;" rowspan="1">&nbsp;</td>
            <td style="width: 6px; height: 21px;" rowspan="1"></td>
            <td style="height: 21px" rowspan="1">
                <asp:Button ID="AdvancedSearch_button" runat="server" CssClass="btn btn-default" Text="Advanced search" OnClick="AdvancedSearch_button_Click" Width="400px" BackColor="#CCCCCC" Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px; height: 23px;"></td>
            <td style="width: 6px; height: 23px;"></td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px">&nbsp;</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px; height: 24px;">&nbsp;</td>
            <td style="width: 6px; height: 24px;"></td>
            <td style="height: 24px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px">&nbsp;</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px">&nbsp;</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px">&nbsp;</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 350px">&nbsp;</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
