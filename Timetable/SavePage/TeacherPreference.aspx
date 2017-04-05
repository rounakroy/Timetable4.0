<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TeacherPreference.aspx.cs" Inherits="Timetable.SavePage.TeacherPreference" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <p>
            Teacher Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tname" runat="server"></asp:TextBox>
        </p>
        
        Theory 1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="t1" runat="server"></asp:TextBox>
        <p>
            Theory 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="t2" runat="server"></asp:TextBox>
        </p>
        Theory 3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="t3" runat="server"></asp:TextBox>
        <p>
            Lab 1:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="l1" runat="server"></asp:TextBox>
        </p>
        Lab 2:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="l2" runat="server"></asp:TextBox>
        <p>
            Lab 3:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="l3" runat="server"></asp:TextBox>
        </p>
        Total Hours:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox ID="tothrs" runat="server"></asp:TextBox>
        <br />
        <br /> &nbsp;<asp:Button ID="add" runat="server" OnClick="add_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="saves" runat="server" OnClick="saves_Click" Text="Save" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="True" Font-Size="Medium" Font-Underline="True" NavigateUrl="~/SavePage/Days/monday.aspx">Completed</asp:HyperLink>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="teacher_name" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="teacher_name" HeaderText="teacher_name" ReadOnly="True" SortExpression="teacher_name" />
                <asp:BoundField DataField="theory1" HeaderText="theory1" SortExpression="theory1" />
                <asp:BoundField DataField="theory2" HeaderText="theory2" SortExpression="theory2" />
                <asp:BoundField DataField="theory3" HeaderText="theory3" SortExpression="theory3" />
                <asp:BoundField DataField="lab1" HeaderText="lab1" SortExpression="lab1" />
                <asp:BoundField DataField="lab2" HeaderText="lab2" SortExpression="lab2" />
                <asp:BoundField DataField="lab3" HeaderText="lab3" SortExpression="lab3" />
                <asp:BoundField DataField="totalhour" HeaderText="totalhour" SortExpression="totalhour" />
            </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Teacherpreference(teacher_name, theory1, theory2, theory3, lab1, lab2, lab3, totalhour) VALUES (@tname, @t1, @t2, @t3, @l1, @l2, @l3, @th)" SelectCommand="SELECT * FROM [Teacherpreference]">
        <InsertParameters>
            <asp:ControlParameter ControlID="tname" Name="tname" PropertyName="Text" />
            <asp:ControlParameter ControlID="t1" Name="t1" PropertyName="Text" />
            <asp:ControlParameter ControlID="t2" Name="t2" PropertyName="Text" />
            <asp:ControlParameter ControlID="t3" Name="t3" PropertyName="Text" />
            <asp:ControlParameter ControlID="l1" Name="l1" PropertyName="Text" />
            <asp:ControlParameter ControlID="l2" Name="l2" PropertyName="Text" />
            <asp:ControlParameter ControlID="l3" Name="l3" PropertyName="Text" />
            <asp:ControlParameter ControlID="tothrs" Name="th" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Content>
