<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="wednesday.aspx.cs" Inherits="Timetable.wednesday" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .radiobutton {
            margin-top: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    
        <asp:Label ID="Wednesdaydetails" runat="server" Text="Wednesday"></asp:Label>
    
    </div>
        <p>
            Enter Section :&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>CS1</asp:ListItem>
                <asp:ListItem>CS2</asp:ListItem>
                <asp:ListItem>CS3</asp:ListItem>
                <asp:ListItem>CS4</asp:ListItem>
                <asp:ListItem>CS5</asp:ListItem>
                <asp:ListItem>CS6</asp:ListItem>
                <asp:ListItem>CS7</asp:ListItem>
                <asp:ListItem>CS8</asp:ListItem>
            </asp:DropDownList>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please select an item" OnServerValidate="CustomValidator1_ServerValidate" ValidateEmptyText="True" ForeColor="Red"></asp:CustomValidator>
        </p>
        <%--<asp:Panel ID="Panel1" runat="server" Height="128px" style="margin-bottom: 0px" Width="1004px">--%>
            
            &nbsp;&nbsp;&nbsp;
            <%--</asp:Panel>--%>
        <asp:Panel ID="Panel4" runat="server">
            <asp:RadioButton ID="theory" runat="server" CssClass="radiobutton" AutoPostBack="True" Font-Bold="True" Font-Overline="False" Font-Size="Small" GroupName="radio" OnCheckedChanged="Theory_CheckedChanged" Text="Theory" BorderStyle="Groove" />
            <asp:RadioButton ID="lab" runat="server" AutoPostBack="True" BorderStyle="Groove" CssClass="radiobutton" Font-Bold="True" Font-Size="Small" GroupName="radio" OnCheckedChanged="Lab_CheckedChanged" Text="Lab" />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Height="136px" style="margin-top: 31px" Width="831px">
            LAB<br />
            <br />
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataTextField="lab" DataValueField="lab">
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                <asp:ListItem>Select Time</asp:ListItem>
                <asp:ListItem>8 to 11</asp:ListItem>
                <asp:ListItem>11 to 2</asp:ListItem>
                <asp:ListItem>3 to 6</asp:ListItem>
            </asp:DropDownList>
            <asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="Lab Busy" ForeColor="Red" OnServerValidate="CustomValidator7_ServerValidate"></asp:CustomValidator>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataTextField="subjectname" DataValueField="subjectcode" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList5" runat="server" DataTextField="teachername" DataValueField="teacherid">
            </asp:DropDownList>
            <asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="Teacher Busy" ForeColor="Red" OnServerValidate="CustomValidator5_ServerValidate"></asp:CustomValidator>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList6" runat="server" DataTextField="teachername" DataValueField="teacherid">
            </asp:DropDownList>
            <asp:CustomValidator ID="CustomValidator6" runat="server" ErrorMessage="Assisstant Teacher Busy" ForeColor="Red" OnServerValidate="CustomValidator6_ServerValidate"></asp:CustomValidator>
            &nbsp;<asp:CompareValidator ID="CompareValidator56" runat="server" ErrorMessage="Same Teacher Selected" ControlToValidate="DropDownList6" ControlToCompare="DropDownList5" Operator="NotEqual" Type="String" ForeColor="Red"></asp:CompareValidator>
    </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="margin-top: 52px" Height="312px">
            THEORY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" DataTextField="classroom" DataValueField="classroom">
            </asp:DropDownList>
            &nbsp; &nbsp;<br />&nbsp;<br /><asp:Label ID="Label1" runat="server" Text="Subject 1"></asp:Label>
            &nbsp;<asp:CustomValidator ID="CustomValidator8" runat="server" ErrorMessage="Class Room Busy" ForeColor="Red" OnServerValidate="CustomValidator8_ServerValidate"></asp:CustomValidator>
            <br />
            <asp:DropDownList ID="DropDownList15" runat="server">
                <asp:ListItem>Select Time</asp:ListItem>
                <asp:ListItem>8-9</asp:ListItem>
                <asp:ListItem>9-10</asp:ListItem>
                <asp:ListItem>10-11</asp:ListItem>
                <asp:ListItem>11-12</asp:ListItem>
                <asp:ListItem>12-1</asp:ListItem>
                <asp:ListItem>1-2</asp:ListItem>
                <asp:ListItem>2-3</asp:ListItem>
                <asp:ListItem>3-4</asp:ListItem>
                <asp:ListItem>4-5</asp:ListItem>
                <asp:ListItem>5-6</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator124" runat="server" ControlToCompare="DropDownList16" ControlToValidate="DropDownList15" ErrorMessage="Time Already Selected" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
            <asp:DropDownList ID="DropDownList8" runat="server" DataTextField="subjectname" DataValueField="subjectcode" Height="19px" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidatorTeacher" runat="server" ControlToCompare="DropDownList11" ControlToValidate="DropDownList8" ErrorMessage="Same Subject Selected" ForeColor="Red" Operator="NotEqual" Type="String"></asp:CompareValidator>
            <asp:DropDownList ID="DropDownList9" runat="server" DataTextField="teachername" DataValueField="teacherid" style="margin-bottom: 0px" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="DropDownList12" ControlToValidate="DropDownList9" ErrorMessage="Same Teacher Selected" Operator="NotEqual" Type="String" ForeColor="Red"></asp:CompareValidator>
            <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Teacher Busy" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Subject 2"></asp:Label>
            &nbsp;<asp:CustomValidator ID="CustomValidator9" runat="server" ErrorMessage="Class Room Busy" ForeColor="Red" OnServerValidate="CustomValidator9_ServerValidate"></asp:CustomValidator>
            <br />
            <asp:DropDownList ID="DropDownList16" runat="server">
                <asp:ListItem>Select Time</asp:ListItem>
                <asp:ListItem>8-9</asp:ListItem>
                <asp:ListItem>9-10</asp:ListItem>
                <asp:ListItem>10-11</asp:ListItem>
                <asp:ListItem>11-12</asp:ListItem>
                <asp:ListItem>12-1</asp:ListItem>
                <asp:ListItem>1-2</asp:ListItem>
                <asp:ListItem>2-3</asp:ListItem>
                <asp:ListItem>3-4</asp:ListItem>
                <asp:ListItem>4-5</asp:ListItem>
                <asp:ListItem>5-6</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator125" runat="server" ControlToCompare="DropDownList17" ControlToValidate="DropDownList16" ErrorMessage="Time Already Selected" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
            <asp:DropDownList ID="DropDownList11" runat="server" DataTextField="subjectname" DataValueField="subjectcode">
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator12" runat="server" ControlToCompare="DropDownList13" ControlToValidate="DropDownList11" ErrorMessage="Same Subject Selected" Operator="NotEqual" Type="String" ForeColor="Red"></asp:CompareValidator>
            <asp:DropDownList ID="DropDownList12" runat="server" DataTextField="teachername" DataValueField="teacherid">
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Same Teacher Selected" ControlToValidate="DropDownList12" ControlToCompare="DropDownList14" Operator="NotEqual" Type="String" ForeColor="Red"></asp:CompareValidator>
            <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="Teacher Busy" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Subject 3"></asp:Label>
            &nbsp;<asp:CustomValidator ID="CustomValidator10" runat="server" ErrorMessage="Class Room Busy" ForeColor="Red" OnServerValidate="CustomValidator10_ServerValidate"></asp:CustomValidator>
            <br />
            <asp:DropDownList ID="DropDownList17" runat="server">
                <asp:ListItem>Select Time</asp:ListItem>
                <asp:ListItem>8-9</asp:ListItem>
                <asp:ListItem>9-10</asp:ListItem>
                <asp:ListItem>10-11</asp:ListItem>
                <asp:ListItem>11-12</asp:ListItem>
                <asp:ListItem>12-1</asp:ListItem>
                <asp:ListItem>1-2</asp:ListItem>
                <asp:ListItem>2-3</asp:ListItem>
                <asp:ListItem>3-4</asp:ListItem>
                <asp:ListItem>4-5</asp:ListItem>
                <asp:ListItem>5-6</asp:ListItem>
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator126" runat="server" ControlToCompare="DropDownList15" ControlToValidate="DropDownList17" ErrorMessage="Time Already Selected" ForeColor="Red" Operator="NotEqual"></asp:CompareValidator>
            <asp:DropDownList ID="DropDownList13" runat="server" DataTextField="subjectname" DataValueField="subjectcode">
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator123" runat="server" ErrorMessage="Same Subject Selected" ControlToValidate="DropDownList13" ControlToCompare="DropDownList8" Operator="NotEqual" Type="String" ForeColor="Red"></asp:CompareValidator>
       
            <asp:DropDownList ID="DropDownList14" runat="server" DataTextField="teachername" DataValueField="teacherid">
            </asp:DropDownList>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Same Teacher Selected" ControlToValidate="DropDownList14" ControlToCompare="DropDownList9" Operator="NotEqual" Type="String" ForeColor="Red"></asp:CompareValidator>
             <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="Teacher Busy" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
             &nbsp;&nbsp;</asp:Panel>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="NEXT" runat="server" OnClick="NEXT_Click" Text="NEXT" />
</asp:Content>
