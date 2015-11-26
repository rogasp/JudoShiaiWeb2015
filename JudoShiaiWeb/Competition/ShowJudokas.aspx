<%@ Page Title="Deltagare" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowJudokas.aspx.cs" Inherits="JudoShiaiWeb.Competition.ShowJudokas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %><asp:Label ID="lblAntal" runat="server" Text=""></asp:Label></h2>
    <p>
        <div class="btn-group btn-group-xs" role="group" aria-label="..."><asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server">Välj tävlande</asp:LinkButton>
    &nbsp;<asp:LinkButton class="btn btn-primary" ID="LinkButton2" runat="server" PostBackUrl="~/Competition/List">Tillbaka</asp:LinkButton></div>
    </p>
    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="729px" OnRowDataBound="GridView1_RowDataBound">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" />
            <asp:BoundField DataField="last" HeaderText="Efternamn" />
            <asp:BoundField DataField="name" HeaderText="Förnamn" />
            <asp:BoundField DataField="birthyear" HeaderText="Född" >
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:BoundField DataField="clubbName" HeaderText="Klubb" />
            <asp:BoundField DataField="beltName" HeaderText="Bälte" />
            <asp:TemplateField HeaderText="Vikt">
                <ItemTemplate>
                    <asp:Label ID="lblVikt" runat="server"></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Right" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <div class="btn-group btn-group-xs" role="group" aria-label="...">
                    <asp:HyperLink class="btn btn-primary" ID="HyperLink1" runat="server" NavigateUrl="~/" Text="Väg-in"></asp:HyperLink>
                    <asp:HyperLink class="btn btn-primary" ID="HyperLink2" runat="server" NavigateUrl="~/" Text="Ta bort"></asp:HyperLink>
                    <asp:HyperLink class="btn btn-success" ID="HyperLink3" runat="server" NavigateUrl="~/" Text="Dubbla"></asp:HyperLink>
                    </div>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
         </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        </p>
    </asp:Content>
