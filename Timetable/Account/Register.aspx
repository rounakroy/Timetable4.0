<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Timetable.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Use the form below to create a new account.</h2>
    </hgroup>

                    <p class="message-info">
                        Passwords are required to be a minimum of 8 characters in length.
                    </p>

                    <p class="validation-summary-errors">
                        <asp:Literal runat="server" ID="ErrorMessage" />
                    </p>

                  
                        <h3>Registration Form</h3>
                        <ol>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
                                <asp:TextBox runat="server" ID="UserName"/>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                    CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                            &nbsp;
                                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Email">Email address</asp:Label>
                                <asp:TextBox runat="server" ID="Email" TextMode="Email" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                    CssClass="field-validation-error" ErrorMessage="The email address field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                    CssClass="field-validation-error" ErrorMessage="The password field is required." />
                            </li>
                            <li>
                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label>
                                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                                     CssClass="field-validation-error" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                            </li>
                        </ol>
                        <asp:Button runat="server" CommandName="MoveNext" Text="Register" OnClick="Register_Click" />
                    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Admin]" InsertCommand="INSERT INTO Admin(userid, password, email) VALUES (@uid, @pas, @email)">
        <InsertParameters>
            <asp:ControlParameter ControlID="UserName" Name="uid" PropertyName="Text" />
            <asp:ControlParameter ControlID="Password" Name="pas" PropertyName="Text" />
            <asp:ControlParameter ControlID="Email" Name="email" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>

                    </asp:Content>