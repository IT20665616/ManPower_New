﻿using ManPowerCore.Common;
using ManPowerCore.Controller;
using ManPowerCore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ManPowerWeb
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                if (!IsPostBack)
                {
                    lblName.Text = Session["Name"].ToString();
                    BindSideBar();
                }
            }
            else
            {
                HttpContext.Current.Response.AddHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                HttpContext.Current.Response.AddHeader("Pragma", "no-cache");
                HttpContext.Current.Response.AddHeader("Expires", "0");
                Response.Redirect("Login.aspx");
            }
        }


        protected void BindSideBar()
        {
            int userId = Convert.ToInt32(Session["UserId"]);
            int userType = Convert.ToInt32(Session["UserTypeId"]);

            AutUserFunctionController autUserFunctionController = ControllerFactory.CreateAutUserFunctionController();

            List<AutUserFunction> autUserFunctionList = autUserFunctionController.GetAllAutUserFunctionByUserId(true, userId);

            StringBuilder cstextCard = new StringBuilder();

            if (userType == 1)
            {
                List<AutUserFunction> autUserFunctionListPlaning = autUserFunctionList.Where(x => x.autFunction.head == 1).ToList();
                List<AutUserFunction> autUserFunctionListAdmin = autUserFunctionList.Where(x => x.autFunction.head == 2).ToList();
                List<AutUserFunction> autUserFunctionListSuAddmin = autUserFunctionList.Where(x => x.autFunction.head == 3).ToList();
                List<AutUserFunction> autUserFunctionListManager = autUserFunctionList.Where(x => x.autFunction.head == 4).ToList();

                if (autUserFunctionListPlaning.Count > 0)
                {
                    cstextCard.Append("<div class=\"sidebar-heading\">Planing</div>");
                    foreach (var item in autUserFunctionListPlaning)
                    {
                        cstextCard.Append("<li class=\"nav-item\">");
                        cstextCard.Append("<a class=\"nav-link\" href=");
                        cstextCard.Append(item.autFunction.Url);
                        cstextCard.Append("> <i class=\"");
                        cstextCard.Append(item.autFunction.MenuIcon);
                        cstextCard.Append("\"></i> <span>");
                        cstextCard.Append(item.autFunction.FunctionName);
                        cstextCard.Append("</span></a>");
                        cstextCard.Append("</li>");
                    }
                }

                if (autUserFunctionListAdmin.Count > 0)
                {
                    cstextCard.Append("<hr class=\"sidebar-divider my-0\"><hr class=\"sidebar-divider\">");
                    cstextCard.Append("<div class=\"sidebar-heading\">Admin</div>");
                    foreach (var item in autUserFunctionListAdmin)
                    {
                        cstextCard.Append("<li class=\"nav-item\">");
                        cstextCard.Append("<a class=\"nav-link\" href=");
                        cstextCard.Append(item.autFunction.Url);
                        cstextCard.Append("> <i class=\"");
                        cstextCard.Append(item.autFunction.MenuIcon);
                        cstextCard.Append("\"></i> <span>");
                        cstextCard.Append(item.autFunction.FunctionName);
                        cstextCard.Append("</span></a>");
                        cstextCard.Append("</li>");
                    }
                }

                if (autUserFunctionListSuAddmin.Count > 0)
                {
                    cstextCard.Append("<hr class=\"sidebar-divider my-0\"><hr class=\"sidebar-divider\">");
                    cstextCard.Append("<div class=\"sidebar-heading\">Super Admin</div>");
                    foreach (var item in autUserFunctionListSuAddmin)
                    {
                        cstextCard.Append("<li class=\"nav-item\">");
                        cstextCard.Append("<a class=\"nav-link\" href=");
                        cstextCard.Append(item.autFunction.Url);
                        cstextCard.Append("> <i class=\"");
                        cstextCard.Append(item.autFunction.MenuIcon);
                        cstextCard.Append("\"></i> <span>");
                        cstextCard.Append(item.autFunction.FunctionName);
                        cstextCard.Append("</span></a>");
                        cstextCard.Append("</li>");
                    }
                }

                if (autUserFunctionListManager.Count > 0)
                {
                    cstextCard.Append("<hr class=\"sidebar-divider my-0\"><hr class=\"sidebar-divider\">");
                    cstextCard.Append("<div class=\"sidebar-heading\">Planning Manager </div>");
                    foreach (var item in autUserFunctionListManager)
                    {
                        cstextCard.Append("<li class=\"nav-item\">");
                        cstextCard.Append("<a class=\"nav-link\" href=");
                        cstextCard.Append(item.autFunction.Url);
                        cstextCard.Append("> <i class=\"");
                        cstextCard.Append(item.autFunction.MenuIcon);
                        cstextCard.Append("\"></i> <span>");
                        cstextCard.Append(item.autFunction.FunctionName);
                        cstextCard.Append("</span></a>");
                        cstextCard.Append("</li>");
                    }
                }
            }
            else
            {
                cstextCard.Append("<div class=\"sidebar-heading\">Planing</div>");

                foreach (var item in autUserFunctionList)
                {
                    cstextCard.Append("<li class=\"nav-item\">");
                    cstextCard.Append("<a class=\"nav-link\" href=");
                    cstextCard.Append(item.autFunction.Url);
                    cstextCard.Append("> <i class=\"");
                    cstextCard.Append(item.autFunction.MenuIcon);
                    cstextCard.Append("\"></i> <span>");
                    cstextCard.Append(item.autFunction.FunctionName);
                    cstextCard.Append("</span></a>");
                    cstextCard.Append("</li>");
                }
            }

            ltSideBar.Text += cstextCard;

        }


        protected void btnLogut_Click(object sender, EventArgs e)
        {
            if (Session["UserId"] != null)
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");

            }
        }
    }
}