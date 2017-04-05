<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Timetable.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LinkButton ID="newtt" runat="server"  PostBackUrl="~/SavePage/subjectdetails.aspx" Text="Make New Timetable" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF6600"></asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="edit" runat="server"  PostBackUrl="~/SavePage/preview.aspx" Text="Edit Timetable" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF6600"></asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="view" runat="server"  PostBackUrl="~/AdminPreview.aspx" Text="View Timetable" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" ForeColor="#FF6600"></asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
</asp:Content>
