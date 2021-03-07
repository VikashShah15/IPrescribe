<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateRx.aspx.cs" Inherits="IPrescribe.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td.details-control {
            background: url('Content/images/details_open.png') no-repeat center center;
            cursor: pointer;
        }

        tr.shown td.details-control {
            background: url('Content/images/details_close.png') no-repeat center center;
        }
    </style>
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
                    <h4 class="mb-0 text-white float-left">Provider Name : Test Provider</h4>
                    <h4 class="mb-0 text-white float-right">Location : Test Location</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-3">
                            <h4 class="mb-0"><b>Patient ID:</b> #001</h4>
                        </div>
                        <div class="col-md-4">
                            <h4 class="mb-0"><b>Patient:</b> Alice Wonderland</h4>
                        </div>
                        <div class="col-md-3">
                            <h4 class="mb-0"><b>DOB:</b> 02/08/1995</h4>
                        </div>
                        <div class="col-md-2">
                            <h4 class="mb-0"><b>Gender:</b> F</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                                    <input type="text" class="form-control" id="txtSearch" />
                                    <%--<button type="button" class="btn btn-info d-lg-block m-l-15" style="width: 70%;"><i class="fas fa-search"></i>&nbsp;SEARCH DRUG</button>--%>
                                    <a href="javascript:void(0);" onclick="showdiv();" id="stoplink" class="btn btn-info d-lg-block m-l-15" style="width: 70%;"><i class="fas fa-search"></i>&nbsp;SEARCH DRUG</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="row" id="divResults" style="display:none">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header bg-info">
                    <h4 class="m-b-0 text-white"><b>Search Results</b></h4>
                </div>
                <div class="card-body p-b-0">
                    <form action="#">
                        <div class="form-body">
                            <div class="col-md-12 align-self-center text-right m-b-15 m-r-0 p-r-0">
                                <div class="table-responsive">
                                    <table id="example" class="display table table-hover table-striped table-bordered dataTable" style="width: 100%">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th>Name</th>
                                                <th>Route</th>
                                                <th>Units</th>
                                                <%--<th>Salary</th>--%>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>

        function showdiv() {
            if ($("#txtSearch").val() != "") {
                $("#divResults").show();
            }
            else {
                $("#divResults").hide();
            }
        }

        /* Formatting function for row details - modify as you need */
        function format(d) {
            // `d` is the original data object for the row
            return '<table cellpadding="5" cellspacing="0" border="0" style="width: 100%;">' +
                '<thead><tr><th>Units</th><th>Description</th><th>Action</th></tr>' +
                '<tr>' +
                '<td>250 mg U</td>' +
                '<td>Any further details here (images etc)...</td>' +
                '<td><a href="javascript:void(0);" data-toggle="modal" data-target="#PrescribeModal" id="prescribelink" class="btn btn-secondary" title="Save Rx!">Save Rx</a></td>' +
                '</tr>' +
                '<tr>' +
                '<td>500 mg U</td>' +
                '<td>Any further details here (images etc)...</td>' +
                '<td><a href="javascript:void(0);" data-toggle="modal" data-target="#PrescribeModal" id="prescribelink" class="btn btn-secondary" title="Save Rx!">Save Rx</a></td>' +
                '</tr>' +
                '<tr>' +
                '<td>750 mg U</td>' +
                '<td>Any further details here (images etc)...</td>' +
                '<td><a href="javascript:void(0);" data-toggle="modal" data-target="#PrescribeModal" id="prescribelink" class="btn btn-secondary" title="Save Rx!">Save Rx</a></td>' +
                '</tr>' +
                '</table>';
        }

        $(document).ready(function () {

            $("#txtSearch").keyup(function () {
                if ($("#txtSearch").val() == "") {
                    $("#divResults").hide();
                }
            });
             
            var table = $('#example').DataTable({
                "ajax": "./objects.txt",
                "columns": [
                    {
                        "className": 'details-control',
                        "orderable": false,
                        "data": null,
                        "defaultContent": ''
                    },
                    { "data": "name" },
                    { "data": "position" },
                    { "data": "office" }
                    //{ "data": "salary" }
                ],
                "order": [[1, 'asc']]
            });

            // Add event listener for opening and closing details
            $('#example tbody').on('click', 'td.details-control', function () {
                var tr = $(this).closest('tr');
                var row = table.row(tr);

                if (row.child.isShown()) {
                    // This row is already open - close it
                    row.child.hide();
                    tr.removeClass('shown');
                }
                else {
                    // Open this row
                    row.child(format(row.data())).show();
                    tr.addClass('shown');
                }
            });
        });
    </script>
</asp:Content>
