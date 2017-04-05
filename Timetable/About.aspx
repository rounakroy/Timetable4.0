<%@ Page Title="About The Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Timetable.About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %></h1>
        <h2></h2>
    </hgroup>

    <article>
       <%--  <h3>About The Product:</h3> --%>
    <ol class="round">
        <li class="one">
            <h5>Product Perspective</h5>
            This product will be competition to the existing systems. This has been developed based on the problems faced by users on the existing platforms.
        </li>
        <li class="two">
            <h5>Operating Environment</h5>
            The software is hardware independent. Any system with internet connection and web browser will be able to access our website.
        </li>
        <li class="three">
            <h5>User Documentation</h5>
            The user will be provided with help options to help them operate the site easily. FAQ’s will also be available to the people to get solutions to common problem. Users will also be having a portal to ask questions and they will be answered as soon as possible.
        </li>
    </ol>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About.aspx">About</a></li>
            <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
        </ul>
    </aside>
</asp:Content>