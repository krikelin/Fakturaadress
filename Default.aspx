<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Fakturaadress.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:Panel ID="MainPanel" runat="server">
        <table  width="100%" cellspacing="13" height="171px" >
            <tr>
                <td valign="top">
                    <span class="partheader"><asp:Label ID="LeftColumn" runat="server" /></span>
                </td>
                <td valign="top">
                    <span class="partheader"><asp:Label ID="MiddleColumn" runat="server" /></span>
                </td>                                                                                   
                <td valign="top">
                    <span class="partheader"><asp:Label ID="RightColumn" runat="server" /></span>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Result1" runat="server">
            <asp:Panel ID="GenericInfo" runat="server" Visible="False">
                <asp:Label CssClass="Category" runat="server" ID="Header1">
                Officiell adress</asp:Label>
                 <br />
                  <asp:Label runat="server" ID="OrgName"></asp:Label>
                <br />
                         
                       
                    <asp:Label runat="server" ID="OrgAdress"></asp:Label>
                <br />
                        
                          
                          
                            
                        <asp:Label runat="server" ID="ZipCode"></asp:Label>
                        <asp:Label runat="server" ID="Town"></asp:Label>
                            
                <br />
                         
                 
                           
                      
                    <asp:Label runat="server" ID="OrgNummer"></asp:Label>
                    <br />
                <br />
                     
                       
                        
                         
                    </asp:Panel>
                    <asp:Panel ID="InvoiceDetails" runat="server" >
                        
                    <asp:Label runat="server" CssClass="Category" ID="Label2">Fakturaadress</asp:Label>
                <br />
                        
                    <asp:Label runat="server" ID="InvoiceName"></asp:Label>
                <br />
                          
        
                    <asp:Label runat="server" ID="NeedReference"></asp:Label>
                <br />
                        
                    <asp:Label runat="server" ID="InvoiceMailAdress"></asp:Label>
                <br />
                        
                    <asp:Label runat="server" ID="InvoiceZip"></asp:Label>
                <br />
                        
                            
                    <asp:Label runat="server" ID="InvoiceCity"></asp:Label>
                <br />
                        <br />
                </asp:Panel>
                <asp:Panel ID="RequirementPanel" runat="server" >
                        
                    <asp:Label runat="server" CssClass="Category" ID="Label3">Särskild Kravadress</asp:Label>
                <br />
                        
                     
                    <asp:Label runat="server" ID="RequirementName"></asp:Label>
                <br />
                        
                    <asp:Label runat="server" ID="RequirementMailAdress"></asp:Label>
                <br />
                        
                         
                    <asp:Label runat="server" ID="RequirementCity"></asp:Label>
                <br />
                        
                          
                    <asp:Label runat="server" ID="RequirementReference"></asp:Label>
                    <br />
                <br />
            </asp:Panel>
        </asp:Panel>
</asp:Content>
