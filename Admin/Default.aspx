<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" Runat="Server">
    <h3>Administration</h3>
<table>
    <tr>
        <td width="324px"><a href="Content.aspx">Text och design</a</td>
        <td> Låter dig ändra texter och design på startsidan</td>
    </tr>
     <tr>
        <td width="324px"><a href="Banners.aspx">Annonser</a></td>
        <td>Låter dig hantera annonser i systemet</td>
    </tr>
    
   
</table>

    <h1>

    <br />
    </h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>

