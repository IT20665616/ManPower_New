﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="ManPowerWeb.UserProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row pl-5 mt-5">
        <h2><b>My Profile - Employee ID : 
            <asp:Label ID="idNo" runat="server"></asp:Label></b></h2>
    </div>


    <div class="card p-5 mt-4">
        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#personalDetails">Personal Details </a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#contactDetails">Contact Details</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#emergencyContactDetails">Emergency Contact Details</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#empoymentDetails">Employment History</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#dependantDetails">Dependant Details</a></li>
            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#educationDetails">Education Details</a></li>
        </ul>

        <div class="tab-content mt-5">
            <div id="personalDetails" class="tab-pane fade in active mr-4">

                <h3>Add My Personal Details </h3>

                <div class="row mt-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Last Name : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="lname" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Initials : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="initial" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Name Denoted by Initials : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="nameOfInitials" runat="server" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Gender : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="gen" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Ethnicity : </label>
                            </div>
                            <div class="col-6">
                                <asp:DropDownList ID="ddlEthnicity" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Religion : </label>
                            </div>
                            <div class="col-6">
                                <asp:DropDownList ID="ddlReligion" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Date of Birth : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="dob" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="dob" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Marital Status : </label>
                            </div>
                            <div class="col-6">
                                <asp:DropDownList ID="ddlMaritalStatus" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-4">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>NIC : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="nic" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ValidationGroup="1" ID="RegularExpressionValidator8" ControlToValidate="nic" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="^([0-9]{9}[x|X|v|V]|[0-9]{12})$">
							        Invalid NIC</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>NIC Issued Date : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="nicIssuedDate" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="nicIssuedDate" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-4">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Passport Number : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="empPassport" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ValidationGroup="1" ID="RegularExpressionValidator9" ControlToValidate="empPassport" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="^(?!^0+$)[a-zA-Z0-9]{3,20}$">
							        Invalid Passport</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>District : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="district" ReadOnly="true" runat="server" CssClass="form-control form-control-user" />
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-4">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>DS Division : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="dsDivision" ReadOnly="true" runat="server" CssClass="form-control form-control-user" />
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Absorb : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="absorb" runat="server" ReadOnly="true" CssClass="form-control form-control-user" />
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>VNOP Number : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="vnop" runat="server" ReadOnly="true" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Appointment letter Number : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="appointmenLetterNo" runat="server" ReadOnly="true" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mt-4">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>File Number : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="fileNo" ReadOnly="true" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>


                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Pension Date : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="pensionDate" ReadOnly="true" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>


                <%----------------------------------------------------------------------------%>


                <div class="row mt-5 mb-4">
                    <div class="col-2">
                        <asp:Button runat="server" ID="btnSubmit1" Text="Update" CssClass="btn btn-primary btn-user btn-block" />
                    </div>
                </div>
            </div>

            <%---------tab 2---------%>

            <div id="contactDetails" class="tab-pane fade in active mr-4">

                <h3>Employee Contact Details</h3>


                <div class="row mt-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Address : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="address" runat="server" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Mobile Phone : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="EmpMobilePhone" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Mobile Number."
                                    ValidationExpression="^([0-9]{10})$" ControlToValidate="EmpMobilePhone" ValidationGroup="4"
                                    ForeColor="Red" Display="Dynamic">Invalid Telephone Number</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-4">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Telephone (Landline): </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="telephone" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Mobile Number."
                                    ValidationExpression="^([0-9]{10})$" ControlToValidate="telephone" ValidationGroup="4"
                                    ForeColor="Red" Display="Dynamic">Invalid Telephone Number</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Postal Code : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="postalCode" runat="server" CssClass="form-control form-control-user" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-4">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Office Phone : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="EmpOfficePhone" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid Mobile Number."
                                    ValidationExpression="^([0-9]{10})$" ControlToValidate="EmpOfficePhone" ValidationGroup="4"
                                    ForeColor="Red" Display="Dynamic">Invalid Telephone Number</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Personal Email : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="email" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ValidationGroup="4" ID="RegularExpressionValidator4" ControlToValidate="email" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
							    Invalid Email</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <%----------------------------------------------------------------------------%>


                <div class="row mt-5 mb-4">
                    <div class="col-2">
                        <asp:Button runat="server" ID="Button1" Text="Update" ValidationGroup="4" OnClick="submitContact" CssClass="btn btn-primary btn-user btn-block" />
                    </div>
                </div>
            </div>

            <%-------- tab 3 --------%>

            <div id="emergencyContactDetails" class="tab-pane fade in active mr-4">

                <h3>Employee Emergency Contact Details</h3>


                <div class="row mt-5">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Name : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="ecName" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Home Telephone Number : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="landLine" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Mobile Number."
                                    ValidationExpression="^([0-9]{10})$" ControlToValidate="landLine" ValidationGroup="5"
                                    ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-4">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Relationship To Employee : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="ecRelationship" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Office Phone Number : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="ecOfficePhone" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile Number."
                                    ValidationExpression="^([0-9]{10})$" ControlToValidate="ecOfficePhone" ValidationGroup="5"
                                    ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mt-4">
                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Address of Emergancy Contact Person : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="ecAddress" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="col-6">
                        <div class="row">
                            <div class="col-4">
                                <label>Mobile Number : </label>
                            </div>
                            <div class="col-6">
                                <asp:TextBox ID="ecMobile" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revMobNo" runat="server" ErrorMessage="Invalid Mobile Number."
                                    ValidationExpression="^([0-9]{10})$" ControlToValidate="ecMobile" ValidationGroup="5"
                                    ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </div>
                </div>


                <%----------------------------------------------------------------------------%>


                <div class="row mt-5 mb-4">
                    <div class="col-2">
                        <asp:Button runat="server" ID="Button2" Text="Update" ValidationGroup="5" OnClick="submitEmergencyContact" CssClass="btn btn-primary btn-user btn-block" />
                    </div>
                </div>
            </div>


            <%-------- tab 4 --------%>

            <div id="empoymentDetails" class="tab-pane fade in active mr-4">
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>

                        <h3>Employment History Details</h3>

                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Select Company Name: </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:DropDownList ID="ddlEmpDetails" runat="server" OnSelectedIndexChanged="ddlEmpDetails_SelectedIndexChanged" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%if (ddlEmpDetails.SelectedValue != "")
                            {  %>


                        <div class="row mt-5">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Contract Type : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:DropDownList ID="ddContract" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Designation : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:DropDownList ID="ddlDesignation" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-5">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Company Name : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="companyName" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Start Date : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="sDate" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-5">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>End Date : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="eDate" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Is Resigned : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:RadioButtonList ID="reseg" runat="server" AutoPostBack="true">
                                            <asp:ListItem Value="1">Yes</asp:ListItem>
                                            <asp:ListItem Value="2">No</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <div class="row mt-4">
                            <%if (reseg.SelectedValue == "1")
                                {  %>
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Retired Date : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="retiredDate" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <%}%>
                        </div>

                        <div id="empRowId" runat="server">
                            <div class="row mt-4">
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-4">
                                            <label>ID : </label>
                                        </div>
                                        <div class="col-6">
                                            <asp:TextBox ID="empDetailId" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%} %>
                    </ContentTemplate>
                </asp:UpdatePanel>


                <%----------------------------------------------------------------------------%>


                <div class="row mt-5 mb-4">
                    <div class="col-2">
                        <asp:Button runat="server" ID="Button4" Text="Update" ValidationGroup="5" OnClick="submitEmploymentDetails" CssClass="btn btn-primary btn-user btn-block" />
                    </div>
                </div>
            </div>

            <%-------- tab 5 --------%>

            <div id="dependantDetails" class="tab-pane fade in active mr-4">

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <h3>Dependant Details</h3>


                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Select Dependant : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:DropDownList ID="ddlDependantList" runat="server" OnSelectedIndexChanged="ddlDependantList_SelectedIndexChanged" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%if (ddlDependantList.SelectedValue != "")
                            {  %>


                        <%--<div class="row mt-5">
                            <div class="col-3">
                                <h5><b>
                                    <asp:Label ID="dep" runat="server"></asp:Label>
                                </b></h5>
                            </div>
                        </div>--%>

                        <div class="row mt-5">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Dependant Type : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:DropDownList ID="ddlDependant" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Relationship : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="dependantRelationship" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>First Name : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="dependantFname" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Last Name : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="dependantLname" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Date of Birth: </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="depDob" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Birth Certificate Number : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="bcNumber" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Passport Number : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="ppNumber" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Any Kind of Special Sickness : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="sickness" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <%if (ddlDependant.SelectedValue == "1")
                            { %>

                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Marriage Date : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="mDate" runat="server" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Marriage Certificate Number : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="mCertificateNo" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Nic Number : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="depNic" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                        <asp:RegularExpressionValidator ValidationGroup="3" ID="RegularExpressionValidator10" ControlToValidate="depNic" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="^([0-9]{9}[x|X|v|V]|[0-9]{12})$">
									Invalid NIC</asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Working Company : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="workingCompany" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>City : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="city" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%} %>

                        <div id="depRowId" runat="server">
                            <div class="row mt-4">
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-4">
                                            <label>ID : </label>
                                        </div>
                                        <div class="col-6">
                                            <asp:TextBox ID="depId" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%} %>
                    </ContentTemplate>
                </asp:UpdatePanel>


                <%----------------------------------------------------------------------------%>


                <div class="row mt-5 mb-4">
                    <div class="col-2">
                        <asp:Button runat="server" ID="Button3" Text="Update" ValidationGroup="5" OnClick="submitDependant" CssClass="btn btn-primary btn-user btn-block" />
                    </div>
                </div>
            </div>


            <%-------- tab 6 --------%>

            <div id="educationDetails" class="tab-pane fade in active mr-4">

                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>

                        <h3>Education Details</h3>

                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Select Exam Index: </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:DropDownList ID="ddlEducationDetailsList" runat="server" OnSelectedIndexChanged="ddlEducation_SelectedIndexChanged" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%if (ddlEducationDetailsList.SelectedValue != "")
                            {  %>

                        <div class="row mt-5">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Education Type : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:DropDownList ID="ddlEducation" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
                                    </div>
                                </div>
                            </div>



                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Institute / School / University : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="uni" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Index Number: </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="index" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>


                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Year : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="year" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>



                        <%if (ddlEducation.SelectedValue == "4" || ddlEducation.SelectedValue == "5")
                            {  %>

                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Attempt : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="attempt" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Subject : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="sub" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Stream : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="stream" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Grade : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="grade" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <%} %>

                        <div class="row mt-4">
                            <div class="col-6">
                                <div class="row">
                                    <div class="col-4">
                                        <label>Status : </label>
                                    </div>
                                    <div class="col-6">
                                        <asp:TextBox ID="status" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div id="eduRowId" runat="server">
                            <div class="row mt-4">
                                <div class="col-6">
                                    <div class="row">
                                        <div class="col-4">
                                            <label>ID : </label>
                                        </div>
                                        <div class="col-6">
                                            <asp:TextBox ID="eduId" runat="server" CssClass="form-control form-control-user"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <%} %>
                    </ContentTemplate>
                </asp:UpdatePanel>


                <%----------------------------------------------------------------------------%>


                <div class="row mt-5 mb-4">
                    <div class="col-2">
                        <asp:Button runat="server" ID="Button5" Text="Update" ValidationGroup="5" OnClick="submitEducation" CssClass="btn btn-primary btn-user btn-block" />
                    </div>
                </div>
            </div>


        </div>
    </div>
</asp:Content>