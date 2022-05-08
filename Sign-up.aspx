<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/Coursework2.Master" AutoEventWireup="true" CodeBehind="Sign-up.aspx.cs" Inherits="CW2_AD.Sign_up" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="signup">
        <div>
            <center><u><asp:Label ID="register" runat="server" Font-Size="X-Large" Text="Sign-Up form"></asp:Label></u></center>  
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="username" placeholder="username" runat="server" TabIndex="1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RfvUsername" runat="server" ControlToValidate="username" ErrorMessage="Username cannot be empty." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Email" placeholder="email" runat="server" TabIndex="2"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RfvEmail" runat="server" ControlToValidate="Email" ErrorMessage="Email cannot be empty." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="REVemail" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="Password" placeholder="password" runat="server" TabIndex="3" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RfvPassword" runat="server" ControlToValidate="Password" ErrorMessage="Password cannot be empty." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="CPassword" placeholder="confirm password" runat="server" TabIndex="4" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="Rfvcpass" runat="server" ControlToValidate="CPassword" ErrorMessage="Password cannot be empty." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CVcpass" runat="server" ControlToCompare="Password" ControlToValidate="CPassword" Display="Dynamic" ErrorMessage="Password do not match." ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="D.O.B"></asp:Label>
            <asp:TextBox ID="DOB" placeholder="Date of Birth" runat="server" TabIndex="5" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RfvDOB" runat="server" ControlToValidate="DOB" ErrorMessage="DOB cannot be empty." ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
            <br />
            <div style="margin-left: 80px">
                <asp:Button ID="btn_login" runat="server" Text="Login" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Signupbtn" runat="server" Text="Sign Up" TabIndex="6" OnClick="Signupbtn_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RopeyDVDsConnectionString %>" SelectCommand="SELECT * FROM [User]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [User] WHERE [UserNumber] = @original_UserNumber AND [UserName] = @original_UserName AND (([UserType] = @original_UserType) OR ([UserType] IS NULL AND @original_UserType IS NULL)) AND [UserPassword] = @original_UserPassword AND [Email] = @original_Email AND [Date_of_Birth] = @original_Date_of_Birth" InsertCommand="INSERT INTO [User] ([UserName], [UserType], [UserPassword], [Email], [Date_of_Birth]) VALUES (@UserName, @UserType, @UserPassword, @Email, @Date_of_Birth)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [User] SET [UserName] = @UserName, [UserType] = @UserType, [UserPassword] = @UserPassword, [Email] = @Email, [Date_of_Birth] = @Date_of_Birth WHERE [UserNumber] = @original_UserNumber AND [UserName] = @original_UserName AND (([UserType] = @original_UserType) OR ([UserType] IS NULL AND @original_UserType IS NULL)) AND [UserPassword] = @original_UserPassword AND [Email] = @original_Email AND [Date_of_Birth] = @original_Date_of_Birth">
                    <DeleteParameters>
                        <asp:Parameter Name="original_UserNumber" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserType" Type="String" />
                        <asp:Parameter Name="original_UserPassword" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Date_of_Birth" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="UserType" Type="String" />
                        <asp:Parameter Name="UserPassword" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date_of_Birth" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="UserType" Type="String" />
                        <asp:Parameter Name="UserPassword" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date_of_Birth" />
                        <asp:Parameter Name="original_UserNumber" Type="String" />
                        <asp:Parameter Name="original_UserName" Type="String" />
                        <asp:Parameter Name="original_UserType" Type="String" />
                        <asp:Parameter Name="original_UserPassword" Type="String" />
                        <asp:Parameter Name="original_Email" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Date_of_Birth" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
