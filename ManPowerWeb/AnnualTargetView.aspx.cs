﻿using ManPowerCore.Common;
using ManPowerCore.Controller;
using ManPowerCore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace ManPowerWeb
{
    public partial class AnnualTargetView : System.Web.UI.Page
    {

        int ProgramTargetId;

        List<ProgramTarget> programTargetsList = new List<ProgramTarget>();
        List<ProgramTarget> myList = new List<ProgramTarget>();
        List<ProgramType> listProgramType = new List<ProgramType>();
        List<Possitions> PositionList = new List<Possitions>();
        List<Program> program = new List<Program>();
        List<DepartmentUnitPositions> listUser = new List<DepartmentUnitPositions>();
        List<VoteAllocation> voteAllocationList = new List<VoteAllocation>();
        List<DepartmentUnit> listDistrict = new List<DepartmentUnit>();
        List<DepartmentUnit> listDSDivision = new List<DepartmentUnit>();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {

                ProgramTypeController programTypeController = ControllerFactory.CreateProgramTypeController();
                listProgramType = programTypeController.GetAllProgramType(false);
                ddlProgramType.DataSource = listProgramType;
                ddlProgramType.DataTextField = "ProgramTypeName";
                ddlProgramType.DataValueField = "ProgramTypeId";
                ddlProgramType.DataBind();

                DepartmentUnitTypeController _DepartmentUnitTypeController = ControllerFactory.CreateDepartmentUnitTypeController();
                listDistrict = _DepartmentUnitTypeController.GetDepartmentUnitType(2, true)._DepartmentUnit;
                listDSDivision = _DepartmentUnitTypeController.GetDepartmentUnitType(3, true)._DepartmentUnit;

                ddlDistrict.DataSource = listDistrict;
                ddlDistrict.DataTextField = "Name";
                ddlDistrict.DataValueField = "DepartmentUnitId";
                ddlDistrict.DataBind();

                ddlDSDivision.DataSource = listDSDivision;
                ddlDSDivision.DataTextField = "Name";
                ddlDSDivision.DataValueField = "DepartmentUnitId";
                ddlDSDivision.DataBind();


                PossitionsController possitionsController = ControllerFactory.CreatePossitionsController();
                PositionList = possitionsController.GetAllPossitions(false, false);
                ddlPosition.DataSource = PositionList;
                ddlPosition.DataTextField = "PositionName";
                ddlPosition.DataValueField = "PossitionId";
                ddlPosition.DataBind();

                bindData();
                bindOficerRecomendation();

                if (Convert.ToInt32(Request.QueryString["Status"]) == 0)
                {
                    btnSendToRecommendation.Visible = true;
                }
            }



        }

        private void bindData()
        {
            ProgramTargetId = Convert.ToInt32(Request.QueryString["ProgramTargetId"]);

            ProgramTargetController programTargetController = ControllerFactory.CreateProgramTargetController();
            programTargetsList = programTargetController.GetAllProgramTarget(true, true, true, true);



            ProgramController programController = ControllerFactory.CreateProgramController();
            program = programController.GetAllProgram(false, false);
            ddlProgram.DataSource = program;
            ddlProgram.DataTextField = "ProgramName";
            ddlProgram.DataValueField = "ProgramId";
            ddlProgram.DataBind();

            VoteAllocationController voteAllocationController = ControllerFactory.CreateVoteAllocationController();

            voteAllocationList = voteAllocationController.GetAllVoteAllocation(false);




            foreach (var i in programTargetsList.Where(u => u.ProgramTargetId == ProgramTargetId))
            {
                myList.Add(i);
            }

            DepartmentUnitPositionsController departmentUnitPositionsController = ControllerFactory.CreateDepartmentUnitPositionsController();
            DepartmentUnitPositions departmentUnitPositions = departmentUnitPositionsController.GetDepartmentUnitPositions(myList[0]._ProgramAssignee[0].DepartmentUnitPossitionsId, false, false, true, true, true);

            SystemUserController systemUserController = ControllerFactory.CreateSystemUserController();
            // SystemUser systemUser = systemUserController.GetSystemUser(myList[0]._ProgramAssignee[0].ProgramAssigneeId,true, false, false);

            voteAllocationList = voteAllocationList.Where(x => x.Id == Convert.ToInt32(myList[0].VoteNumber)).ToList();

            lblofficer.Text = departmentUnitPositions._SystemUser.Name;
            ViewState["SelectedOfficerId"] = departmentUnitPositions._SystemUser.SystemUserId;
            txtlYear.Text = myList[0].TargetYear.ToString();
            ddlMonth.Text = myList[0].TargetMonth.ToString();
            txtDescription.Text = myList[0].Description;
            txtVote.Text = voteAllocationList[0].VoteNumber;
            ddlMonth.Text = myList[0].TargetMonth.ToString();
            txtInstructions.Text = myList[0].Instractions.ToString();
            txtOutcome.Text = myList[0].Outcome.ToString();
            txtFinancialCount.Text = myList[0].EstimatedAmount.ToString();
            txtOutput.Text = myList[0].Output.ToString();
            txtPhysicalCount.Text = myList[0].NoOfProjects.ToString();
            ddlProgramType.SelectedValue = myList[0].ProgramTypeId.ToString();
            ddlProgram.SelectedValue = myList[0].ProgramId.ToString();
            txtStratDate.Text = myList[0].StartDate.ToString("yyyy-MM-dd");
            txtEndDate.Text = myList[0].EndDate.ToString("yyyy-MM-dd");
            txtRemarks.Text = myList[0].Remarks.ToString();

            txtOutputDes.Text = myList[0].Output_Description;
            txtOutcomeDes.Text = myList[0].Outcome_Description;



            switch (Convert.ToInt32(myList[0].Period_Type))
            {
                case 1:
                    lblType.Text = "Annualy";
                    rowMonth.Visible = false;
                    break;
                case 2:
                    lblType.Text = "First Quarterly";
                    rowMonth.Visible = false;
                    break;
                case 3:
                    lblType.Text = "Second Quarterly";
                    rowMonth.Visible = false;
                    break;
                case 4:
                    lblType.Text = "Third Quarterly";
                    rowMonth.Visible = false;
                    break;
                case 5:
                    lblType.Text = "Fourth Quarterly";
                    rowMonth.Visible = false;
                    break;
                case 6:
                    lblType.Text = "Monthly";
                    rowMonth.Visible = true;
                    break;

            }



            if (Convert.ToInt32(Request.QueryString["Status"]) == 3)
            {
                rowRejectRemarks.Visible = true;
                txtRejectRemarks.Text = myList[0].RejectRemarks;
            }

            if (departmentUnitPositions._DepartmentUnit.ParentId == 1)
            {
                ddlDistrict.SelectedValue = departmentUnitPositions._DepartmentUnit.DepartmentUnitId.ToString();
                rowDsDivision.Visible = false;
                // ddlDSDivision.SelectedValue = departmentUnitPositions._DepartmentUnit.DepartmentUnitId.ToString();
                rbTarget.SelectedValue = "1";
            }
            else
            {
                ddlDistrict.SelectedValue = departmentUnitPositions._DepartmentUnit.ParentId.ToString();
                rowDsDivision.Visible = true;
                ddlDSDivision.SelectedValue = departmentUnitPositions._DepartmentUnit.DepartmentUnitId.ToString();
                rbTarget.SelectedValue = "2";
            }

            ddlPosition.SelectedValue = departmentUnitPositions.PossitionsId.ToString();


        }

        private void bindOficerRecomendation()
        {
            List<SystemUser> listOficerRecomendation = new List<SystemUser>();
            SystemUserController systemUserController = ControllerFactory.CreateSystemUserController();
            listOficerRecomendation = systemUserController.GetAllSystemUser(false, false, false);

            int userId = Convert.ToInt32(Session["UserId"]);
            int selectedOfficerid = Convert.ToInt32(ViewState["SelectedOfficerId"]);
            ddlOficerRecomended.DataSource = listOficerRecomendation.Where(u => u.UserTypeId == 2 && u.SystemUserId != userId && u.SystemUserId != selectedOfficerid);
            ddlOficerRecomended.DataTextField = "Name";
            ddlOficerRecomended.DataValueField = "SystemUserId";
            ddlOficerRecomended.DataBind();



        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnnualTarget.aspx");
        }




        protected void btnSend_Click(object sender, EventArgs e)
        {
            ProgramTargetId = Convert.ToInt32(Request.QueryString["ProgramTargetId"]);

            ProgramTargetController programTargetController = ControllerFactory.CreateProgramTargetController();
            int selectedOficerRecomendation = Convert.ToInt32(ddlOficerRecomended.SelectedValue);

            int targetresponse = programTargetController.UpdateProgramTargetApprovalRecomended(ProgramTargetId, selectedOficerRecomendation, 1);


            if (targetresponse != 0)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success!', 'Send Recommendation Succesfully!', 'success');window.setTimeout(function(){window.location='AnnualTarget.aspx'},2500);", true);

            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Failed!', 'Something Went wrong!', 'error')", true);

            }

        }
    }
}