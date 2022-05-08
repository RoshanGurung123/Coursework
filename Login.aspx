<%@ Page Title="Login" Language="C#" MasterPageFile="~/Coursework2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CW2_AD.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login">
        <div>
            <center><u><asp:Label ID="log" runat="server" Font-Size="X-Large" Text="User Login"></asp:Label></u></center>  
            <br />
            <br />
            Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Email_login" runat="server" placeholder="email"></asp:TextBox>
            <br />
            <br />
            Password:<asp:TextBox ID="Password_login" runat="server" placeholder="password"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_login" runat="server" Text="Login" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_signup" runat="server" Text="Sign Up" OnClick="btn_signup_Click" />
            <br />
        </div>
    </div>
</asp:Content>
