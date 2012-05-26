<%@ Control Language="C#" AutoEventWireup="true"   CodeFile="Address.ascx.cs" Inherits="Address" %>
<div>Företagsnamn:<br />
<asp:TextBox ID="tbName" runat="server"></asp:TextBox><br />
Address<br />
<asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
<br />
Postnummer<br />
<asp:TextBox ID="tbPostal" runat="server"></asp:TextBox>
<br />
Ort<br />
<asp:TextBox ID="tbTown" runat="server"></asp:TextBox>


<br />


<asp:CheckBox ID="cbSpecialReferences" runat="server" 
    oncheckedchanged="cbSpecialReferences_CheckedChanged" 
    Text="Krävs särskild fakturareferens?" /> <br />
<asp:FileUpload ID="fuReference" runat="server" />
</div>