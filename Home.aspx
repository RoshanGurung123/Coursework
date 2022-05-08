<%@ Page Title="" Language="C#" MasterPageFile="~/Coursework2.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CW2_AD.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <center>
            <h1>Browse your favourite DVDs here.</h1>
            <br />
            <p style="font-size: 18px;">Welcome to the official Ropey's DVD website. Here you can browse and loan your favourite DVDs.</p>
        </center>
    </section>
            <asp:GridView class="table table-striped table-bordered" ID="DVDview" runat="server" AutoGenerateColumns="False" DataKeyNames="DVDNumber" DataSourceID="SqlDataSource2" Font-Size="Large" OnSelectedIndexChanged="DVDview_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="DVDNumber" HeaderText="DVDNumber" ReadOnly="True" SortExpression="DVDNumber" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="row">
                                            <div class="col-12">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("DVDTitle") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                Studio:<asp:Label ID="Label2" runat="server" Text='<%# Eval("StudioName") %>'></asp:Label>
                                                | Producer:<asp:Label ID="Label3" runat="server" Text='<%# Eval("ProducerName") %>'></asp:Label>
                                                | Category:<asp:Label ID="Label4" runat="server" Text='<%# Eval("CategoryDescription") %>'></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                Cast:
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                Date Released:<asp:Label ID="Label5" runat="server" Text='<%# Eval("DateReleased") %>'></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                Standard Charge: Rs <asp:Label ID="Label6" runat="server" Text='<%# Eval("StandardCharge") %>'></asp:Label> | Penalty Charge: Rs <asp:Label ID="Label7" runat="server" Text='<%# Eval("PenaltyCharge") %>'></asp:Label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                Total Copies available: 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("DVDCover") %>' Height="250px"/>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RopeyDVDsConnectionString %>" SelectCommand="  SELECT d.DVDNumber, d.DVDTitle,  c.CategoryDescription, s.StudioName, p.ProducerName, d.DateReleased, d.StandardCharge, d.PenaltyCharge, d.DVDCover FROM DVDTitle AS d INNER JOIN DVDCategory AS c ON c.CategoryNumber = d.CategoryNumber INNER JOIN Studio AS s ON s.StudioNumber = d.StudioNumber INNER JOIN Producer AS p ON p.ProducerNumber = d.ProducerNumber;"></asp:SqlDataSource>     
</asp:Content>
