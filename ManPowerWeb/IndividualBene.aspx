﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IndividualBene.aspx.cs" Inherits="ManPowerWeb.IndividualBene" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container" style="padding-left:30px;">
    <h2>Individual Beneficiary Registration</h2>
        <br /><br />

        
		<div class="row">
			<div class="col-3">
				<label>NIC :</label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="nic" runat="server"  Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="nic" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div>

		<br/>

		<div class="row">
			<div class="col-3">
				<label>Name : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="name" runat="server" name="place" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="name" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div>
		<br/> 

		<div class="row">
			<div class="col-3">
				<label>Gender : </label>
			</div>
			<div class="col-9">
				<asp:DropDownList ID="ddl1" Width="230px" runat="server" AutoPostBack="true" Class="btn  btn-primary dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false"></asp:DropDownList>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Date of Birth : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="dob" runat="server" name="date" Width="230px" CssClass="form-control form-control-user" TextMode="Date"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="dob" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div>
		<br />


		<div class="row">
			<div class="col-3">
				<label>Personal Address : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="address" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="address" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br /> 

		<div class="row">
			<div class="col-3">
				<label>Email : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="email" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="address" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="email" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
					Invalid Email</asp:RegularExpressionValidator>
			</div>
		</div><br /> 

		<div class="row">
			<div class="col-3">
				<label>Job Preference : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="jobType" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="jobType" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br /> 

		<div class="row">
			<div class="col-3">
				<label>Contact Number : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="contact" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1" ControlToValidate="contact" ForeColor="Red">*</asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="revMobNo" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="contact" ValidationGroup="1"
                                ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Whatsapp Number : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="whatsapp" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1" ControlToValidate="whatsapp" ForeColor="Red">*</asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="whatsapp" ValidationGroup="1"
                                ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>School / Non School : </label>
			</div>
			<div class="col-9">
				<asp:DropDownList ID="ddl2" Width="230px" runat="server" AutoPostBack="true" Class="btn  btn-primary dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false"></asp:DropDownList>
			</div>
		</div><br /> <br />


		<%if (ddl2.Text == "School")
			{ %>

		<div class="row">
			<div class="col-3">
				<label>Name of the School : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="sclName" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="sclName" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Address of the School : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="sclAddress" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="sclAddress" ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Grade : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="grade" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="grade" ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Parent NIC : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="parentNic" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="parentNic" ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<%} %>
		
		<br /><br />

		<div class="row">
			<div class="col-2">
				<asp:Button runat="server" ID="Button2" Text="Back" CssClass="btn btn-primary btn-user btn-block" OnClick="isClicked" ValidationGroup="1" />
			</div>
			<div class="col-2">
				<asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-primary btn-user btn-block" OnClick="btnSave_Click" ValidationGroup="1" />
			</div>
			<div class="col-2">
				<asp:Button runat="server" ID="Button1" Text="Clear" CssClass="btn btn-primary btn-user btn-block" OnClick="btnClear_Click" />
			</div>
		</div><br />

    </div>
</asp:Content>
