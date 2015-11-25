<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WeighJudoka.aspx.cs" Inherits="JudoShiaiWeb.Competition.WeighJudoka" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p></p>
    <div class="row">
        <div class="row col-md-5">
    <div class="panel panel-primary">
        <div class="panel-heading">
            Invägning av judoka till tävling
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
                <div class="col-md-2 text-right">Vikt: </div>
                <div class="col-md-10">
                    <asp:TextBox ID="txtWeight" runat="server" CssClass="form-control input-sm"></asp:TextBox>

                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                    <asp:Button class="btn btn-primary btn-sm" ID="Button1" runat="server" Text="Spara" OnClick="Button1_Click" /></div>
                <div class="col-md-3">
                    <asp:Button class="btn btn-default btn-sm" ID="Button2" runat="server" Text="Avbryt" OnClick="Button2_Click" /></div>
            </div>
        </div>
    </div>
        </div>
        </div>
</asp:Content>
