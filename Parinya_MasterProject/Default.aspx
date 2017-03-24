<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Parinya_MasterProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>
            <asp:Label ID="Label1" runat="server" Text="KMFA SYSTEM"></asp:Label>
        </h1>
        <p class="lead">
            <asp:Label ID="Label2" runat="server" Text="Knowledge Management System for Failure Analysis in HDD."></asp:Label>
        </p>
        <p><a href="Main_Function/Search.aspx?" class="btn btn-primary btn-lg">Search &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Location</h2>
            <p>
                Show the failure trend by location.
            </p>
            <p>
                <a class="btn btn-default" href="Main_Function/Report_Location.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Product</h2>
            <p>
                Show the failure trend by product.
            </p>
            <p>
                <a class="btn btn-default" href="Main_Function/Report_Product.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Most reference</h2>
            <p>
                Show list of the most popular cases.
            </p>
            <p>
                <a class="btn btn-default" href="Main_Function/Report_MostReference.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
