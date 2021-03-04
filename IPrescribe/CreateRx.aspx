<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateRx.aspx.cs" Inherits="IPrescribe.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Bread crumb and right sidebar toggle -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Create New Rx</h4>
        </div>
        <%--<div class="col-md-7 align-self-center text-right">
            <div class="d-flex justify-content-end align-items-center">
                <button type="button" class="btn btn-info d-none d-lg-block m-l-15"><i class="fa fa-plus-circle"></i>&nbsp;Schedule an appointment</button>
            </div>
        </div>--%>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header bg-info">
                    <h4 class="m-b-0 text-white"><b>Search Drug</b></h4>
                </div>
                <div class="card-body p-b-0">
                    <form action="#">
                        <div class="form-body">
                            <div class="col-md-6 align-self-center text-right m-b-15 m-r-0 p-r-0">
                                <div class="d-flex justify-content-end align-items-center">
                                    <input type="text" class="form-control" runat="server" />
                                    <button type="button" class="btn btn-info d-lg-block m-l-15" style="width:70%;"><i class="fas fa-search"></i>&nbsp;SEARCH DRUG</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
