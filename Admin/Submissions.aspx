<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Submissions.aspx.cs" Inherits="Admin_Submissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" Runat="Server">
    <h1>Inkomna uppgifter</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="id" DataSourceID="SqlDataSource1" 
        onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="Referens" SortExpression="name" />
            <asp:BoundField DataField="address" HeaderText="Address" 
                SortExpression="address" />
            <asp:BoundField DataField="postal" HeaderText="Postnummer" 
                SortExpression="postal" />
            <asp:BoundField DataField="town" HeaderText="Stad" SortExpression="town" />
            <asp:BoundField DataField="invoice_reference" HeaderText="Fak. Ref." 
                SortExpression="invoice_reference" />
            <asp:BoundField DataField="invoice_address" HeaderText="Fak. Address" 
                SortExpression="invoice_address" />
            <asp:BoundField DataField="invoice_postal" HeaderText="Fakt. postnr" 
                SortExpression="invoice_postal" />
            <asp:BoundField DataField="invoice_town" HeaderText="Fakt. stad" 
                SortExpression="invoice_town" />
            <asp:BoundField DataField="enforce_reference" HeaderText="Kravref." 
                SortExpression="enforce_reference" />
            <asp:BoundField DataField="enforce_address" HeaderText="Kravaddr." 
                SortExpression="enforce_address" />
            <asp:BoundField DataField="enforce_postal" HeaderText="Kravpostnr" 
                SortExpression="enforce_postal" />
            <asp:BoundField DataField="enforce_town" HeaderText="Krav. stad" 
                SortExpression="enforce_town" />
            <asp:ButtonField CommandName="ShowAttachment" HeaderText="Bilaga" 
                Text="Bilaga" />
            <asp:ButtonField ButtonType="Button" CommandName="Approve" HeaderText="Godkänn" 
                Text="Godkänn" />
            <asp:ButtonField ButtonType="Button" CommandName="Reject" HeaderText="Avböj" 
                Text="Avböj" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [address] WHERE [id] = @id" 
        InsertCommand="INSERT INTO [address] ([name], [address], [postal], [town], [invoice_reference], [invoice_address], [invoice_postal], [invoice_town], [enforce_reference], [enforce_address], [enforce_postal], [enforce_town], [time], [attachment]) VALUES (@name, @address, @postal, @town, @invoice_reference, @invoice_address, @invoice_postal, @invoice_town, @enforce_reference, @enforce_address, @enforce_postal, @enforce_town, @time, @attachment)" 
        SelectCommand="SELECT * FROM [address] ORDER BY [time] DESC, [name]" 
        UpdateCommand="UPDATE [address] SET [name] = @name, [address] = @address, [postal] = @postal, [town] = @town, [invoice_reference] = @invoice_reference, [invoice_address] = @invoice_address, [invoice_postal] = @invoice_postal, [invoice_town] = @invoice_town, [enforce_reference] = @enforce_reference, [enforce_address] = @enforce_address, [enforce_postal] = @enforce_postal, [enforce_town] = @enforce_town, [time] = @time, [attachment] = @attachment WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="postal" Type="String" />
            <asp:Parameter Name="town" Type="String" />
            <asp:Parameter Name="invoice_reference" Type="String" />
            <asp:Parameter Name="invoice_address" Type="String" />
            <asp:Parameter Name="invoice_postal" Type="String" />
            <asp:Parameter Name="invoice_town" Type="String" />
            <asp:Parameter Name="enforce_reference" Type="String" />
            <asp:Parameter Name="enforce_address" Type="String" />
            <asp:Parameter Name="enforce_postal" Type="String" />
            <asp:Parameter Name="enforce_town" Type="String" />
            <asp:Parameter Name="time" Type="DateTime" />
            <asp:Parameter Name="attachment" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="postal" Type="String" />
            <asp:Parameter Name="town" Type="String" />
            <asp:Parameter Name="invoice_reference" Type="String" />
            <asp:Parameter Name="invoice_address" Type="String" />
            <asp:Parameter Name="invoice_postal" Type="String" />
            <asp:Parameter Name="invoice_town" Type="String" />
            <asp:Parameter Name="enforce_reference" Type="String" />
            <asp:Parameter Name="enforce_address" Type="String" />
            <asp:Parameter Name="enforce_postal" Type="String" />
            <asp:Parameter Name="enforce_town" Type="String" />
            <asp:Parameter Name="time" Type="DateTime" />
            <asp:Parameter Name="attachment" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

