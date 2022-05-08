<%@ Page Title="DVD Inventory" Language="C#" MasterPageFile="~/Coursework2.Master" AutoEventWireup="true" CodeBehind="Browse_DVD.aspx.cs" Inherits="CW2_AD.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding-top: 10px;">
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Actor_name" runat="server" AutoCompleteType="Enabled"></asp:TextBox>
            <asp:Button ID="Search_by_lastactor" runat="server" Text="Search by Last name" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="0">All</asp:ListItem>
                <asp:ListItem Value="1">Copies available</asp:ListItem>
                <asp:ListItem Value="2">No copies available</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Status" runat="server" Text="Search by availability" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </div>
</asp:Content>
