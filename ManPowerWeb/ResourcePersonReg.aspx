﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResourcePersonReg.aspx.cs" Inherits="ManPowerWeb.ResourcePersonReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="padding-left:30px;">
    <h2>Resource Person</h2>
        <br /><br />

		<div class="row">
			<div class="col-3">
				<label>Resource Person Type : </label>
			</div>
			<div class="col-9">
				<asp:DropDownList ID="ddlType" runat="server" CssClass="dropdown-toggle form-control" Width="230px"></asp:DropDownList>
			</div>
		</div><br /><br />

		<div class="row">
			<div class="col-3">
				<label>NIC :</label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="nic" runat="server"  Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="nic" ID="RequiredFieldValidator13" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Name :</label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="name" runat="server"  Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="name" ID="RequiredFieldValidator14" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Designation :</label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="desig" runat="server"  Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="desig" ID="RequiredFieldValidator15" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Work Place :</label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="workPlace" runat="server"  Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="workPlace" ID="RequiredFieldValidator16" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Qualifications :</label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="qalifications" runat="server"  Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="qalifications" ID="RequiredFieldValidator17" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Personal Address :</label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="address" runat="server"  Width="230px" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
				<asp:RequiredFieldValidator ControlToValidate="address" ID="RequiredFieldValidator18" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1"  ForeColor="Red">*</asp:RequiredFieldValidator>
			</div>
		</div><br />

		<div class="row">
			<div class="col-3">
				<label>Contact Number : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="contact" runat="server" name="place" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1" ControlToValidate="contact" ForeColor="Red">*</asp:RequiredFieldValidator>
				<asp:RegularExpressionValidator ID="revMobNo" runat="server" ErrorMessage="Invalid Mobile Number."
                                ValidationExpression="^([0-9]{10})$" ControlToValidate="contact" ValidationGroup="1"
                                ForeColor="Red" Display="Dynamic">Invalid Mobile Number</asp:RegularExpressionValidator>
			</div>
		</div>
		<br/> 

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
				<label>Email : </label>
			</div>
			<div class="col-9">
				<asp:TextBox ID="email" runat="server" Width="230px" CssClass="form-control form-control-user"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1" ControlToValidate="email" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="email" runat="server" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email</asp:RegularExpressionValidator>
			</div>
		</div><br /> 

		<div class="row">
			<div class="col-2">
				<asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-primary btn-user btn-block" OnClick="btnSave_Click" ValidationGroup="1"/>
			</div>
			<div class="col-2">
				<asp:Button runat="server" ID="Button1" Text="Clear" CssClass="btn btn-primary btn-user btn-block" OnClick="btnClear_Click" />
			</div>
		</div><br />

    </div>
</asp:Content>
