<%@ Page Title="FACase" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FACase.aspx.cs" Inherits="Parinya_MasterProject.Main_Function.FACase" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp;</h2>
    <table class="nav-justified">
        <tr>
            <td class="text-right" style="height: 22px; width: 180px">&nbsp;</td>
            <td style="height: 22px; width: 6px">&nbsp;</td>
            <td style="height: 22px; font-size: x-large;">
                Create new FA:</td>
        </tr>
        <tr>
            <td class="text-right" style="height: 22px; width: 180px">Product name</td>
            <td style="height: 22px; width: 6px">&nbsp;</td>
            <td style="height: 22px">
                <asp:TextBox runat="server" ID="case_productName" CssClass="form-control" Width="656px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="height: 22px; width: 180px">Failure name<br />
                (description)</td>
            <td style="height: 22px; width: 6px"></td>
            <td style="height: 22px">
                <asp:TextBox runat="server" ID="case_description" CssClass="form-control" Width="656px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Firmware version</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="case_firmwareVersion" CssClass="form-control" Width="656px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 21px;">Failed location</td>
            <td style="width: 6px; height: 21px;"></td>
            <td style="height: 21px">
                <asp:DropDownList ID="case_location" runat="server" CssClass="form-control" style="left: 0px; top: 0px; height: 25px; width: 200px">
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
            <td class="text-right" style="width: 180px">Background<br />
                (symptom)</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="case_background" CssClass="form-control" TextMode="MultiLine" Width="400px" Height="100px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 24px;">Containment action</td>
            <td style="width: 6px; height: 24px;"></td>
            <td style="height: 24px">
                <asp:TextBox runat="server" ID="case_containment" CssClass="form-control" TextMode="MultiLine" Width="400px" Height="60px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Root cause analysis</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="case_FA" CssClass="form-control" TextMode="MultiLine" Width="400px" Height="200px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 22px;">Corrective action</td>
            <td style="width: 6px; height: 22px;"></td>
            <td style="height: 22px">
                <asp:TextBox runat="server" ID="case_corrective" CssClass="form-control" TextMode="MultiLine" Width="400px" Height="60px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">preventive action</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="case_preventive" CssClass="form-control" TextMode="MultiLine" Width="400px" Height="60px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px">Reference case</td>
            <td style="width: 6px">&nbsp;</td>
            <td>
                <asp:TextBox runat="server" ID="case_reference" CssClass="form-control" Width="656px" />
            </td>
        </tr>
        <tr>
            <td class="text-right" style="width: 180px; height: 38px;"></td>
            <td style="width: 6px; height: 38px;"></td>
            <td style="height: 38px">
                <asp:Button ID="case_buttonSave" runat="server" CssClass="btn btn-default" Text="save" OnClick="case_buttonSave_Click" Width="150px" />
            &nbsp;
                <asp:Button ID="case_buttonSubmit" runat="server" CssClass="btn btn-default" Text="submit" OnClick="case_buttonSubmit_Click" Width="150px" />
            &nbsp;
                <asp:Button ID="case_buttonCancel" runat="server" CssClass="btn btn-default" Text="cancel" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>
