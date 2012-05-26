<%@ Page Title="" Language="C#" MasterPageFile="~/Fakturaadress.master" AutoEventWireup="true" CodeFile="AddData.aspx.cs" Inherits="AddData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        <asp:Label ID="Label1" runat="server" Text="ANGE ORGANISATIONSNUMMER" 
            Font-Bold="True"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Height="27px" 
            Text="Sök" />
        <br />
        <asp:Panel ID="Panel2" runat="server">
            <asp:Label ID="Label2" runat="server" Text="Grunduppgifter"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Height="64px" ReadOnly="True" 
                TextMode="MultiLine" Width="386px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                Text="Ange fakturaadress"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            <br />
            <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Postnummer"></asp:Label>
            <br />
            <asp:TextBox ID="tbPostal" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Ort"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" 
                Text="Krävs särskild fakturareferens?" />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
        </asp:Panel>
        <br />
        <br />
        <br />
    </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="INSERT INTO address(id, reference, address, postal, town, invoice_reference, invoice_address, invoice_postal, invoice_town, enforce_reference, enforce_address, enforce_postal, enforce_town) VALUES (@orgnr, @reference, @address, @postal, @town, @invoice_reference, @invoice_address, @invoice_postal, @invoice_town, @enforce_reference, @enforce_address, @enforce_postal, @enforce_town);" 
        SelectCommand="SELECT * FROM address">
        <InsertParameters>
            <asp:Parameter Name="orgnr" />
            <asp:Parameter Name="reference" />
            <asp:Parameter Name="address" />
            <asp:Parameter Name="postal" />
            <asp:Parameter Name="town" />
            <asp:Parameter Name="invoice_reference" />
            <asp:Parameter Name="invoice_address" />
            <asp:Parameter Name="invoice_postal" />
            <asp:Parameter Name="invoice_town" />
            <asp:Parameter Name="enforce_reference" />
            <asp:Parameter Name="enforce_address" />
            <asp:Parameter Name="enforce_postal" />
            <asp:Parameter Name="enforce_town" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>
