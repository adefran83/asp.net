<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.ascx.cs" Inherits="Sample.Controls.ContactForm" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }

    .auto-style2 {
        height: 23px;
    }

    .auto-style3 {
        height: 26px;
    }
</style>
<script type="text/javascript">
    function validatePhoneNumbers(source, args) {
        var phoneHome = document.getElementById('<%= PhoneHome.ClientID %>');
        var phoneBusiness = document.getElementById('<%= PhoneBusiness.ClientID %>');

        if (phoneHome.valueOf != '' || phoneBusiness.valueOf != '') {
            args.IsValid = true;
        } else {
            args.IsValid = false;
        }
    }
</script>
<asp:UpdatePanel runat="server" ID="UpdatePanel1">
    <ContentTemplate>
        <div id="TableWrapper">
            <table class="auto-style1" runat="server" id="formTable">
                <tr>
                    <td colspan="3">
                        <h1 style="text-align: center">Contact Us</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Name</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="Name" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" CssClass=".ErrorMessage" EnableClientScript="False" ErrorMessage="Enter Your Name">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Email Address</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="EmailAddress" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailAddress" CssClass=".ErrorMessage" EnableClientScript="False" ErrorMessage="Enter a Valid E-Mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailAddress" CssClass=".ErrorMessage" EnableClientScript="False" ErrorMessage="Enter an Email Address">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Email Address</td>
                    <td>
                        <asp:TextBox ID="ConfirmEmailAddress" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmEmailAddress" CssClass=".ErrorMessage" EnableClientScript="False" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailAddress" ControlToValidate="ConfirmEmailAddress" CssClass=".ErrorMessage" EnableClientScript="False" ErrorMessage="The e-mail addresses don't match">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>Home Phone</td>
                    <td>
                        <asp:TextBox ID="PhoneHome" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" CssClass=".ErrorMessage" Display="Dynamic" EnableClientScript="False" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Business Phone</td>
                    <td>
                        <asp:TextBox ID="PhoneBusiness" runat="server" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Comments</td>
                    <td>
                        <asp:TextBox ID="Comments" runat="server" Height="65px" TextMode="MultiLine" Width="245px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Comments" CssClass=".ErrorMessage" EnableClientScript="False" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="SendButton" runat="server" Text="Send" OnClick="SendButton_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass=".ErrorMessage" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:Label CssClass=".Attention" ID="Message" runat="server" Text="Message Sent" Visible="false" />
        <p id="MessageSentPara" runat="server" visible="false">
            Thank you for your message. We'll get in touch with you if necessary.
        </p>
    </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
    <ProgressTemplate>
        <div class=".PleaseWait">
            Please Wait...
        </div>
    </ProgressTemplate>
</asp:UpdateProgress>
<script type="text/javascript">
    $(function () {
        if (Page_IsValid) {
            $('#TableWrapper').slideUp(3000);
        }
    });
    // code from step 5 goes here
    function pageLoad() {
        $('.Attention').animate({ width: '600px' }, 3000).animate({ width: '100px' }, 3000).fadeOut('slow');
    }
</script>