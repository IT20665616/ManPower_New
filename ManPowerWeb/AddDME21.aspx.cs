﻿using ManPowerCore.Common;
using ManPowerCore.Controller;
using ManPowerCore.Domain;
using Microsoft.Ajax.Utilities;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManPowerWeb
{
    public partial class AddDME21 : System.Web.UI.Page
    {
        TaskAllocation taskAllocation = new TaskAllocation();
        TaskAllocationDetail taskAllocationDetail = new TaskAllocationDetail();
        List<TaskType> taskTypeList = new List<TaskType>();
        List<ProgramPlan> programPlanList = new List<ProgramPlan>();
        List<TaskAllocation> taskAllocationList;
        public int depId;
        public int flag = 0;
        public int worktype;
        public int programId;
        public string description;
        public string duty;
        public string date1;
        public int taskAllocationId;
        public int rowIndex;

        public DateTime date;
        public string name;
        public int year;

        protected void Page_Load(object sender, EventArgs e)
        {
            date1 = Request.QueryString["date"].ToString();

            depId = Convert.ToInt32(Session["DepUnitPositionId"]);

            year = DateTime.Now.Year;

            name = Session["Name"].ToString();

            rowIndex = Convert.ToInt32(Request.QueryString["taskAllocationDetailId"]);
            TaskAllocationDetailController allocationDetail = ControllerFactory.CreateTaskAllocationDetailController();

            taskAllocationDetail = allocationDetail.GetTaskAllocationDetail(rowIndex, false, false, false);

            ProgramDisplay.Visible = false;
            OtherDisplay.Visible = false;
            if (!IsPostBack)
            {

                ProgramDataBind();
                WorkTypeDataBind();
                IsUpdate();
            }
            DivVisibility();
        }

        private void IsUpdate()
        {
            if (rowIndex > 0)
            {
                ddlWorkType.SelectedValue = taskAllocationDetail.TaskTypeId.ToString();
                txtDuty.Text = taskAllocationDetail.TaskDescription;
                txtPlace.Text = taskAllocationDetail.WorkLocation;
                txtRemarks.Text = taskAllocationDetail.TaskRemarks;
                ddlProgram.SelectedValue = taskAllocationDetail.programPlanId.ToString();
                LinkButton1.Text = "Update";
            }
        }

        private void WorkTypeDataBind()
        {
            TaskTypeController taskTypeController = ControllerFactory.CreateTaskTypeController();
            taskTypeList = taskTypeController.GetAllTaskType(false);
            ddlWorkType.DataSource = taskTypeList;
            ddlWorkType.DataBind();
        }

        private void ProgramDataBind()
        {
            ProgramPlanController programPlanController = ControllerFactory.CreateProgramPlanController();
            programPlanList = programPlanController.getddlProgramPlan(depId, year);
            ddlProgram.DataSource = programPlanList;
            ddlProgram.DataBind();
        }

        public void DivVisibility()
        {
            if (ddlWorkType.SelectedValue == "1")
            {
                ProgramDisplay.Visible = true;
                divDuty.Visible = true;
                divPlace.Visible = true;

            }
            else if (ddlWorkType.SelectedValue == "3")
            {
                OtherDisplay.Visible = true;
                divDuty.Visible = true;
                divPlace.Visible = true;
            }
            else if (ddlWorkType.SelectedValue == "2")
            {
                divDuty.Visible = false;
                divPlace.Visible = false;
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            TaskAllocationController allocation = ControllerFactory.CreateTaskAllocationController();

            TaskAllocationDetailController allocationDetail = ControllerFactory.CreateTaskAllocationDetailController();

            if (LinkButton1.Text == "Update")
            {
                worktype = Convert.ToInt32(ddlWorkType.SelectedValue);

                date = DateTime.ParseExact(date1, "yyyy-MM-dd", null);

                string remark = txtRemarks.Text;

                if (remark == null)
                {
                    taskAllocationDetail.TaskAllocationDetailId = taskAllocationDetail.TaskAllocationDetailId;
                    taskAllocationDetail.TaskTypeId = worktype;
                    taskAllocationDetail.TaskAllocationId = taskAllocationDetail.TaskAllocationId;
                    taskAllocationDetail.TaskDescription = txtDuty.Text;
                    taskAllocationDetail.WorkLocation = txtPlace.Text;
                    taskAllocationDetail.Isconmpleated = 0;
                    taskAllocationDetail.NotCompleatedReason = "";
                    taskAllocationDetail.StartTime = date;
                    taskAllocationDetail.EndTime = DateTime.Today;
                    taskAllocationDetail.TaskRemarks = "";
                    taskAllocationDetail.TaskAmendments = "";
                    taskAllocationDetail.programPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                    allocationDetail.UpdateTaskAllocationDetail(taskAllocationDetail);

                    if (worktype == 1)
                    {
                        ProjectTaskController projectTaskController = ControllerFactory.CreateProjectTaskController();
                        ProjectTask projectTaskobj = new ProjectTask();

                        projectTaskobj.TaskAllocationDetailId = taskAllocationDetail.TaskAllocationDetailId;
                        projectTaskobj.ProgramPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                        projectTaskController.saveProjectTask(projectTaskobj);
                    }
                }
                else
                {
                    taskAllocationDetail.TaskAllocationDetailId = taskAllocationDetail.TaskAllocationDetailId;
                    taskAllocationDetail.TaskTypeId = worktype;
                    taskAllocationDetail.TaskAllocationId = taskAllocationDetail.TaskAllocationId;
                    taskAllocationDetail.TaskDescription = txtDuty.Text;
                    taskAllocationDetail.WorkLocation = txtPlace.Text;
                    taskAllocationDetail.Isconmpleated = 0;
                    taskAllocationDetail.NotCompleatedReason = "";
                    taskAllocationDetail.StartTime = date;
                    taskAllocationDetail.EndTime = DateTime.Today;
                    taskAllocationDetail.TaskRemarks = txtRemarks.Text;
                    taskAllocationDetail.TaskAmendments = "";
                    taskAllocationDetail.programPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                    allocationDetail.UpdateTaskAllocationDetail(taskAllocationDetail);

                    if (worktype == 1)
                    {
                        ProjectTaskController projectTaskController = ControllerFactory.CreateProjectTaskController();
                        ProjectTask projectTaskobj = new ProjectTask();

                        projectTaskobj.TaskAllocationDetailId = taskAllocationDetail.TaskAllocationDetailId;
                        projectTaskobj.ProgramPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                        projectTaskController.saveProjectTask(projectTaskobj);
                    }
                }

                Response.Redirect("DME21.aspx");
            }

            else
            {
                taskAllocationList = allocation.GetAllTaskAllocation(false, false, false, false);

                worktype = Convert.ToInt32(ddlWorkType.SelectedValue);

                date = DateTime.ParseExact(date1, "yyyy-MM-dd", null);

                string remark = txtRemarks.Text;


                foreach (var i in taskAllocationList)
                {
                    if (i.DepartmetUnitPossitionsId == depId && i.TaskYearMonth.Month == date.Month && i.TaskYearMonth.Year == date.Year)
                    {
                        flag = 1;
                        taskAllocationId = i.TaskAllocationId;
                    }
                }

                if (flag == 0)
                {
                    taskAllocation.DepartmetUnitPossitionsId = depId;
                    taskAllocation.TaskYearMonth = date;
                    taskAllocation.CreatedDate = DateTime.Today.Date;
                    taskAllocation.CreatedUser = name;
                    taskAllocation.StatusId = 0;
                    taskAllocation.DME21RecommendedBy1 = 0;
                    taskAllocation.RecommendedDate = DateTime.Today;
                    taskAllocation.DME21ApprovedBy = 0;
                    taskAllocation.ApprovedDate = DateTime.Today;
                    taskAllocation.DME21RecommendedBy2 = 0;
                    taskAllocation.DME22_ApprovedBy = 0;

                    int taskAllocationId1 = allocation.saveTaskAllocation(taskAllocation);

                    if (remark == null)
                    {
                        taskAllocationDetail.TaskTypeId = worktype;
                        taskAllocationDetail.TaskAllocationId = taskAllocationId1;
                        taskAllocationDetail.TaskDescription = txtDuty.Text;
                        taskAllocationDetail.WorkLocation = txtPlace.Text;
                        taskAllocationDetail.Isconmpleated = 0;
                        taskAllocationDetail.NotCompleatedReason = "";
                        taskAllocationDetail.StartTime = date;
                        taskAllocationDetail.EndTime = DateTime.Today;
                        taskAllocationDetail.TaskRemarks = "";
                        taskAllocationDetail.TaskAmendments = "";
                        taskAllocationDetail.programPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                        int taskAlocationDetailId = allocationDetail.SaveTaskAllocationDetail(taskAllocationDetail);

                        if (worktype == 1)
                        {
                            ProjectTaskController projectTaskController = ControllerFactory.CreateProjectTaskController();
                            ProjectTask projectTaskobj = new ProjectTask();

                            projectTaskobj.TaskAllocationDetailId = taskAlocationDetailId;
                            projectTaskobj.ProgramPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                            projectTaskController.saveProjectTask(projectTaskobj);
                        }
                    }
                    else
                    {
                        taskAllocationDetail.TaskTypeId = worktype;
                        taskAllocationDetail.TaskAllocationId = taskAllocationId1;
                        taskAllocationDetail.TaskDescription = txtDuty.Text;
                        taskAllocationDetail.WorkLocation = txtPlace.Text;
                        taskAllocationDetail.Isconmpleated = 0;
                        taskAllocationDetail.NotCompleatedReason = "";
                        taskAllocationDetail.StartTime = date;
                        taskAllocationDetail.EndTime = DateTime.Today;
                        taskAllocationDetail.TaskRemarks = txtRemarks.Text;
                        taskAllocationDetail.TaskAmendments = "";
                        taskAllocationDetail.programPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                        int taskAlocationDetailId = allocationDetail.SaveTaskAllocationDetail(taskAllocationDetail);

                        if (worktype == 1)
                        {
                            ProjectTaskController projectTaskController = ControllerFactory.CreateProjectTaskController();
                            ProjectTask projectTaskobj = new ProjectTask();

                            projectTaskobj.TaskAllocationDetailId = taskAlocationDetailId;
                            projectTaskobj.ProgramPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                            projectTaskController.saveProjectTask(projectTaskobj);
                        }
                    }
                }
                else
                {
                    if (remark == null)
                    {
                        taskAllocationDetail.TaskTypeId = worktype;
                        taskAllocationDetail.TaskAllocationId = taskAllocationId;
                        taskAllocationDetail.TaskDescription = txtDuty.Text;
                        taskAllocationDetail.WorkLocation = txtPlace.Text;
                        taskAllocationDetail.Isconmpleated = 0;
                        taskAllocationDetail.NotCompleatedReason = "";
                        taskAllocationDetail.StartTime = date;
                        taskAllocationDetail.EndTime = DateTime.Today;
                        taskAllocationDetail.TaskRemarks = "";
                        taskAllocationDetail.TaskAmendments = "";
                        taskAllocationDetail.programPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                        int taskAlocationDetailId = allocationDetail.SaveTaskAllocationDetail(taskAllocationDetail);

                        if (worktype == 1)
                        {
                            ProjectTaskController projectTaskController = ControllerFactory.CreateProjectTaskController();
                            ProjectTask projectTaskobj = new ProjectTask();

                            projectTaskobj.TaskAllocationDetailId = taskAlocationDetailId;
                            projectTaskobj.ProgramPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                            projectTaskController.saveProjectTask(projectTaskobj);
                        }
                    }
                    else
                    {
                        taskAllocationDetail.TaskTypeId = worktype;
                        taskAllocationDetail.TaskAllocationId = taskAllocationId;
                        taskAllocationDetail.TaskDescription = txtDuty.Text;
                        taskAllocationDetail.WorkLocation = txtPlace.Text;
                        taskAllocationDetail.Isconmpleated = 0;
                        taskAllocationDetail.NotCompleatedReason = "";
                        taskAllocationDetail.StartTime = date;
                        taskAllocationDetail.EndTime = DateTime.Today;
                        taskAllocationDetail.TaskRemarks = txtRemarks.Text;
                        taskAllocationDetail.TaskAmendments = "";
                        taskAllocationDetail.programPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                        int taskAlocationDetailId = allocationDetail.SaveTaskAllocationDetail(taskAllocationDetail);

                        if (worktype == 1)
                        {
                            ProjectTaskController projectTaskController = ControllerFactory.CreateProjectTaskController();
                            ProjectTask projectTaskobj = new ProjectTask();

                            projectTaskobj.TaskAllocationDetailId = taskAlocationDetailId;
                            projectTaskobj.ProgramPlanId = Convert.ToInt32(ddlProgram.SelectedValue);

                            projectTaskController.saveProjectTask(projectTaskobj);
                        }
                    }
                }
                Response.Redirect("DME21.aspx");
            }
        }
    }
}