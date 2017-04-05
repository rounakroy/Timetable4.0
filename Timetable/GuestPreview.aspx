<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuestPreview.aspx.cs" Inherits="Timetable.UserPreview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" BorderStyle="None" />
        <Columns>
            <asp:BoundField DataField="day" HeaderText="day" SortExpression="day" />
            <asp:BoundField DataField="section" HeaderText="section" SortExpression="section" />
            <asp:BoundField DataField="room1" HeaderText="room1" SortExpression="room1" />
            <asp:BoundField DataField="8-9" HeaderText="8-9" SortExpression="8-9" />
            <asp:BoundField DataField="9-10" HeaderText="9-10" SortExpression="9-10" />
            <asp:BoundField DataField="10-11" HeaderText="10-11" SortExpression="10-11" />
            <asp:BoundField DataField="room2" HeaderText="room2" SortExpression="room2" />
            <asp:BoundField DataField="11-12" HeaderText="11-12" SortExpression="11-12" />
            <asp:BoundField DataField="12-1" HeaderText="12-1" SortExpression="12-1" />
            <asp:BoundField DataField="1-2" HeaderText="1-2" SortExpression="1-2" />
            <asp:BoundField DataField="room3" HeaderText="room3" SortExpression="room3" />
            <asp:BoundField DataField="2-3" HeaderText="2-3" SortExpression="2-3" />
            <asp:BoundField DataField="3-4" HeaderText="3-4" SortExpression="3-4" />
            <asp:BoundField DataField="4-5" HeaderText="4-5" SortExpression="4-5" />
            <asp:BoundField DataField="5-6" HeaderText="5-6" SortExpression="5-6" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" BorderStyle="Solid" />
        <EmptyDataRowStyle BorderStyle="Solid" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Justify" />
        <SelectedRowStyle BackColor="#C5BBAF" BorderStyle="Dashed" BorderWidth="3px" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TT]"></asp:SqlDataSource>
</asp:Content>
