<%@ Page Title="Skapa ny Judoka" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewJudoka.aspx.cs" Inherits="JudoShiaiWeb.Competition.NewJudoka" %>
<%@ Register src="Webcontrols/Judoka.ascx" tagname="Judoka" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <uc1:Judoka ID="Judoka1" New="false" nId="0"  runat="server" />
</asp:Content>
