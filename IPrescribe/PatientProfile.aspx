<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PatientProfile.aspx.cs" Inherits="IPrescribe.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Bread crumb and right sidebar toggle -->
    <div class="row page-titles">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor">Request An Appointments</h4>
        </div>
        <div class="col-md-7 align-self-center text-right">
            <div class="d-flex justify-content-end align-items-center">
                <a href="Appointments.aspx" class="btn btn-info d-lg-block m-l-15"><i class="fas fa-arrow-circle-left"></i>&nbsp;Back to appointments</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body wizard-content">
                    <%--<h4 class="card-title">Step wizard</h4>
                                <h6 class="card-subtitle">You can find the <a href="http://www.jquery-steps.com" target="_blank">offical website</a></h6>--%>
                    <form action="#" class="tab-wizard wizard-circle" id="test1">
                        <!-- Step 1 -->
                        <h6>Personal Info</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="location1">Who is this appointment for?</label>
                                        <select class="custom-select form-control" id="who" name="who">
                                            <option value="">Select</option>
                                            <option value="Amsterdam">Office Visit</option>
                                            <option value="Berlin">Wellness Physical</option>
                                            <option value="Frankfurt">Vaccinations</option>
                                            <option value="Frankfurt">Pre-travel Consultation</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 2 -->
                        <h6>Job Status</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="location1">At which location of Patient Portal would you like to schedule this appointment?</label>
                                        <select class="custom-select form-control" id="location1" name="location">
                                            <option value="">Select</option>
                                            <option value="Amsterdam">India</option>
                                            <option value="Berlin">USA</option>
                                            <option value="Frankfurt">Dubai</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 3 -->
                        <h6>Interview</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="m-b-10">If this is an <b>emergency</b> or you are experiencing chest pain</label>
                                        <p class="text-center m-b-5">Please not this is for Request Appointments only.</p>
                                        <p class="text-center">To continue with the Appointment Request click the Next button below.</p>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 4 -->
                        <h6>Reason for Appointment</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="location1">Appointment Type</label>
                                        <select class="custom-select form-control" id="reason" name="reason">
                                            <option value="">Select</option>
                                            <option value="Amsterdam">India</option>
                                            <option value="Berlin">USA</option>
                                            <option value="Frankfurt">Dubai</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="location1">Briefly describe the reason for this appointment</label>
                                        <textarea id="reasondesc" rows="5" cols="5" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 5 -->
                        <h6>Insurance</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="text-center">What insurance will you be using for this appointment?</p>
                                </div>
                                <div class="col-md-12">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadio1">New Insurance</label>
                                    </div>
                                </div>
                                <div class="col-md-4 m-t-10">
                                    <div class="form-group">
                                        <label for="firstName1">Insurance Provider :</label>
                                        <input type="text" class="form-control" id="firstName1">
                                    </div>
                                </div>
                                <div class="col-md-4 m-t-10">
                                    <div class="form-group">
                                        <label for="firstName1">Subscriber/Policy ID :</label>
                                        <input type="text" class="form-control" id="firstName2">
                                    </div>
                                </div>
                                <div class="col-md-4 m-t-10">
                                    <div class="form-group">
                                        <label for="firstName1">Name On Card :</label>
                                        <input type="text" class="form-control" id="firstName3">
                                    </div>
                                </div>
                                <div class="col-md-4 m-t-0">
                                    <div class="form-group">
                                        <label for="firstName1">Group Number :</label>
                                        <input type="text" class="form-control" id="firstName4">
                                    </div>
                                </div>
                                <div class="col-md-4 m-t-0">
                                    <div class="form-group">
                                        <label for="firstName1">Plan Number :</label>
                                        <input type="text" class="form-control" id="firstName5">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                                        <label class="custom-control-label" for="customRadio2">Complete/Provide in person</label>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 6 -->
                        <h6>Appointment Date</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="location1">Preferred Date</label>
                                        <input type="date" class="form-control" id="date1">
                                    </div>
                                </div>
                            </div>
                        </section>
                        <!-- Step 7 -->
                        <h6>Confirm Appointment</h6>
                        <section>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group m-b-5">
                                        <label for="location1">You are about to schedule and appointment for :</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group m-b-5">
                                        <label for="firstName1"><b>Type :</b></label>
                                        <label for="firstName1">Rash</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group m-b-5">
                                        <label for="firstName1"><b>For :</b></label>
                                        <label for="firstName1">MySelf</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group m-b-5">
                                        <label for="firstName1"><b>On :</b></label>
                                        <label for="firstName1">Friday, July 31 2020 10:30 AM</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group m-b-5">
                                        <label for="firstName1"><b>With :</b></label>
                                        <label for="firstName1">REED FOWLER</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="firstName1"><b>At :</b></label>
                                        <label for="firstName1">Patient Portal - Main Office</label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="firstName1"><b>Are you sure?</b></label>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
