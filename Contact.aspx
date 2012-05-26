 <%@ Page Title="" Language="C#" MasterPageFile="~/Fakturaadress.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>
<%@ Register TagPrefix="ic" TagName="Address" 
    Src="~/Controls/Address.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">

<script type="text/javascript">
   
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    §<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [name], [id] FROM [ticket_type]"></asp:SqlDataSource>
    
            
     <br />
    Vänligen notera att ditt IP-nummer kommer att loggas när du skickar ett 
    supportärende. Detta är för att kunna ge dig den bästa servicen.<br />
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Value="1">Anmäl ny fakturaadress</asp:ListItem>
        <asp:ListItem Value="2">Ändra våra uppgifter</asp:ListItem>
        <asp:ListItem Value="3">Annat ärende</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Panel ID="pChange" runat="server" Visible="False">
        <asp:Label ID="Label1" runat="server" Text="Organisationsnummer" 
            Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Height="27px" onclick="Button2_Click" 
            Text="Sök" />
        <br />
        <asp:Panel ID="pAdd" runat="server" Visible="False">
            <asp:Label ID="Label2" runat="server" Text="Grunduppgifter"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="tbStaticAddress" runat="server" Height="64px" ReadOnly="True" 
                TextMode="MultiLine" Width="386px"></asp:TextBox>
            <ic:Address ID="aAddress" runat="server" />
            
            <br />
            
            <br />
        </asp:Panel>
        <asp:Panel ID="pModify" runat="server" Visible="False">
            
            Grunduppgifter<br />
            
            <asp:TextBox ID="tbBasic" runat="server" Height="64px" ReadOnly="True" 
                TextMode="MultiLine" Width="386px"></asp:TextBox>

            <br />

            <br />
            Fakturaadress<br />
            <asp:TextBox ID="tbInvoiceAddress" runat="server" Height="64px" ReadOnly="True" 
                TextMode="MultiLine" Width="386px"></asp:TextBox>
            <br />
            Fakturareferens krav:
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="btnChangeInvoice" runat="server" 
                onclick="btnChangeInvoice_Click" Text="Ändra" />
            <asp:Panel ID="pChangeInvoice" runat="server" Wrap="False">
                <asp:Label ID="Label12" runat="server" Text="Ändra fakturaadress" 
                    Font-Bold="True"></asp:Label>
                <ic:Address ID="cInvoice" runat="server" Visible="False" />
            </asp:Panel>
            Kravaddress<br />
            <asp:TextBox ID="tbRequirement" runat="server" Height="98px" ReadOnly="True" 
                TextMode="MultiLine" Width="377px"></asp:TextBox>
            <br />
            Referens krav:
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:Button ID="btnChangeRequirement" runat="server" 
                onclick="btnChangeRequirement_Click" Text="Ändra" Height="26px" 
                Width="50px" />
            <br />
            <asp:Panel ID="pChangeRequirement" runat="server">
                <asp:Label ID="Label11" runat="server" Text="Ändra kravreferens" 
                    Font-Bold="True"></asp:Label>
                <ic:Address ID="cRequirement" runat="server" Visible="False" />
            </asp:Panel>
            <br />
            <br />

         </asp:Panel>
        <br />
        <br />
        <br />
    </asp:Panel>
    <br />

            
     <br />
    <br />
    <br />
        Rubrik*:<br />
        <asp:TextBox ID="summaryTextBox" runat="server"  Text="" 
        Width="309px" />
    <br />
    
        <br />
    
        Kommentar :<br />
    &nbsp;<asp:TextBox ID="commentsTextBox" runat="server" Height="215px" 
        Text="" TextMode="MultiLine" Width="315px" />
    <br />
    <br />
    Ditt namn<br />
    <asp:TextBox ID="TextBox6" runat="server" Width="325px"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="E-post"></asp:Label>
    <br />
    <asp:TextBox ID="emailTextBox" runat="server"  Text=""
        Width="322px" />
    <br />
    <asp:Label ID="Label8" runat="server" Text="Ditt telefonnummer"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox7" runat="server" Width="322px"></asp:TextBox>
    <br />
         
    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" 
        Text="Skicka" Height="26px" onclick="InsertButton_Click" />
    &nbsp;
        
</asp:Content>

