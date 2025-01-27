﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SpecialAmendment.aspx.cs" Inherits="ManPowerWeb.SpecialAmendment" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>DME21</h2>
    <div class="row mb-5">
        <div class="col-sm-6">
            <asp:Label>Year : <%=Year%></asp:Label>
        </div>
        <div class="col-sm-6">
            <asp:Label>Month : <%=Month%></asp:Label>
        </div>
    </div>
    <div cssclass="table-responsive">
        <asp:GridView ID="DME21GridView" runat="server" CssClass="table table-bordered" AutoGenerateColumns="False"
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="StartTime.Date" HeaderText="Date" />
                <asp:BoundField DataField="_TaskType.TaskTypeName" HeaderText="Work Type" />
                <asp:BoundField DataField="TaskDescription" HeaderText="Performed Duty" />
                <asp:BoundField DataField="WorkLocation" HeaderText="Work Attended place" />
                <asp:BoundField DataField="TaskAmendments" HeaderText="Remark" />
                <asp:TemplateField HeaderText="Edit DME21">
                    <ItemTemplate>
                        <asp:LinkButton CssClass="btn btn-outline-secondary" ID="btnEdit" runat="server" OnClick="btnEdit_Click">Edit DME21</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <div style="margin-top: 20px; margin-bottom: 20px; text-align: end">
        <asp:LinkButton ID="btnApproval" runat="server" OnClick="btnApproval_Click" Style="width: 250px;" CssClass="btn btn-outline-secondary">Send to Approval</asp:LinkButton>
    </div>
</asp:Content>
