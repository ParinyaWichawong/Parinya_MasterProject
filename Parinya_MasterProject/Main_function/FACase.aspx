<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FACase.aspx.cs" Inherits="Parinya_MasterProject.Main_Function.FACase" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><span style="font-size: x-large">Please fill in failure information in this form.</span></h2>
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="height: 22px; width: 180px">Failure name/description</td>
            <td style="height: 22px; width: 6px">&nbsp;</td>
            <td style="height: 22px">
                <asp:TextBox runat="server" ID="case_description" CssClass="form-control" TextMode="MultiLine" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="height: 22px; width: 180px">Product name</td>
            <td style="height: 22px; width: 6px">&nbsp;</td>
            <td style="height: 22px">
                <asp:TextBox runat="server" ID="case_productName" CssClass="form-control" Width="656px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Background</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="case_background" CssClass="form-control" TextMode="MultiLine" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 21px;">Failed location</td>
            <td style="width: 6px; height: 21px;"></td>
            <td style="height: 21px">
                <asp:DropDownList ID="case_location" runat="server" CssClass="dropdown" style="left: 0px; top: 0px; height: 25px; width: 200px">
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
                <asp:TextBox runat="server" ID="case_firmwareVersion" CssClass="form-control" Width="656px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 24px;">Containment Action</td>
            <td style="width: 6px; height: 24px;"></td>
            <td style="height: 24px">
                <asp:TextBox runat="server" ID="case_containment" CssClass="form-control" TextMode="MultiLine" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Root Cause Analysis</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="case_FA" CssClass="form-control" TextMode="MultiLine" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Corrective Action</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="case_corrective" CssClass="form-control" TextMode="MultiLine" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 23px;">Preventive Action</td>
            <td style="width: 6px; height: 23px;"></td>
            <td style="height: 23px">
                <asp:TextBox runat="server" ID="case_preventive" CssClass="form-control" TextMode="MultiLine" Width="400px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">&nbsp;</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:Button ID="failure_buttonSave" runat="server" CssClass="btn btn-default" Text="Save" />
            &nbsp;
                <asp:Button ID="failure_buttonSubmit" runat="server" CssClass="btn btn-default" Text="Submit" />
            &nbsp;
                <asp:Button ID="failure_buttonCancel" runat="server" CssClass="btn btn-default" Text="Cancel" />
            </td>
        </tr>
    </table>
</asp:Content>
