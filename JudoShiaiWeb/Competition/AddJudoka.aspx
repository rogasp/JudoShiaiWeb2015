﻿<%@ Page Title="Välj Judoka" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddJudoka.aspx.cs" Inherits="JudoShiaiWeb.Competition.AddJudoka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <p>
        <div class="btn-group btn-group-xs" role="group" aria-label="..."><asp:LinkButton class="btn btn-primary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Skapa ny Judoka</asp:LinkButton>
    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Competition/List" class="btn btn-primary">Tillbaka</asp:LinkButton></div>
    </p>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:TextBox ID="TextBox1" runat="server" Width="300px" OnTextChanged="TextBox1_TextChanged" placeholder="Sök sträng..." class="form-control" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="GridView1_RowDataBound" Width="688px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" />
                <asp:BoundField DataField="clubbName" HeaderText="Klubb" />
                <asp:BoundField DataField="last" HeaderText="Efternamn" />
                <asp:BoundField DataField="name" HeaderText="Förnamn" />
                <asp:BoundField DataField="birthyear" HeaderText="Född" />
                <asp:BoundField DataField="beltName" HeaderText="Bälte" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <div class="btn-group btn-group-xs" role="group" aria-label="...">
                            <asp:HyperLink class="btn btn-primary" ID="HyperLink1" runat="server" NavigateUrl="~/" Text="Välj"></asp:HyperLink>
                            <asp:HyperLink class="btn btn-primary" ID="HyperLink2" runat="server" NavigateUrl="~/" Text="Redigera"></asp:HyperLink>
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
            </ContentTemplate>
        </asp:UpdatePanel>
    </p>
</asp:Content>
