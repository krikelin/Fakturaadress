<%@ Page Title="" Language="C#" MasterPageFile="~/Fakturaadress.master" AutoEventWireup="true" CodeFile="NoMatch.aspx.cs" Inherits="NoMatch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
Det finns ingen information om den här kunden i fakturaadress.se.<br />
Vill du lägga till uppgifter?<br />
<asp:HyperLink runat="server" NavigateUrl="~/AddData.aspx" ID="Add">Lägg till uppgifter</asp:HyperLink>
</asp:Content>

