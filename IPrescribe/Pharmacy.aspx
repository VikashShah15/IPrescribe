<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pharmacy.aspx.cs" Inherits="IPrescribe.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Bread crumb and right sidebar toggle -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Pharmacy</h4>
        </div>
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
                    <h4 class="m-b-0 text-white"><b>Search Pharmacy</b></h4>
                </div>
                <div class="card-body p-b-0">
                    <form action="#">
                        <div class="form-body">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-3">Name:</label>
                                            <div class="col-md-9">
                                                <input type="text" id="Name" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-3">Street Address:</label>
                                            <div class="col-md-9">
                                                <input type="text" id="Address" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-3">5 digit Zip:</label>
                                            <div class="col-md-9">
                                                <input type="text" id="zip" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-3">Cross Street / Landmark:</label>
                                            <div class="col-md-9">
                                                <input type="text" id="landmark" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-3">Phone / Fax:</label>
                                            <div class="col-md-9">
                                                <input type="text" id="fax" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-3">City:</label>
                                            <div class="col-md-9">
                                                <input type="text" id="city" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group row">
                                            <label class="control-label text-right col-md-3">State:</label>
                                            <div class="col-md-9">
                                                <input type="text" id="state" class="form-control" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <div class="card-body">
                                    <%--<button type="submit" class="btn btn-success"><i class="fa fa-check"></i>Search </button>--%>
                                    <a href="javascript:void(0);" onclick="showdiv();" id="stoplink" class="btn btn-info d-lg-block m-l-15"><i class="fas fa-search"></i>&nbsp;SEARCH ALL Pharmacies</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="row" id="divResults" style="display: block">
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
                                    <div id="example26_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                                        <table id="example26" class="display nowrap table table-hover table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example23_info" style="width: 100%;">
                                            <thead>
                                                <tr role="row">
                                                    <th class="sorting_asc" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 40px;">Name</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-label="Address: activate to sort column ascending" style="width: 186px;">Address</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-label="Phone: activate to sort column ascending" style="width: 85px;">Phone</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-label="Fax: activate to sort column ascending" style="width: 29px;">Fax</th>
                                                    <th class="sorting" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-label="Speciality: activate to sort column ascending" style="width: 74px;">Speciality</th>
                                                    <th class="" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-label="" style="width: 30px;">Service</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr role="row" class="odd">
                                                    <td class="sorting_1">Bogus Pharmacy</td>
                                                    <td>111 Nowhere San Francisco, CA 999999</td>
                                                    <td>123-456-7890</td>
                                                    <td>555-555-5555</td>
                                                    <td>Retail</td>
                                                    <td>Disabled</td>
                                                </tr>
                                                <tr role="row" class="even">
                                                    <td class="sorting_1">Brooks #578</td>
                                                    <td>1074 Lexington Street Waltham, MA 02452</td>
                                                    <td>123-456-7890</td>
                                                    <td>555-555-5555</td>
                                                    <td>Retail</td>
                                                    <td>Disabled</td>
                                                </tr>
                                                <tr role="row" class="odd">
                                                    <td class="sorting_1">Brooks #579</td>
                                                    <td>80 River Street River City SC Waltham, MA 02453</td>
                                                    <td>123-456-7890</td>
                                                    <td>555-555-5555</td>
                                                    <td>Retail</td>
                                                    <td>Disabled</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
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
