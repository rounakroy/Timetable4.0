<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Timetable.Account.Login" %>
<%-- <asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content> --%>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" Font-Bold="True" Font-Size="Medium" LoginButtonText="Log in" TitleText="Log in"></asp:Login>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT userid, password, email FROM Admin WHERE (userid = @uid) AND (password = @pass)">
        <SelectParameters>
            <asp:Parameter Name="uid" />
            <asp:Parameter Name="pass" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
