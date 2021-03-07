<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="IPrescribe.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/css/tab-page.css" rel="stylesheet" />
    <style>
        /*table.dataTable tbody td.select-checkbox:before, table.dataTable tbody th.select-checkbox:before {
            margin-top: 4px !important;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Bread crumb and right sidebar toggle -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Patient's Medication Profile</h4>
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
        <div class="col-md-12">
            <div class="card">
                <div class="card-body p-b-0">
                    <ul class="nav nav-tabs customtab2" role="tablist" id="myTab">
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#histories" role="tab" aria-selected="false"><span class="hidden-sm-up"><i class="fas fa-capsules"></i></span><span class="hidden-xs-down">&nbsp;Active Medications</span></a> </li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#allergies" role="tab" aria-selected="false"><span class="hidden-sm-up"><i class="fas fa-capsules"></i></span><span class="hidden-xs-down">&nbsp;Allergies</span></a> </li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#diagnoses" role="tab" aria-selected="false"><span class="hidden-sm-up"><i class="fas fa-capsules"></i></span><span class="hidden-xs-down">&nbsp;Diagnoses</span></a> </li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#encounters" role="tab" aria-selected="false"><span class="hidden-sm-up"><i class="fas fa-capsules"></i></span><span class="hidden-xs-down">&nbsp;Encounters</span></a> </li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#medications" role="tab" aria-selected="false"><span class="hidden-sm-up"><i class="fas fa-capsules"></i></span><span class="hidden-xs-down">&nbsp;Patient Pharmacies</span></a> </li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#labs" role="tab" aria-selected="false"><span class="hidden-sm-up"><i class="fas fa-capsules"></i></span><span class="hidden-xs-down">&nbsp;PDMP Records</span></a> </li>
                    </ul>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div class="tab-pane active p-20 p-l-0" id="histories" role="tabpanel">
                            <div class="col-md-12 align-self-center text-right m-b-15 m-r-0 p-r-0">
                                <div class="d-flex justify-content-end align-items-center">
                                    <%--<button type="submit" class="btn btn-danger m-b-10" data-toggle="modal" data-target="#myModal"><i class="fas fa-edit"></i>&nbsp;Rx</button>--%>
                                    <a href="CreateRx.aspx" class="btn btn-danger m-b-10"><i class="fas fa-edit"></i>&nbsp;Rx</a>
                                    <button type="submit" class="btn btn-danger m-b-10 m-l-10">Pull Record</button>
                                </div>
                            </div>
                            <div class="row p-t-10">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header bg-info">
                                            <h4 class="m-b-0 text-white"><b>Active Medications</b></h4>
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive m-t-10">
                                                <a href="javascript:void(0);" onclick="" id="stoplink" class="btn btn-secondary" data-toggle="tooltip" title="Stop Medications!" style="margin-left: 26px;">Stop</a>
                                                <div id="example24_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                                                    <table id="example24" class="display nowrap table table-hover table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example23_info" style="width: 100%;">
                                                        <thead>
                                                            <tr role="row">
                                                                <th style="width: 20px;"></th>
                                                                <th class="sorting_asc" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 40px;">Rx Date</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 186px;">Drug</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 85px;">Sig</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 29px;">#</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 74px;">Source</th>
                                                                <th class="" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="" style="width: 30px;">Refills</th>
                                                                <th class="" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="" style="width: 30px;">Status</th>
                                                                <th class="" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="" style="width: 58px;">Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr role="row" class="odd">
                                                                <td></td>
                                                                <td class="sorting_1">01/22/2021</td>
                                                                <td>Drug Name 1</td>
                                                                <td>1 by mouth BID</td>
                                                                <td>14</td>
                                                                <td>Robert G Barker MD</td>
                                                                <td>0</td>
                                                                <td>Pending</td>
                                                                <td>
                                                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#PrescribeModal" id="prescribelink" class="btn btn-secondary" title="Prescribe Anyway!" style="margin-right: 10px;"><%--<i class="fas fa-prescription"></i>--%>Prescribe</a>
                                                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#RenewModal" id="renewlink" class="btn btn-secondary" title="Renew!"><%--<i class="fas fa-prescription"></i>--%>Renew</a>
                                                                </td>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td></td>
                                                                <td class="sorting_1">07/27/2017</td>
                                                                <td>Drug Name 2</td>
                                                                <td>1 by mouth DAILY</td>
                                                                <td>30</td>
                                                                <td>Stephen Jerome MD</td>
                                                                <td>0</td>
                                                                <td>Pending</td>
                                                                <td>
                                                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#PrescribeModal" id="prescribelink1" class="btn btn-secondary" title="Prescribe Anyway!" style="margin-right: 10px;"><%--<i class="fas fa-prescription"></i>--%>Prescribe</a>
                                                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#RenewModal" id="renewlink1" class="btn btn-secondary" title="Renew!"><%--<i class="fas fa-prescription"></i>--%>Renew</a>
                                                                </td>
                                                            </tr>
                                                            <tr role="row" class="odd">
                                                                <td></td>
                                                                <td class="sorting_1">05/08/2014</td>
                                                                <td>Drug Name 3</td>
                                                                <td>1 inhale as directed</td>
                                                                <td>1</td>
                                                                <td>Robert G Barker MD</td>
                                                                <td>0</td>
                                                                <td>Pending</td>
                                                                <td>
                                                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#PrescribeModal" id="prescribelink2" class="btn btn-secondary" title="Prescribe Anyway!" style="margin-right: 10px;"><%--<i class="fas fa-prescription"></i>--%>Prescribe</a>
                                                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#RenewModal" id="renewlink2" class="btn btn-secondary" title="Renew!"><%--<i class="fas fa-prescription"></i>--%>Renew</a>
                                                                </td>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td></td>
                                                                <td class="sorting_1">01/08/2021</td>
                                                                <td>Drug Name 4</td>
                                                                <td>1 by mouth BID</td>
                                                                <td>18</td>
                                                                <td>Robert G Barker MD</td>
                                                                <td>0</td>
                                                                <td>Pending</td>
                                                                <td>
                                                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#PrescribeModal" id="prescribelink3" class="btn btn-secondary" title="Prescribe Anyway!" style="margin-right: 10px;"><%--<i class="fas fa-prescription"></i>--%>Prescribe</a>
                                                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#RenewModal" id="renewlink3" class="btn btn-secondary" title="Renew!"><%--<i class="fas fa-prescription"></i>--%>Renew</a>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane  p-20 p-l-0" id="medications" role="tabpanel">
                            <div class="col-md-12 align-self-center text-right m-b-15 m-r-0 p-r-0">
                                <div class="d-flex justify-content-end align-items-center">
                                    <%--<a href="AddPharmacy.aspx" class="btn btn-info d-lg-block m-l-15"><i class="fa fa-edit"></i>&nbsp;Change</a>--%>
                                    <button type="submit" class="btn btn-danger m-b-10"><i class="fas fa-edit"></i>&nbsp;Change</button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header bg-info">
                                            <h4 class="m-b-0 text-white"><b>Patient Pharmacies</b></h4>
                                        </div>
                                        <div class="card-body">
                                             <div class="table-responsive m-t-10">
                                                <div id="example26_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                                                    <table id="example26" class="display nowrap table table-hover table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example23_info" style="width: 100%;">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="sorting_asc" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 40px;">Name</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-label="Address: activate to sort column ascending" style="width: 186px;">Address</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-label="Phone: activate to sort column ascending" style="width: 85px;">Phone</th>
                                                                <%--<th class="sorting" tabindex="0" aria-controls="example26" rowspan="1" colspan="1" aria-label="Fax: activate to sort column ascending" style="width: 29px;">Fax</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="Speciality: activate to sort column ascending" style="width: 74px;">Speciality</th>
                                                                <th class="" tabindex="0" aria-controls="example24" rowspan="1" colspan="1" aria-label="" style="width: 30px;">Service</th>--%>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Bogus Pharmacy</td>
                                                                <td>111 Nowhere San Francisco, CA 999999</td>
                                                                <td>123-456-7890</td>
                                                                <%--<td>555-555-5555</td>
                                                                <td>Retail</td>
                                                                <td>Disabled</td>--%>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td class="sorting_1">Brooks #578</td>
                                                                <td>1074 Lexington Street Waltham, MA 02452</td>
                                                                <td>123-456-7890</td>
                                                                <%--<td>555-555-5555</td>
                                                                <td>Retail</td>
                                                                <td>Disabled</td>--%>
                                                            </tr>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Brooks #579</td>
                                                                <td>80 River Street River City SC Waltham, MA 02453</td>
                                                                <td>123-456-7890</td>
                                                                <%--<td>555-555-5555</td>
                                                                <td>Retail</td>
                                                                <td>Disabled</td>--%>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane p-20 p-l-0" id="labs" role="tabpanel">
                            <div class="col-md-12 align-self-center text-right m-b-15 m-r-0 p-r-0">
                                <div class="d-flex justify-content-end align-items-center">
                                    <button type="submit" class="btn btn-danger m-b-10">&nbsp;Pull Records</button>
                                </div>
                            </div>
                            <div class="row p-t-10">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header bg-info">
                                            <h4 class="m-b-0 text-white"><b>PDMP Records</b></h4>
                                        </div>
                                        <div class="card-body p-l-0">
                                            <h4 class="card-title">Exact Patient Match Results</h4>
                                            <div class="table-responsive m-t-40">
                                                <div id="example23_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                                                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example23_info" style="width: 100%;">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="sorting_asc" tabindex="0" aria-controls="example23" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 118px;">Name</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example23" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 186px;">Position</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example23" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 85px;">Office</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example23" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 29px;">Age</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example23" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 74px;">Start date</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example23" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 58px;">Salary</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Airi Satou</td>
                                                                <td>Accountant</td>
                                                                <td>Tokyo</td>
                                                                <td>33</td>
                                                                <td>2008/11/28</td>
                                                                <td>$162,700</td>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td class="sorting_1">Angelica Ramos</td>
                                                                <td>Chief Executive Officer (CEO)</td>
                                                                <td>London</td>
                                                                <td>47</td>
                                                                <td>2009/10/09</td>
                                                                <td>$1,200,000</td>
                                                            </tr>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Ashton Cox</td>
                                                                <td>Junior Technical Author</td>
                                                                <td>San Francisco</td>
                                                                <td>66</td>
                                                                <td>2009/01/12</td>
                                                                <td>$86,000</td>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td class="sorting_1">Bradley Greer</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>41</td>
                                                                <td>2012/10/13</td>
                                                                <td>$132,000</td>
                                                            </tr>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Brenden Wagner</td>
                                                                <td>Software Engineer</td>
                                                                <td>San Francisco</td>
                                                                <td>28</td>
                                                                <td>2011/06/07</td>
                                                                <td>$206,850</td>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td class="sorting_1">Brielle Williamson</td>
                                                                <td>Integration Specialist</td>
                                                                <td>New York</td>
                                                                <td>61</td>
                                                                <td>2012/12/02</td>
                                                                <td>$372,000</td>
                                                            </tr>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Bruno Nash</td>
                                                                <td>Software Engineer</td>
                                                                <td>London</td>
                                                                <td>38</td>
                                                                <td>2011/05/03</td>
                                                                <td>$163,500</td>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td class="sorting_1">Caesar Vance</td>
                                                                <td>Pre-Sales Support</td>
                                                                <td>New York</td>
                                                                <td>21</td>
                                                                <td>2011/12/12</td>
                                                                <td>$106,450</td>
                                                            </tr>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Cara Stevens</td>
                                                                <td>Sales Assistant</td>
                                                                <td>New York</td>
                                                                <td>46</td>
                                                                <td>2011/12/06</td>
                                                                <td>$145,600</td>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td class="sorting_1">Cedric Kelly</td>
                                                                <td>Senior Javascript Developer</td>
                                                                <td>Edinburgh</td>
                                                                <td>22</td>
                                                                <td>2012/03/29</td>
                                                                <td>$433,060</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <%--<div class="dataTables_info" id="example23_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
                                                    <div class="dataTables_paginate paging_simple_numbers" id="example23_paginate">
                                                        <ul class="pagination">
                                                            <li class="paginate_button page-item previous disabled" id="example23_previous"><a href="#" aria-controls="example23" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
                                                            <li class="paginate_button page-item active"><a href="#" aria-controls="example23" data-dt-idx="1" tabindex="0" class="page-link">1</a></li>
                                                            <li class="paginate_button page-item "><a href="#" aria-controls="example23" data-dt-idx="2" tabindex="0" class="page-link">2</a></li>
                                                            <li class="paginate_button page-item "><a href="#" aria-controls="example23" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
                                                            <li class="paginate_button page-item "><a href="#" aria-controls="example23" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
                                                            <li class="paginate_button page-item "><a href="#" aria-controls="example23" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
                                                            <li class="paginate_button page-item "><a href="#" aria-controls="example23" data-dt-idx="6" tabindex="0" class="page-link">6</a></li>
                                                            <li class="paginate_button page-item next" id="example23_next"><a href="#" aria-controls="example23" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li>
                                                        </ul>
                                                    </div>--%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane p-20 p-l-0" id="allergies" role="tabpanel">
                            <div class="col-md-12 align-self-center text-right m-b-15 m-r-0 p-r-0">
                                <div class="d-flex justify-content-end align-items-center">
                                    <a href="javascript:void(0);" data-toggle="modal" data-target="#AllergiesModal" id="allergielink" class="btn btn-info d-lg-block m-l-15" title="Add New Allergie!" style="margin-right: 10px;"><i class="fa fa-plus-circle"></i>&nbsp;Add</a>
                                </div>
                            </div>
                            <div class="row p-t-10">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header bg-info">
                                            <h4 class="m-b-0 text-white"><b>Allergies</b></h4>
                                        </div>
                                        <div class="card-body">
                                            <div class="table-responsive m-t-10">
                                                <div id="example25_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4">
                                                    <table id="example25" class="display nowrap table table-hover table-striped table-bordered dataTable" cellspacing="0" width="100%" role="grid" aria-describedby="example23_info" style="width: 100%;">
                                                        <thead>
                                                            <tr role="row">
                                                                <th class="sorting_asc" tabindex="0" aria-controls="example25" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 100px;">Name</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example25" rowspan="1" colspan="1" aria-label="Severity: activate to sort column ascending" style="width: 100px;">Severity</th>
                                                                <th class="sorting" tabindex="0" aria-controls="example25" rowspan="1" colspan="1" aria-label="Notes: activate to sort column ascending" style="width: 100px;">Notes</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Grass Pollen</td>
                                                                <td>Moderate</td>
                                                                <td>Sneezing</td>
                                                            </tr>
                                                            <tr role="row" class="even">
                                                                <td class="sorting_1">Penicillins</td>
                                                                <td></td>
                                                                <td></td>
                                                            </tr>
                                                            <tr role="row" class="odd">
                                                                <td class="sorting_1">Septra</td>
                                                                <td>Mild</td>
                                                                <td></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane p-20 p-l-0" id="diagnoses" role="tabpanel">
                            <div class="col-md-12 align-self-center text-right m-b-15 m-r-0 p-r-0">
                                <div class="d-flex justify-content-end align-items-center">
                                    <a href="AddPharmacy.aspx" class="btn btn-info d-lg-block m-l-15"><i class="fa fa-plus-circle"></i>&nbsp;Add</a>
                                </div>
                            </div>
                            <div class="row p-t-10">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header bg-info">
                                            <h4 class="m-b-0 text-white"><b>Diagnoses</b></h4>
                                        </div>
                                        <div class="card-body">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane p-20 p-l-0" id="encounters" role="tabpanel">
                            <div class="col-md-12 align-self-center text-right m-b-15 m-r-0 p-r-0">
                                <div class="d-flex justify-content-end align-items-center">
                                    <a href="AddPharmacy.aspx" class="btn btn-info d-lg-block m-l-15"><i class="fa fa-plus-circle"></i>&nbsp;Add</a>
                                </div>
                            </div>
                            <div class="row p-t-10">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-header bg-info">
                                            <h4 class="m-b-0 text-white"><b>Encounters</b></h4>
                                        </div>
                                        <div class="card-body">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="js-title-step" style="float: right; position: absolute;"></h4>
                </div>
                <div class="modal-body">
                    <div class="row hide" data-step="1" data-title="This is the first step!">
                        <div class="jumbotron" style="width: 100%">
                            <div class="form-group">
                                <%--<label for="drugname">Drug</label>--%>
                                <input type="text" class="form-control" id="drugname" placeholder="Enter Drug Name">
                            </div>
                        </div>
                    </div>
                    <div class="row hide" data-step="2" data-title="This is the second step!">
                        <div class="jumbotron" style="width: 100%">This is the second step!</div>
                    </div>
                    <div class="row hide" data-step="3" data-title="This is the last step!">
                        <div class="jumbotron" style="width: 100%">This is the last step!</div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-warning js-btn-step" data-orientation="previous"></button>
                    <button type="button" class="btn btn-success js-btn-step" data-orientation="next"></button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="PrescribeModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="approvemodeltext">Medicine Name - Prescribe</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Duration (Days)</label>
                        <input type="text" id="exitinterviewdate" name="exitinterviewdate" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="Quantity">Quantity</label>
                        <input type="text" id="Quantity" name="Quantity" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="Refills">Refills</label>
                        <input type="text" id="Refills" name="Quantity" class="form-control" />
                    </div>
                </div>
                <div class="modal-footer">
                    <%--button class="btn btn-danger" type="button" onclick="rejectenrollment()" id="btnReject">Reject</button>--%>
                    <button class="btn btn-success" type="button" id="submitBtn">Submit</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="RenewModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="renewtext">Medicine Name - Renew</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Duration (Days)</label>
                        <input type="text" id="exitinterviewdate1" name="exitinterviewdate" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="Quantity">Quantity</label>
                        <input type="text" id="Quantity1" name="Quantity" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="Refills">Refills</label>
                        <input type="text" id="Refills1" name="Quantity" class="form-control" />
                    </div>
                </div>
                <div class="modal-footer">
                    <%--button class="btn btn-danger" type="button" onclick="rejectenrollment()" id="btnReject">Reject</button>--%>
                    <button class="btn btn-success" type="button" id="submitBtn1">Submit</button>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="AllergiesModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="allergiestext">Add New Allergie</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Allergie Name</label>
                        <input type="text" id="allergiename" name="allergiename" class="form-control" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-success" type="button" id="submitAllergieBtn">Submit</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        $('#myModal').modalSteps();
        $(function () {
            var availableTags = [
                "ActionScript",
                "AppleScript",
                "Asp",
                "BASIC",
                "C",
                "C++",
                "Clojure",
                "COBOL",
                "ColdFusion",
                "Erlang",
                "Fortran",
                "Groovy",
                "Haskell",
                "Java",
                "JavaScript",
                "Lisp",
                "Perl",
                "PHP",
                "Python",
                "Ruby",
                "Scala",
                "Scheme"
            ];
            $("#drugname").autocomplete({
                source: availableTags
            });
        });
    </script>
</asp:Content>
