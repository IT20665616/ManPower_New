﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" EnableEventValidation="true" CodeBehind="PersonalFiles.aspx.cs" Inherits="ManPowerWeb.PersonalFiles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server" >
	<%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
		<ContentTemplate>--%>
    <div class="container">
    <h2>Personal Files Management</h2>
        <br /><br />

		<%--<%int count = 0; %>
		<%if (Count == 0) { %>--%>

		<div id="id1" runat="server">
			<h4><b>Personal Details</b></h4>

			<br />
			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Last Name : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="lname" runat="server" Width="230px" CssClass="form-control form-control-user" ></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="lname" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ValidationGroup="1" ID="RegularExpressionValidator12" ControlToValidate="lname" runat="server" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$">
									Invalid Name</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Initials : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="initial" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="initial" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Name Denoted by Initials : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="nameOfInitials" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="nameOfInitials" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ValidationGroup="1" ID="RegularExpressionValidator13" ControlToValidate="nameOfInitials" runat="server" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$">
									Invalid Name</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Gender : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlGender" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Ethnicity : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlEthnicity" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Religion : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlReligion" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>
			</div><br /><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Date of Birth : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="dob" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="dob" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Marital Status : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlMaritalStatus" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>NIC : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="nic" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="nic" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ValidationGroup="1" ID="RegularExpressionValidator8" ControlToValidate="nic" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="^([0-9]{9}[x|X|v|V]|[0-9]{12})$">
							Invalid NIC</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>NIC Issued Date : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="nicIssuedDate" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="nicIssuedDate" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />
			
			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Passport Number : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="empPassport" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RegularExpressionValidator ValidationGroup="1" ID="RegularExpressionValidator9" ControlToValidate="empPassport" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="^(?!^0+$)[a-zA-Z0-9]{3,20}$">
							Invalid Passport</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>District : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlDistrict" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged"></asp:DropDownList>
							<asp:RequiredFieldValidator ControlToValidate="ddlDistrict" ID="RequiredFieldValidator54" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>DS Division : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlDS" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>
			</div><br />
			
			<br /><br />

			<div class="row justify-content-end">
				<div class="col-3">
					<asp:Button runat="server" ID="page1" Text="Next >>" CssClass="btn btn-success btn-user btn-block" Width ="130px"  onClick="page1NextClick" ValidationGroup="1"/>
				</div>
			</div><br />
		</div>

	<%---------------------------------------------------------------------%>		

		<%--<% } %>


		<%else if (Count == 1) { %>--%>

		<div id="id2" runat="server">


			<h4><b>Employement Details</b></h4>

			<br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Contract Type : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddContract" Width="230px" runat="server" AutoPostBack="true" Class="btn  btn-primary dropdown-toggle"
								data-bs-toggle="dropdown" aria-expanded="false"></asp:DropDownList>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Designation : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlDesignation" Width="230px" runat="server" AutoPostBack="true" Class="btn  btn-primary dropdown-toggle"
								data-bs-toggle="dropdown" aria-expanded="false"></asp:DropDownList>
						</div>
					</div>
				</div>
			</div><br /><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Company Name : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="companyName" runat="server" Width="230px" CssClass="form-control form-control-user" ></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="companyName" ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="2"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Epf : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="epf" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Number"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="epf" ID="RequiredFieldValidator15" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="2"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ValidationGroup="3" ID="RegularExpressionValidator11" ControlToValidate="epf" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\d+$">
							Invalid EPF</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>
			</div><br />

			

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Start Date : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="sDate" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="sDate" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="2"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				<% if (ddContract.SelectedValue == "1" || ddContract.SelectedValue == "2")
                    { %>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>End Date : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="calcDate" runat="server" Width="230px" ReadOnly CssClass="form-control form-control-user"></asp:TextBox>
						</div>
					</div>
				</div>
				<%}
                    else
                    {  %>
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>End Date : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="eDate" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Date" ></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="eDate" ID="RequiredFieldValidator28" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="2"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
				<%} %>
			</div><br />


			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Is Resigned : </label>
						</div>
						<div class="col-8">
							<asp:RadioButtonList ID="reseg" runat="server" AutoPostBack="true">
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="reseg" ValidationGroup="1" ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				<%if (reseg.SelectedValue == "1")
                    {  %>
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Retired Date : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="retiredDate" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="retiredDate" ID="RequiredFieldValidator14" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="2"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
				<%} %>

			</div><br />
			
			<div class="row">
				
			</div><br />

			<asp:Button runat="server" ID="Button3" Text="Add" CssClass="btn btn-primary btn-user btn-block"  Width ="130px" OnClick="addEmployment" ValidationGroup="2"/>

			<br /><br />

			<div cssClass="table-responsive" style="width: 100%;">
				<asp:GridView Style="margin-top: 30px;" ID="emplDetailsGV" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered"
					CellPadding="4" GridLines="None">
					<Columns>
						<asp:BoundField HeaderText="Company Name" DataField="CompanyName" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Start Date" DataField="StartDate" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="End Date" DataField="EndDate" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Retirement Date" DataField="RetirementDate" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Epf" DataField="epf" HeaderStyle-CssClass="table-dark" />
						<asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="table-dark" >
							<ItemTemplate>
								<asp:LinkButton CssClass="btn btn-danger" ID="btnAction" runat="server" OnClick="RemoveEmployDetails">Remove</asp:LinkButton>
							</ItemTemplate>
						</asp:TemplateField>
					</Columns>
				</asp:GridView>
			</div>
			
			<br /><br />

			<div class="row justify-content-around">
				<div class="col-9">
					<asp:Button runat="server" ID="page21" Text="<< Previous" CssClass="btn btn-success btn-user btn-block"  Width ="130px" onClick="page2PrevClick"/>
				</div>
				<div class="col-3" style="text-align:end">
					<asp:Button runat="server" ID="page22" Text="Next >>" CssClass="btn btn-success btn-user btn-block" Width ="130px" onClick="page2NextClick"/>
				</div>
			</div><br />

	</div>
		<%--<% } %>

		<%else if (Count == 2) { %>--%>

		<%-----------------------------------------------------------%>

		<div id="id3" runat="server">
			<h4><b>Dependant Details</b></h4>

			<br />
			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Dependant Type : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlDependant" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Relationship : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="dependantRelationship" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="dependantRelationship" ID="RequiredFieldValidator16" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>First Name : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="dependantFname" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="dependantFname" ID="RequiredFieldValidator17" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Last Name : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="dependantLname" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="dependantLname" ID="RequiredFieldValidator18" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Date of Birth: </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="depDob" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="depDob" ID="RequiredFieldValidator19" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Birth Certificate Number : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="bcNumber" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="bcNumber" ID="RequiredFieldValidator20" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Passport Number : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="ppNumber" runat="server" Width="230px" CssClass="form-control form-control-user" ></asp:TextBox>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Any Kind of Special Sickness : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="sickness" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
						</div>
					</div>
				</div>
			</div><br />

			<%if (ddlDependant.SelectedValue == "1")
              { %>

					<div class="row">
						<div class="col-6">
							<div class="row">
								<div class="col-4" >
									<label>Marriage Date : </label>
								</div>
								<div class="col-8">
									<asp:TextBox ID="mDate" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
									<asp:RequiredFieldValidator ControlToValidate="mDate" ID="RequiredFieldValidator23" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>								
								</div>
							</div>
						</div>

						<div class="col-6">
							<div class="row">
								<div class="col-4" >
									<label>Marriage Certificate Number : </label>
								</div>
								<div class="col-8">
									<asp:TextBox ID="mCertificateNo" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
									<asp:RequiredFieldValidator ControlToValidate="mCertificateNo" ID="RequiredFieldValidator24" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>								
								</div>
							</div>
						</div>
					</div><br />

					<div class="row">
						<div class="col-6">
							<div class="row">
								<div class="col-4" >
									<label>Nic Number : </label>
								</div>
								<div class="col-8">
									<asp:TextBox ID="depNic" runat="server" Width="230px" CssClass="form-control form-control-user" ></asp:TextBox>
									<asp:RequiredFieldValidator ControlToValidate="depNic" ID="RequiredFieldValidator25" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>	
									<asp:RegularExpressionValidator ValidationGroup="3" ID="RegularExpressionValidator10" ControlToValidate="depNic" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="^([0-9]{9}[x|X|v|V]|[0-9]{12})$">
									Invalid NIC</asp:RegularExpressionValidator>
								</div>
							</div>
						</div>

						<div class="col-6">
							<div class="row">
								<div class="col-4" >
									<label>Working Company : </label>
								</div>
								<div class="col-8">
									<asp:TextBox ID="workingCompany" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
									<asp:RequiredFieldValidator ControlToValidate="workingCompany" ID="RequiredFieldValidator26" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>								
								</div>
							</div>
						</div>
					</div><br />

					<div class="row">
						<div class="col-6">
							<div class="row">
								<div class="col-4" >
									<label>City : </label>
								</div>
								<div class="col-8">
									<asp:TextBox ID="city" runat="server" Width="230px" CssClass="form-control form-control-user" ></asp:TextBox>
									<asp:RequiredFieldValidator ControlToValidate="city" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="3"  ForeColor="Red">*</asp:RequiredFieldValidator>								
								</div>
							</div>
						</div>
					</div><br />
			<%} %>

		<br /><br />

			<asp:Button runat="server" ID="add" Text="Add" CssClass="btn btn-primary btn-user btn-block"  Width ="130px" OnClick="addDependant" ValidationGroup="3"/>

			<br /><br />

		<div cssClass="table-responsive" style="width: 100%;">
            <asp:GridView Style="margin-top: 30px;" ID="dependantGV" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered"
                CellPadding="4" GridLines="None">
                <Columns>
                    <asp:BoundField HeaderText="First Name" DataField="FirstName" HeaderStyle-CssClass="table-dark" />
                    <asp:BoundField HeaderText="Last Name" DataField="LastName" HeaderStyle-CssClass="table-dark" />
                    <asp:BoundField HeaderText="Dependant Passport No" DataField="DependantPassportNo" HeaderStyle-CssClass="table-dark" />
                    <asp:BoundField HeaderText="Date of Birth" DataField="Dob" HeaderStyle-CssClass="table-dark" />
                    <asp:BoundField HeaderText="Relationship to Employee" DataField="RelationshipToEmp" HeaderStyle-CssClass="table-dark" />
                    <asp:BoundField HeaderText="BirthCertificate Number" DataField="BirthCertificateNumber" HeaderStyle-CssClass="table-dark" />
                    <asp:BoundField HeaderText="Special Sickness" DataField="Remarks" HeaderStyle-CssClass="table-dark" />
					<asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="table-dark" >
							<ItemTemplate>
								<asp:LinkButton CssClass="btn btn-danger" ID="btnAction" runat="server" OnClick="RemoveDependant">Remove</asp:LinkButton>
							</ItemTemplate>
					</asp:TemplateField>
                </Columns>
            </asp:GridView>
		</div>

		<%--<% } %>--%>

		<div class="row justify-content-around">
			<div class="col-9">
				<asp:Button runat="server" ID="page31" Text="<< Previous" CssClass="btn btn-success btn-user btn-block"  Width ="130px" onClick="page3PrevClick"/>
			</div>
			<div class="col-3"  style="text-align:end">
				<asp:Button runat="server" ID="page32" Text="Next >>" CssClass="btn btn-success btn-user btn-block" Width ="130px" onClick="page3NextClick"/>
			</div>
		</div><br />
	</div>

		<%---------------------------------------------------------%>

		<div id="id4" runat="server">
			<h4><b>Employee Contact Details</b></h4>

			<br />
			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Address : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="address" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="address" ID="RequiredFieldValidator27" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="4"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Mobile Phone : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="EmpMobilePhone" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="EmpMobilePhone" ID="RequiredFieldValidator52" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="4"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="EmpMobilePhone" ValidationGroup="4"
                                ForeColor="Red" Display="Dynamic">Invalid Telephone Number</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Telephone (Landline): </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="telephone" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="telephone" ID="RequiredFieldValidator31" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="4"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="telephone" ValidationGroup="4"
                                ForeColor="Red" Display="Dynamic">Invalid Telephone Number</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Postal Code : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="postalCode" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Number"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="postalCode" ID="RequiredFieldValidator32" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="4"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Office Phone : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="EmpOfficePhone" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="EmpOfficePhone" ID="RequiredFieldValidator51" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="4"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="EmpOfficePhone" ValidationGroup="4"
                                ForeColor="Red" Display="Dynamic">Invalid Telephone Number</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Personal Email : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="email" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="email" ID="RequiredFieldValidator33" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="4"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ValidationGroup="4" ID="RegularExpressionValidator4" ControlToValidate="email" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
							Invalid Email</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>
			</div><br />

		<br /><br />

			<%--<div class="row">
				
			</div><br />

			<asp:Button runat="server" ID="Button7" Text="Add" CssClass="btn btn-primary btn-user btn-block"  Width ="130px" OnClick="addContact" ValidationGroup="2"/>

			<br /><br />

			<div cssClass="table-responsive" style="width: 100%;">
				<asp:GridView Style="margin-top: 30px;" ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered"
					CellPadding="4" GridLines="None">
					<Columns>
						<asp:BoundField HeaderText="Employee Id" DataField="EmpID" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Company Name" DataField="CompanyName" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Start Date" DataField="StartDate" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="End Date" DataField="EndDate" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Retirement Date" DataField="RetirementDate" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Epf" DataField="epf" HeaderStyle-CssClass="table-dark" />
					</Columns>
				</asp:GridView>
			</div>
			
			<br /><br />--%>

			<div class="row justify-content-around">
			<div class="col-9">
				<asp:Button runat="server" ID="Button1" Text="<< Previous" CssClass="btn btn-success btn-user btn-block"  Width ="130px" onClick="page4PrevClick"/>
			</div>
			<div class="col-3"  style="text-align:end">
				<asp:Button runat="server" ID="Button6" Text="Next >>" CssClass="btn btn-success btn-user btn-block" Width ="130px" onClick="page4NextClick" ValidationGroup="4"/>
			</div>
		</div><br />
		</div>

		<%--<% } %>--%>

		<div id="id5" runat="server">
			<h4><b>Emergency Contact Details</b></h4>

			<br /><br />
			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Name : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="ecName" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="ecName" ID="RequiredFieldValidator34" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="4"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Home Telephone Number : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="landLine" runat="server" Width="230px" CssClass="form-control form-control-user" ></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="landLine" ID="RequiredFieldValidator35" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="5"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="landLine" ValidationGroup="5"
                                ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Relationship To Employee : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="ecRelationship" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="ecRelationship" ID="RequiredFieldValidator36" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="5"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Office Phone Number : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="ecOfficePhone" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="ecOfficePhone" ID="RequiredFieldValidator37" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="5"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="ecOfficePhone" ValidationGroup="5"
                                ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Address of Emergancy Contact Person : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="ecAddress" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="ecAddress" ID="RequiredFieldValidator38" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="5"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Mobile Number : </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="ecMobile" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="ecMobile" ID="RequiredFieldValidator39" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="5"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ID="revMobNo" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="ecMobile" ValidationGroup="5"
                                ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Personal Email : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="ecEmail" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="ecEmail" ID="RequiredFieldValidator40" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="5"  ForeColor="Red">*</asp:RequiredFieldValidator>
							<asp:RegularExpressionValidator ValidationGroup="5" ID="RegularExpressionValidator2" ControlToValidate="ecEmail" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
							Invalid Email</asp:RegularExpressionValidator>
						</div>
					</div>
				</div>
			</div><br />

		<br /><br />

		<%--<% } %>--%>

		<div class="row justify-content-around">
			<div class="col-9">
				<asp:Button runat="server" ID="page41" Text="<< Previous" CssClass="btn btn-success btn-user btn-block"  Width ="130px" onClick="page5PrevClick"/>
			</div>
			<div class="col-3"  style="text-align:end">
				<asp:Button runat="server" ID="page42" Text="Next >>" CssClass="btn btn-success btn-user btn-block" Width ="130px" onClick="page5NextClick" ValidationGroup="5"/>
			</div>
		</div><br />
	</div>

		
		<%-----------------------------------------------------------%>

		<div id="id6" runat="server">
			<h4><b>Education Details</b></h4>

			<br /><br />
			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Education Type : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlEducation" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>

				

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Institute / School / University : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="uni" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="uni" ID="RequiredFieldValidator41" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="6"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Index Number: </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="index" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="index" ID="RequiredFieldValidator42" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="6"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
				

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Year : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlYear" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>
			</div><br /><br />

			<%if (ddlEducation.SelectedValue == "4" || ddlEducation.SelectedValue == "5")
                {  %>

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Attempt : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlAttempt" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Subject : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="sub" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="sub" ID="RequiredFieldValidator43" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="6"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Stream : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="stream" runat="server" Width="230px" CssClass="form-control form-control-user" ></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="stream" ID="RequiredFieldValidator44" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="6"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Grade : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="grade" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="grade" ID="RequiredFieldValidator45" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="6"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<%} %>

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Status : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlEducationStatus" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>
				
			</div><br />

			<asp:Button runat="server" ID="Button4" Text="Add" CssClass="btn btn-primary btn-user btn-block"  Width ="130px" OnClick="addEducation" ValidationGroup="6"/>

			<br /><br />

			<div cssClass="table-responsive" style="width: 100%;">
				<asp:GridView Style="margin-top: 30px;" ID="educationGV" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered"
					CellPadding="4" GridLines="None">
					<Columns>
						<asp:BoundField HeaderText="Education Type" DataField="EducationTypeId" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Studied Institute" DataField="StudiedInstitute" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Attempt" DataField="NoOfAttempts" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Exam Year" DataField="ExamYear" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Index" DataField="ExamIndex" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Subject" DataField="ExamSubject" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Grade" DataField="ExamGrade" HeaderStyle-CssClass="table-dark" />
						<asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="table-dark" >
							<ItemTemplate>
								<asp:LinkButton CssClass="btn btn-danger" ID="btnAction" runat="server" OnClick="RemoveEducation">Remove</asp:LinkButton>
							</ItemTemplate>
					</asp:TemplateField>
					</Columns>
				</asp:GridView>
			</div>

			<br /><br />

		<%--<% } %>--%>

		<div class="row justify-content-around">
			<div class="col-9">
				<asp:Button runat="server" ID="aa" Text="<< Previous" CssClass="btn btn-success btn-user btn-block"  Width ="130px" onClick="page6PrevClick"/>
			</div>
			<div class="col-3"  style="text-align:end">
				<asp:Button runat="server" ID="Button2" Text="Next >>" CssClass="btn btn-success btn-user btn-block" Width ="130px" onClick="page6NextClick"/>
			</div>
		</div><br />
	</div>


		<div id="id7" runat="server">
			<h4><b>Employee Services Details</b></h4>

			<br /><br />
			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Service Type : </label>
						</div>
						<div class="col-8">
							<asp:DropDownList ID="ddlService" Width="230px" runat="server" AutoPostBack="true" CssClass="dropdown-toggle form-control"></asp:DropDownList>
						</div>
					</div>
				</div>

				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Date of Appointment: </label>
						</div>
						<div class="col-8" >
							<asp:TextBox ID="appointmentDate" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="appointmentDate" ID="RequiredFieldValidator47" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="7"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Date Assumed Duty : </label>
						</div>
						<div class="col-8">
							<asp:TextBox ID="dateAssumedDuty" runat="server" Width="230px" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
							<asp:RequiredFieldValidator ControlToValidate="dateAssumedDuty" ID="RequiredFieldValidator48" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="7"  ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<%if (int.Parse(ddlService.SelectedValue) == 2)
            { %>

				<div class="row">
					<div class="col-6">
						<div class="row">
							<div class="col-4" >
								<label>Medium of Recruitment : </label>
							</div>
							<div class="col-8" >
								<asp:TextBox ID="medium" runat="server" Width="230px" CssClass="form-control form-control-user" ></asp:TextBox>
								<asp:RequiredFieldValidator ControlToValidate="medium" ID="RequiredFieldValidator49" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="7"  ForeColor="Red">*</asp:RequiredFieldValidator>
							</div>
						</div>
					</div>

					<div class="col-6">
						<div class="row">
							<div class="col-4" >
								<label>Method of Recruitment : </label>
							</div>
							<div class="col-8" >
								<asp:TextBox ID="method" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
								<asp:RequiredFieldValidator ControlToValidate="method" ID="RequiredFieldValidator50" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="7"  ForeColor="Red">*</asp:RequiredFieldValidator>
							</div>
						</div>
					</div>
				</div><br />

			<%} %>

			<div class="row">
				<div class="col-6">
					<div class="row">
						<div class="col-4" >
							<label>Is Confirmed : </label>
						</div>
						<div class="col-8">
							<asp:RadioButtonList ID="confirmation" runat="server" AutoPostBack="true" >
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="confirmation" ValidationGroup="7" ForeColor="Red">*</asp:RequiredFieldValidator>
						</div>
					</div>
				</div>
			</div><br />

			<asp:Button runat="server" ID="Button5" Text="Add" CssClass="btn btn-primary btn-user btn-block"  Width ="130px" OnClick="addServices" ValidationGroup="7"/>

			<br /><br />

			<div cssClass="table-responsive" style="width: 100%;">
				<asp:GridView Style="margin-top: 30px;" ID="servicesGV" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered"
					CellPadding="4" GridLines="None">
					<Columns>
						<asp:BoundField HeaderText="Services Type" DataField="ServicesTypeId" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Appointment Date" DataField="AppointmentDate" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Date Assumed Duty" DataField="DateAssumedDuty" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Method Of Recruitment" DataField="MethodOfRecruitment" HeaderStyle-CssClass="table-dark" />
						<asp:BoundField HeaderText="Medium Of Recruitment" DataField="MediumOfRecruitment" HeaderStyle-CssClass="table-dark" />
						<asp:TemplateField HeaderText="Action" HeaderStyle-CssClass="table-dark" >
							<ItemTemplate>
								<asp:LinkButton CssClass="btn btn-danger" ID="btnAction" runat="server" OnClick="RemoveServices">Remove</asp:LinkButton>
							</ItemTemplate>
					</asp:TemplateField>
					</Columns>
				</asp:GridView>
			</div>

		<br /><br />


		<%--<% } %>--%>

		<div class="row justify-content-around">
			<div class="col-9">
				<asp:Button runat="server" ID="nn" Text="<< Previous" CssClass="btn btn-success btn-user btn-block"  Width ="130px" onClick="page7PrevClick"/>
			</div>
			<div class="col-3"  style="text-align:end">
				<asp:Button runat="server" ID="mm" Text="Submit" CssClass="btn btn-danger btn-user btn-block" Width ="130px" onClick="submit"/>
			</div>
		</div><br />
	</div>

    </div>
			<%--</ContentTemplate>
		</asp:UpdatePanel>--%>
</asp:Content>

