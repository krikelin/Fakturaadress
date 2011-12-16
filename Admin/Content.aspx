<%@ Page ValidateRequest="false" Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Content.aspx.cs" Inherits="Admin_Content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" Runat="Server">
    <h2>Ändra texter</h2>

    <asp:Label ID="lNotifySaved" runat="server" 
    Text="Inställningarna har sparats" Visible="False"></asp:Label>
    <script type="text/javascript" language="javascript">
         $(function () {
             $("#tabs").tabs();
         });
    </script>
    <div id="tabs" >
        <ul>
            <li><a href="#tabs-1">Kolumner</a></li>
            <li><a href="#tabs-2">Användaravtal</a></li>
            <li><a href="#tabs-3">Supportkonfiguration</a></li>
            <li><a href="#tabs-4">Annonsformat</a></li>
        </ul>
         <div id="tabs-4">
           <small>Annonsstorlek</small><br />
             Bredd<br />
             <asp:TextBox ID="BannerWidth" runat="server" CausesValidation="True" />
             <br />
             <asp:RangeValidator ID="RangeValidator1" runat="server" 
                 ErrorMessage="Bredden måste vara mellan 300 - 600" MaximumValue="600" 
                 MinimumValue="300" ControlToValidate="BannerWidth"></asp:RangeValidator>
             <br />
             <br />
             Höjd<br />
             <asp:TextBox ID="BannerHeight" runat="server" CausesValidation="True" />
             <br />
             <asp:RangeValidator ID="RangeValidator2" runat="server" 
                 ErrorMessage="Höjden måste vara mellan 300 - 600" MaximumValue="300" 
                 MinimumValue="50" ControlToValidate="BannerHeight"></asp:RangeValidator>
        </div>
        <div id="tabs-3">
           <small> E-postadress för supportärenden. Denna adress syns inte för användare utan används av det automatiska
            supportformuläret.</small><br />
             <asp:TextBox ID="SupportEmail" runat="server" />
        </div>
        <div id="tabs-2">
            <asp:TextBox Width="100%" Height="320" TextMode="MultiLine" ID="UserAgreementText" runat="server" />
        </div>
        <div id="tabs-1">
        
        
            <table width="100%" cellspacing="10">   
                <tr>
                    <td width="25%">
                        <asp:TextBox ID="LeftColumnText" TextMode="MultiLine" runat="server" Width="100%" Height="200" />

                    </td>
                     <td width="25%">
                        <asp:TextBox ID="MiddleColumnText" TextMode="MultiLine" runat="server" Width="100%" Height="200" />

                    </td>
                    <td width="25%">
                        <asp:TextBox ID="RightColumnText" TextMode="MultiLine" runat="server" Width="100%" Height="200" />

                    </td>

                </tr>
            </table>
        </div>
     </div>
    <br />
   
    <asp:Button ID="btnSave" runat="server" Text="Spara" 
    onclick="btnSave_Click" />
</asp:Content>

