<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddJudoka2.aspx.cs" Inherits="JudoShiaiWeb.Competition.AddJudoka2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row col-sm-12">
        <h2 class="text-left bg-warning">Lägg till Judoka</h2>
    </div>
    <div class="row">
        <div class="form-group col-sm-3">
            <label for="litJudoka">Judoka:</label>
            <asp:Literal ID="litJudoka" runat="server"></asp:Literal>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-sm-3">
            <label for="ddlBelts">Bälte:</label>
            <asp:DropDownList ID="ddlBelts" runat="server" class="form-control" DataTextField="name" DataValueField="id"></asp:DropDownList>
        </div>
    </div>
    <div class="row">
        <div class="form-group col-sm-3">
            <label for="txtWeight">Vikt:</label>
            <asp:TextBox ID="txtWeight" runat="server" class="form-control" placeholder="Vikt"></asp:TextBox>
        </div>
    </div>
            <div class="row">
                <div class="col-md-2">
                    <asp:Button class="btn btn-primary col-md-12" ID="Button1" runat="server" Text="Ja" OnClick="Button1_Click" /></div>
                <div class="col-md-2">
                    <asp:Button class="btn btn-default col-md-12" ID="Button2" runat="server" Text="Nej" OnClick="Button2_Click" /></div>
            </div>
</asp:Content>
