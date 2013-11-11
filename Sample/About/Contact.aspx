<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Sample.About.Contact" %>
<%@ Register src="../Controls/ContactForm.ascx" tagname="ContactForm" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <uc1:ContactForm ID="ContactForm1" runat="server" />
</asp:Content>
