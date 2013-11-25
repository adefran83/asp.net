<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="BasicSelectors.aspx.cs" Inherits="Sample.Demos.BasicSelectors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <h1>Basic Selectors</h1>
    <div class="SampleClass">I am a div.</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpClientScript" runat="server">
    <script type="text/javascript">
        $(function()
        {
            $('*').css('border-bottom','2px solid red');
            $('h1').bind('click',function(){alert('hello world')});
            $('.SampleClass').addClass('PleaseWait').hide(5000);
            $('footer,header').slideUp('slow').slideDown('slow');
            $('#Sidebar img').fadeTo(5000,.1);
        });
    </script>
</asp:Content>
