<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RemoveJudoka.aspx.cs" Inherits="JudoShiaiWeb.Competition.RemoveJudoka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p></p>
    <div class="row">
        <div class="row col-md-5">
    <div class="panel panel-primary">
        <div class="panel-heading">
            Ta bort judoka ifrån tävling
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-2 text-right">Tävling: </div>
                <div class="col-md-10">
                    <asp:Label ID="lblCompetition" runat="server" Text=""></asp:Label>

                </div>
            </div>
            <div class="row">
                <div class="col-md-2 text-right">judoka: </div>
                <div class="col-md-10">
                    <asp:Label ID="lblJudoka" runat="server" Text=""></asp:Label>

                </div>
            </div>
            <div class="row">
                <div class="col-md-2 text-right">Klubb: </div>
                <div class="col-md-10">
                    <asp:Label ID="lblClub" runat="server" Text=""></asp:Label>

                </div>
            </div>
            <div class="row">
                <div class="col-md-2">
                    <asp:Button class="btn btn-primary col-md-12" ID="Button1" runat="server" Text="Ja" OnClick="Button1_Click" /></div>
                <div class="col-md-2">
                    <asp:Button class="btn btn-default col-md-12" ID="Button2" runat="server" Text="Nej" OnClick="Button2_Click" /></div>
            </div>
        </div>
    </div>
        </div>
        </div>


</asp:Content>
