<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="preview.aspx.cs" Inherits="Timetable.SavePage.preview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="section" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="day" HeaderText="day" SortExpression="day" />
            <asp:BoundField DataField="section" HeaderText="section" ReadOnly="True" SortExpression="section" />
            <asp:TemplateField HeaderText="room1" SortExpression="room1">
                <EditItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="classroom" DataValueField="classroom" SelectedValue='<%# Bind("room1") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [classroom], [lab] FROM [Room]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("room1") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [TT] WHERE [section] = @section" InsertCommand="INSERT INTO [TT] ([day], [section], [room1], [8-9], [9-10], [10-11], [room2], [11-12], [12-1], [1-2], [room3], [2-3], [3-4], [4-5], [5-6]) VALUES (@day, @section, @room1, @column1, @column2, @column3, @room2, @column4, @column5, @column6, @room3, @column7, @column8, @column9, @column10)" SelectCommand="SELECT * FROM [TT]" UpdateCommand="UPDATE [TT] SET [day] = @day, [room1] = @room1, [8-9] = @column1, [9-10] = @column2, [10-11] = @column3, [room2] = @room2, [11-12] = @column4, [12-1] = @column5, [1-2] = @column6, [room3] = @room3, [2-3] = @column7, [3-4] = @column8, [4-5] = @column9, [5-6] = @column10 WHERE [section] = @section">
        <DeleteParameters>
            <asp:Parameter Name="section" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="day" Type="String" />
            <asp:Parameter Name="section" Type="String" />
            <asp:Parameter Name="room1" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="column2" Type="String" />
            <asp:Parameter Name="column3" Type="String" />
            <asp:Parameter Name="room2" Type="String" />
            <asp:Parameter Name="column4" Type="String" />
            <asp:Parameter Name="column5" Type="String" />
            <asp:Parameter Name="column6" Type="String" />
            <asp:Parameter Name="room3" Type="String" />
            <asp:Parameter Name="column7" Type="String" />
            <asp:Parameter Name="column8" Type="String" />
            <asp:Parameter Name="column9" Type="String" />
            <asp:Parameter Name="column10" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="day" Type="String" />
            <asp:Parameter Name="room1" Type="String" />
            <asp:Parameter Name="column1" Type="String" />
            <asp:Parameter Name="column2" Type="String" />
            <asp:Parameter Name="column3" Type="String" />
            <asp:Parameter Name="room2" Type="String" />
            <asp:Parameter Name="column4" Type="String" />
            <asp:Parameter Name="column5" Type="String" />
            <asp:Parameter Name="column6" Type="String" />
            <asp:Parameter Name="room3" Type="String" />
            <asp:Parameter Name="column7" Type="String" />
            <asp:Parameter Name="column8" Type="String" />
            <asp:Parameter Name="column9" Type="String" />
            <asp:Parameter Name="column10" Type="String" />
            <asp:Parameter Name="section" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
