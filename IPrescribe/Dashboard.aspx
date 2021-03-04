<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IPrescribe.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Bread crumb and right sidebar toggle -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Dashboard</h4>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header bg-info text-center">
                    <h4 class="mb-0 text-white">Good afternoon, User</h4>
                </div>
                <div class="card-body text-center">
                    <h4 class="card-title">What would you like to do today?</h4>
                </div>
            </div>
        </div>
        <div class="col-md-3 col-sm-12 col-xs-12">
            <a href="CreateRx.aspx">
                <div class="card">
                    <div class="card-body text-center">
                        <%--<img src="Content/images/orangeappointment.png" />--%>
                        <img src="Content/images/pen.png" />
                        <h3 class="card-title" style="margin-top: 10px;">New Rx</h3>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-12 col-xs-12">
            <a href="MyProfile.aspx">
                <div class="card">
                    <div class="card-body text-center">
                        <%--<img src="Content/images/orangeemail.png" />--%>
                        <img src="Content/images/bell.png" />
                        <h3 class="card-title" style="margin-top: 10px;">Pending</h3>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-12 col-xs-12">
            <a href="RequestRefill.aspx">
                <div class="card">
                    <div class="card-body text-center">
                        <%--<img src="Content/images/orangerefill.png" />--%>
                        <img src="Content/images/refresh.png" />
                        <h3 class="card-title" style="margin-top: 10px;">Renewals</h3>
                    </div>
                </div>
            </a>
        </div>
        <div class="col-md-3 col-sm-12 col-xs-12">
            <a href="RequestRefill.aspx">
                <div class="card">
                    <div class="card-body text-center">
                        <%--<img src="Content/images/orangerefill.png" />--%>
                        <img src="Content/images/medical-record.png" />
                        <h3 class="card-title" style="margin-top: 10px;">PDMP</h3>
                    </div>
                </div>
            </a>
        </div>
    </div>
</asp:Content>
