<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Parinya_MasterProject.Main_Function.Search" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><span style="font-size: x-large">Please fill in failure information in this form.</span></h2>
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="height: 22px; width: 180px">Failure name<br />
                (description)</td>
            <td style="height: 22px; width: 6px">&nbsp;</td>
            <td style="height: 22px">
                <asp:TextBox runat="server" ID="failure_description" CssClass="form-control" TextMode="MultiLine" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="height: 22px; width: 180px">Symptoms</td>
            <td style="height: 22px; width: 6px">&nbsp;</td>
            <td style="height: 22px">
                <asp:TextBox runat="server" ID="failure_symptoms" CssClass="form-control" TextMode="MultiLine" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Product name</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="failure_productName" CssClass="form-control" Width="656px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 21px;">Failed location</td>
            <td style="width: 6px; height: 21px;"></td>
            <td style="height: 21px">
                <asp:DropDownList ID="failure_location" runat="server" CssClass="dropdown" style="left: 0px; top: 0px; height: 25px; width: 200px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>BE-PREBI</asp:ListItem>
                    <asp:ListItem>BE-IBI</asp:ListItem>
                    <asp:ListItem>BE-POSTBI</asp:ListItem>
                    <asp:ListItem>BE-CFG</asp:ListItem>
                    <asp:ListItem>Quality-FQA</asp:ListItem>
                    <asp:ListItem>Reliability-ORT</asp:ListItem>
                    <asp:ListItem>Reliability-RDT</asp:ListItem>
                    <asp:ListItem>CharBEST</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 23px;">Duration</td>
            <td style="width: 6px; height: 23px;"></td>
            <td style="height: 23px">start: XXX&nbsp; end: XXX</td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Firmware version</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="failure_firmwareVersion" CssClass="form-control" Width="656px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 24px;">Temperature</td>
            <td style="width: 6px; height: 24px;"></td>
            <td style="height: 24px">
                <asp:DropDownList ID="failure_temperature" runat="server" Height="25px" Width="200px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Cold (&lt;5)</asp:ListItem>
                    <asp:ListItem>Cold-margin (&lt;-5)</asp:ListItem>
                    <asp:ListItem>Norm</asp:ListItem>
                    <asp:ListItem>Hot-margin (&gt;65)</asp:ListItem>
                    <asp:ListItem>Hot (&gt;50)</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Current</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:DropDownList ID="failure_current" runat="server" Height="25px" Width="200px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>High</asp:ListItem>
                    <asp:ListItem>Norm</asp:ListItem>
                    <asp:ListItem>Low</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">High voltage</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:DropDownList ID="failure_highVoltage" runat="server" Height="25px" Width="200px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>11.5</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>12.5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Low voltage</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:DropDownList ID="failure_lowVoltage" runat="server" Height="25px" Width="200px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>4.5</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>5.5</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">&nbsp;</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:Button ID="failure_buttonSearch" runat="server" CssClass="btn btn-default" Text="Search" OnClick="failure_buttonSearch_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
