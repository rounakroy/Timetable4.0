<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SubjectDetails.aspx.cs" Inherits="Timetable.SavePage.SubjectDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
     <p>
            Branch:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="branch" runat="server"></asp:TextBox>
        </p>
        <p>
            Subject Code:&nbsp;&nbsp;
            <asp:TextBox ID="subjectcode" runat="server"></asp:TextBox>
        </p>
        Subject Name:&nbsp;
        <asp:TextBox ID="subjectname" runat="server"></asp:TextBox>
        <p>
            Semester:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="semester" runat="server"></asp:TextBox>
        </p>
&nbsp;<asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="saves" runat="server" OnClick="saves_Click" Text="Save" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" NavigateUrl="~/SavePage/TeacherDetails.aspx">Completed</asp:HyperLink>
&nbsp;<p>
            <asp:Label ID="update" runat="server"></asp:Label>
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="subjectcode" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="subjectcode" HeaderText="subjectcode" ReadOnly="True" SortExpression="subjectcode" />
                <asp:BoundField DataField="subjectname" HeaderText="subjectname" SortExpression="subjectname" />
                <asp:BoundField DataField="branch" HeaderText="branch" SortExpression="branch" />
                <asp:BoundField DataField="semester" HeaderText="semester" SortExpression="semester" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [subjectdetails]" InsertCommand="INSERT INTO subjectdetails(subjectcode, subjectname, semester, branch) VALUES (@sc, @sn, @sem, @brnch)">
            <InsertParameters>
                <asp:ControlParameter ControlID="subjectcode" Name="sc" PropertyName="Text" />
                <asp:ControlParameter ControlID="subjectname" Name="sn" PropertyName="Text" />
                <asp:ControlParameter ControlID="semester" Name="sem" PropertyName="Text" />
                <asp:ControlParameter ControlID="branch" Name="brnch" PropertyName="Text" />
            </InsertParameters>
        </asp:SqlDataSource>
</asp:Content>
