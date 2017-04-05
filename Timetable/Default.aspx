<%@ Page Title="Time Table Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Timetable._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Time Table Management System</h1>
                <h2>
                    <br />
                    We give you the optimised solution for managing your time table.</h2>
            </hgroup>
            <p>
                The issue of creating an optimal time-table is paramount in any educational institution especially
where a high magnitude of teachers and students are present. Therefore, this project intends to aid
in developing an optimal time-table management system which not only saves time and labour
but also gives respite from the dilemma and sheer pressure of coming up with an apt manually
made time-table. We specialise in providing various facilities such as <mark>swapping of teachers, extra classes,
change of schedule and various other problems</mark>. 
            </p>
        </div> 
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">


    <div style="width:650px; margin:0 auto;">
  <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button1" runat="server" BackColor="#333333" BorderColor="White" BorderStyle="Double" BorderWidth="2px" ForeColor="White" Height="40px" OnClick="Button1_Click" Text="Guest View" Width="285px" PostBackUrl="~/GuestPreview.aspx" />
        </h2>
    <link rel="stylesheet" href="css/layout1.css">
<link rel="stylesheet" href="css/animate.min.css">

<div class="wrap">
  <div id="cxslide_x" class="cxslide_x">
    <div class="box">
      <ul class="list">
        <li><a href="#1"><img src="img/_pic/slide_4.png" width="600" height="280"></a><p></p></li>
        <li><a href="#2"><img src="img/_pic/slide_2.png" width="600" height="280"></a><p></p></li>
        <li><a href="#3"><img src="img/_pic/slide_3.png" width="600" height="280"></a><p></p></li>
        <li><a href="#4"><img src="img/_pic/slide_1.jpg" width="600" height="280"></a><p></p></li>
        <li><a href="#5"><img src="img/_pic/slide_5.png" width="600" height="280"></a><p></p></li>
      </ul>
    </div>
  </div>

</div>

<script src="js/jquery.min.js"></script>
<script src="js/jquery.cxslide.min.js"></script>
<script>
    $('#cxslide_x').cxSlide({
        plus: true,
        minus: true
    });

    $('#cxslide_y').cxSlide({
        type: 'y'
    });

    $('#cxslide_fade').cxSlide({
        events: 'mouseover',
        type: 'fade',
        speed: 300
    });
</script>
    </div>


    
</asp:Content>
