 <%@ Page Title="" Language="C#" MasterPageFile="~/Fakturaadress.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [name], [id] FROM [ticket_type]"></asp:SqlDataSource>

            
     <br />
    Vänligen notera att ditt IP-nummer kommer att loggas när du skickar ett 
    supportärende. Detta är för att kunna ge dig den bästa servicen.<br />
    <br />

            
     Din Epost*<asp:RequiredFieldValidator 
        ID="RequiredFieldValidator1" runat="server" ControlToValidate="emailTextBox" 
        CssClass="error" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="emailTextBox" CssClass="error" 
        ErrorMessage="RegularExpressionValidator" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Detta fält måste fyllas i</asp:RegularExpressionValidator>
    <br />
    <asp:TextBox ID="emailTextBox" runat="server"  Text=""
        Width="541px" /><br />
        Rubrik*:<asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
        runat="server" ControlToValidate="summaryTextBox" 
        ErrorMessage="RequiredFieldValidator">Detta fält måste fyllas i</asp:RequiredFieldValidator>
    <br />
        <asp:TextBox ID="summaryTextBox" runat="server"  Text="" 
        Width="541px" />
    <br />
    
        <br />
    
        Kommentar :<asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
        runat="server" ControlToValidate="commentsTextBox" 
        ErrorMessage="RequiredFieldValidator">Detta fält måste fyllas i</asp:RequiredFieldValidator>
    <br />
    &nbsp;<asp:TextBox ID="commentsTextBox" runat="server" Height="215px" 
        Text="" TextMode="MultiLine" Width="816px" />
    <br />
         
    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
        Text="Skicka" Height="26px" onclick="InsertButton_Click" />
    &nbsp;
        
</asp:Content>

