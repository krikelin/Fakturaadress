<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddBanner.aspx.cs" MasterPageFile="~/Admin.master" Inherits="Admin_AddBanner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent2" Runat="Server">
    <style type="text/css">
        .item
        {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent2" Runat="Server">
        <div>
        Lägg till Annons<br />
   
        
   
        <br />
   
        
   
        <table ID="Table1" Height="81px" Width="609px" 
            style="margin-right: 0px">
            <tr>
                <td>
                  <span class="tbAltText">Starttid</span>
                </td><td>
                 <asp:Calendar ID="StartTime" runat="server">
                 </asp:Calendar>
                </td></tr><tr>
                <td>
                  <span class="tbAltText">Starttid</span>
                </td>
                <td>
                    <asp:Calendar ID="EndTime" runat="server">
                    </asp:Calendar>
                </td>
             </tr>
            <tr ID="tr1" runat="server">
                <td>
                    <span>Namn</span>
                </td>
                <td>
                    <asp:TextBox ID="tbName" CssClass="item" runat=server />
                        
                  
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="tbName" CssClass="error" 
                        ErrorMessage="Ett namn måste skrivas in"></asp:RequiredFieldValidator>
                        
                  
                </td></tr><tr ID="tr2" runat="server">
                <td>
                    <span>Beskrivning</span>
                </td><td>
                    <asp:TextBox ID="tbText" CssClass="item" runat="server" Height="22px" 
                        ontextchanged="tbText_TextChanged" Width="128px" />
                        
                  
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="tbText" CssClass="error" 
                        ErrorMessage="En beskrivning måste anges"></asp:RequiredFieldValidator>
                        
                  
                </td></tr><tr ID="tr3" runat="server">
                <td>
                    <span >Bild</span>
                </td><td> 
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <asp:CustomValidator ID="imageValidator" runat="server" 
                        ControlToValidate="FileUpload1" ErrorMessage="Bilden är i fel format" 
                        onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="FileUpload1" CssClass="error" 
                        ErrorMessage="Fil måste väljas"></asp:RequiredFieldValidator>
                </td></tr><tr ID="tr4" runat="server">
                <td>
                    <span class="tbLink">Länk</span>
                </td><td> 
                    <asp:TextBox ID="tbLink" runat="server"/>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="tbLink" CssClass="error" ErrorMessage="Ogiltigt URL" 
                        ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </td></tr><tr ID="tr5" runat="server">
                <td>
                    <span class="tbLink">Nyckelord</span>
                </td><td> 
                    <asp:TextBox ID="tbKeywords" runat="server"/>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="tbKeywords" CssClass="error" 
                        ErrorMessage="Nyckelord måste fyllas i"></asp:RequiredFieldValidator>
                </td></tr><tr ID="tr6" runat="server">
                <td>
                    <span class="tbAltText">Alternativ text</span>
                </td><td> 
                    <asp:TextBox ID="tbAltText" runat="server"/>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="tbAltText" CssClass="error" 
                        ErrorMessage="Alternativ text måste anges"></asp:RequiredFieldValidator>
                </td></tr>
                <tr ID="tr6" >
                <td>
                    Frekvens*</td><td> 
                        <asp:TextBox ID="tbFrequence" runat="server"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                            ControlToValidate="tbFrequence" CssClass="error" 
                            ErrorMessage="Frekvensen måste vara ett nummer mellan 0-100" 
                            SetFocusOnError="True" ValidationExpression="[1-9][0-9]"></asp:RegularExpressionValidator>
                </td></tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Lägg till" 
                            oncommand="Button1_Command" onclick="Button1_Click1" 
                            PostBackUrl="~/Admin/AddBanner.aspx" style="height: 26px" />
                    
                    </td>
               </tr>
            </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
</asp:Content>