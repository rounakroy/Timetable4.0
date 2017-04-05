<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TeacherDetails.aspx.cs" Inherits="Timetable.SavePage.TeacherDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
            Teacher Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="teacherid" runat="server"></asp:TextBox>
        </p>
        <p>
            Teacher Name:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox ID="teachername" runat="server"></asp:TextBox>
        </p>
        E-Mail Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <p>
            Contact:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="contact" runat="server"></asp:TextBox>
        </p>
<asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="saves" runat="server" OnClick="saves_Click" Text="Save" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" NavigateUrl="~/SavePage/TeacherPreference.aspx">Completed</asp:HyperLink>
        <p>
            <asp:Label ID="update" runat="server"></asp:Label>
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="teacherid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="teacherid" HeaderText="teacherid" ReadOnly="True" SortExpression="teacherid" />
                <asp:BoundField DataField="teachername" HeaderText="teachername" SortExpression="teachername" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Teacherdeatils(teacherid, teachername, email, contact) VALUES (@tid, @tname, @tmail, @tcon)" SelectCommand="SELECT * FROM [Teacherdeatils]">
            <InsertParameters>
                <asp:ControlParameter ControlID="teacherid" Name="tid" PropertyName="Text" />
                <asp:ControlParameter ControlID="teachername" Name="tname" PropertyName="Text" />
                <asp:ControlParameter ControlID="email" Name="tmail" PropertyName="Text" />
                <asp:ControlParameter ControlID="contact" Name="tcon" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
        
</asp:Content>
