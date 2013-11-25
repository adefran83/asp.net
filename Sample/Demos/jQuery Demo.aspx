<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="jQuery Demo.aspx.cs" Inherits="Sample.Demos.jQuery_Demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <input id="button1" type="button" value="button" />
    <script type="text/javascript">
        $(document).ready(function () {
            $('#MainContent').css('background-color', 'green')
            $('#button1').click(function () {
                $('#MainContent').css('background-color', 'red')
                    .animate({ width: '100px', height: '800px' })
            });
        });
    </script>
</asp:Content>
