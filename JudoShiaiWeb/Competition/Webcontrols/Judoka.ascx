<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Judoka.ascx.cs" Inherits="JudoShiaiWeb.Competition.Webcontrols.Judoka" %>
        <div class="row">
            <div class="form-group col-sm-3">
                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
            </div>
            <div class="form-group col-sm-3">
                <asp:Label ID="Label2" runat="server" Text="Klubb"></asp:Label>
            </div>
        </div>
        <div class="row">
            <div class="form-group col-sm-3">
                <asp:TextBox ID="txtId" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>   
            </div>
            <div class="form-group col-sm-3">
                <asp:DropDownList ID="ddlClubb" class="form-control" runat="server" DataTextField="name" DataValueField="id"></asp:DropDownList>   
            </div>
        </div>
        <div class="row">
            <div class="form-group col-sm-3">
                <asp:Label ID="Label3" runat="server" Text="Efternamn"></asp:Label>  
            </div>
            <div class="form-group col-sm-3">
                <asp:Label ID="Label4" runat="server" Text="Förnamn"></asp:Label>   
            </div>
        </div>  
        <div class="row">
            <div class="form-group col-sm-3">
                <asp:TextBox ID="txtLast" class="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>   
            </div>
            <div class="form-group col-sm-3">
                <asp:TextBox ID="txtName" class="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox> 
            </div>
        </div>  
        <div class="row">
            <div class="form-group col-sm-3">
                <asp:Label ID="Label5" runat="server" Text="Man/Kvinna"></asp:Label>   
            </div>
            <div class="form-group col-sm-3">
                <asp:Label ID="Label6" runat="server" Text="Födelseår"></asp:Label>  
            </div>
        </div>  
        <div class="row">
            <div class="form-group col-sm-3">
                <asp:DropDownList ID="ddlSex" runat="server" class="form-control" DataTextField="name" DataValueField="id">
                    <asp:ListItem Value="k">Kvinna</asp:ListItem>
                    <asp:ListItem Value="m" Selected="True">Man</asp:ListItem>
                </asp:DropDownList>  
            </div>
            <div class="form-group col-sm-3">
                <asp:TextBox ID="txtBirthYear" class="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>  
            </div>
        </div>  
        <div class="row">
            <div class="form-group col-sm-3">
                <asp:Label ID="Label7" runat="server" Text="ID Idrottonline"></asp:Label> 
            </div>
            <div class="form-group col-sm-3">
                <asp:Label ID="Label8" runat="server" Text="Personnummer"></asp:Label>  
            </div>
        </div>  
        <div class="row">
            <div class="form-group col-sm-3">
                <asp:TextBox ID="txtIdrottsId" class="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>    
            </div>
            <div class="form-group col-sm-3">
                <asp:TextBox ID="txtPnr" class="form-control" runat="server" AutoCompleteType="Disabled"></asp:TextBox>  
            </div>
        </div>
        <div class="row">
            <div class="form-group col-sm-3">
                <div class="col-sm-6">
                    <asp:Button class="btn btn-primary col-sm-12" ID="Button1" runat="server" Text="Spara" OnClick="Button1_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Button class="btn btn-default col-sm-12" ID="Button2" runat="server" Text="Avbryt" OnClick="Button2_Click" />
                </div>
            </div>
        </div>
