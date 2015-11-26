<%@ Page Title="Tävlingar" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="JudoShiaiWeb.Competition.List" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server">Ny tävling</asp:LinkButton>
    </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="800px" OnRowDataBound="GridView1_RowDataBound">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Width="50px" HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="clubbName" HeaderText="Klubb">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Left" Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="Tävling">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="place" HeaderText="Plats">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="tatamis" HeaderText="Mattor">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Width="50px" HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="date" DataFormatString="{0:d}" HeaderText="Datum">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="numcompetitors" HeaderText="Anmälda">
                <HeaderStyle HorizontalAlign="Center" Width="50px" />
                <ItemStyle HorizontalAlign="Right" Width="50px" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Max tävlande">
                    <ItemTemplate>
                        <asp:Label ID="lblNumComp" runat="server"></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle HorizontalAlign="Center" />
                    <ItemStyle HorizontalAlign="Right" Width="50px" />
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div class="btn-group btn-group-xs" role="group" aria-label="...">
                            <asp:HyperLink class="btn btn-primary" ID="HyperLink1" runat="server" NavigateUrl="~/" Text="Välj"></asp:HyperLink>
                        </div>
                    </ItemTemplate>
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
    </asp:Content>
