﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewTarget.aspx.cs" Inherits="ManPowerWeb.AddNewTarget" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
    <div class="container mb-3" id="mainContainer" runat="server">


        <div class="card ml-4 p-4">
            <h2>Add New Target</h2>
            <br />
            <div class="form-group">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="row mb-3 ms-1">
                            <div class="col-sm-6">
                                <div class="row mb-3">
                                    <div class="col-sm-4">
                                        <asp:Literal ID="Literal1" runat="server" Text="Year"></asp:Literal>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="ddlYear" runat="server" CssClass="btn  btn-primary dropdown-toggle" Width="250px">
                                            <asp:ListItem Value="2020">2020</asp:ListItem>
                                            <asp:ListItem Value="2021">2021</asp:ListItem>
                                            <asp:ListItem Value="2022">2022</asp:ListItem>
                                            <asp:ListItem Value="2023">2023</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="row mb-3">
                                    <div class="col-sm-4">
                                        <asp:Literal ID="Literal2" runat="server" Text="Target"></asp:Literal>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:RadioButtonList ID="rbTarget" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rbTarget_SelectedIndexChanged">
                                            <asp:ListItem Value="1">District Level</asp:ListItem>
                                            <asp:ListItem Value="2">DS Division Level</asp:ListItem>
                                            <%--   <div class="mr-5">
                                    <%--<asp:RadioButton ID="rbDistrictLevel" runat="server" Text="District Level" GroupName="Target" />-%>
                                </div>
                                <div>
                                    <%--<asp:RadioButton ID="rbDsDivisonLevel" runat="server" Text="DS Division Level" GroupName="Target" />
                                </div>--%>
                                        </asp:RadioButtonList>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <%--     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>--%>
                        <div class="row mb-3 ms-1">
                            <div class="col-sm-6">
                                <div class="row mb-3">
                                    <div class="col-sm-4">
                                        <asp:Literal ID="Literal3" runat="server" Text="District"></asp:Literal>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="ddlDistrict" runat="server" CssClass="btn  btn-primary dropdown-toggle" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="ddlDistrict_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <%--    <%if (rbTarget.SelectedValue == "2")
                                { %>--%>

                            <div class="col-sm-6" id="hideDiv" runat="server">
                                <div class="row mb-3">
                                    <div class="col-sm-4">
                                        <asp:Literal ID="Literal4" runat="server" Text="DS Division"></asp:Literal>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="ddlDSDivision" runat="server" CssClass="btn  btn-primary dropdown-toggle" Width="250px">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <%--       <%} %>--%>
                        </div>
                        <%--   </ContentTemplate>
                </asp:UpdatePanel>--%>

                        <div class="row mb-3 ms-1">
                            <div class="col-sm-6">
                                <div class="row mb-3">
                                    <div class="col-sm-4">
                                        <asp:Literal ID="Literal5" runat="server" Text="Position"></asp:Literal>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="ddlPosition" runat="server" CssClass="btn  btn-primary dropdown-toggle" Width="250px">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="row mb-3">
                                    <div class="col-sm-4">

                                        <asp:Literal ID="Literal6" runat="server" Text="Officer Name"></asp:Literal>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="ddlOfficer" runat="server" CssClass="btn  btn-primary dropdown-toggle" Width="250px">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <%--<asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>--%>
                        <div class="row mb-3 ms-1">
                            <div class="col-sm-6">
                                <div class="row mb-3">
                                    <div class="col-sm-4">
                                        <asp:Literal ID="Literal7" runat="server" Text="Program Type"></asp:Literal>
                                    </div>
                                    <div class="col-md-4">
                                        <asp:DropDownList ID="ddlProgramType" runat="server" CssClass="btn  btn-primary dropdown-toggle" Width="250px" AutoPostBack="true" OnSelectedIndexChanged="ddlProgramType_SelectedIndexChanged">
                                        </asp:DropDownList>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="row mb-3">
                                    <div class="col-sm-4">
                                        <asp:Literal ID="Literal9" runat="server" Text="Program"></asp:Literal>
                                    </div>
                                    <div class="col-md-6">
                                        <asp:DropDownList ID="ddlProgram" runat="server" CssClass="btn  btn-primary dropdown-toggle" Width="250px">
                                        </asp:DropDownList>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </ContentTemplate>

                </asp:UpdatePanel>

                <div class="row mb-3 ms-1">

                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">

                                <asp:Literal ID="Literal8" runat="server" Text="Instructions"></asp:Literal>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtInstructions" runat="server" Width="250px" CssClass="form-control form-control-user" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtInstructions" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">

                                <asp:Literal ID="Literal10" runat="server" Text="Description"></asp:Literal>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control form-control-user" Width="250px" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="1" ControlToValidate="txtDescription" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mb-3 ms-1">

                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">

                                <asp:Literal ID="Literal17" runat="server" Text="Vote"></asp:Literal>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtVote" runat="server" Width="250px" CssClass="form-control form-control-user"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="1" ControlToValidate="txtVote" ForeColor="Red" runat="server" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>

                </div>



                <%--//=================================--%>



                <h5>Target: physical / financial :</h5>
                <br />


                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">
                                <asp:Literal ID="Literal11" runat="server" Text="Month"></asp:Literal>
                            </div>
                            <div class="col-md-4">
                                <asp:DropDownList ID="ddlMonth" runat="server" CssClass="btn btn-primary dropdown-toggle" Width="250px">
                                    <asp:ListItem Value="1">January</asp:ListItem>
                                    <asp:ListItem Value="2">February</asp:ListItem>
                                    <asp:ListItem Value="3">March</asp:ListItem>
                                    <asp:ListItem Value="4">April</asp:ListItem>
                                    <asp:ListItem Value="5">May</asp:ListItem>
                                    <asp:ListItem Value="6">June</asp:ListItem>
                                    <asp:ListItem Value="7">July</asp:ListItem>
                                    <asp:ListItem Value="8">August</asp:ListItem>
                                    <asp:ListItem Value="9">September</asp:ListItem>
                                    <asp:ListItem Value="10">October</asp:ListItem>
                                    <asp:ListItem Value="11">November</asp:ListItem>
                                    <asp:ListItem Value="12">December</asp:ListItem>
                                </asp:DropDownList>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">
                                <asp:Literal ID="Literal14" runat="server" Text="Physical Count"></asp:Literal>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="txtPhysicalCount" Width="250px" runat="server" CssClass="form-control form-control-user" TextMode="Number" min="0"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhysicalCount" ErrorMessage="RequiredFieldValidator" ValidationGroup="1" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">
                                <asp:Literal ID="Literal15" runat="server" Text="Financial Count"></asp:Literal>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtFinancialCount" runat="server" CssClass="form-control form-control-user" Width="250px" TextMode="Number" min="0"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFinancialCount" ValidationGroup="1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <br />

                            </div>
                        </div>
                    </div>
                </div>

                <h5>Expected Output :</h5>
                <br />

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">
                                <asp:Literal ID="Literal12" runat="server" Text="Output"></asp:Literal>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtOutput" runat="server" CssClass="form-control form-control-user" Width="250px" TextMode="Number" min="0"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtOutput" ValidationGroup="1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">
                                <asp:Literal ID="Literal13" runat="server" Text="Outcome"></asp:Literal>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtOutcome" runat="server" CssClass="form-control form-control-user" Width="250px" TextMode="Number" min="0"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" ValidationGroup="1" ControlToValidate="txtOutcome" ForeColor="Red">*</asp:RequiredFieldValidator>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mb-3 ms-1">
                    <div class="col-sm-6">
                        <div class="row mb-3">
                            <div class="col-sm-4">
                                <asp:Literal ID="Literal16" runat="server" Text="Remarks"></asp:Literal>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox ID="txtRemarks" runat="server" CssClass="form-control form-control-user" Width="250px"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                </div>


                <div class="row mb-3 ms-1">
                    <div class="col-sm-6 d-flex">
                        <div class="col-sm-4">
                            <asp:Button runat="server" ID="btnCancel" Text="Cancel" CssClass="btn btn-primary btn-user btn-block" />
                        </div>
                        <div class="col-sm-4">
                            <asp:Button runat="server" ID="btnSave" Text="Save" CssClass="btn btn-primary btn-user btn-block" OnClick="btnSave_Click" ValidationGroup="1" />
                        </div>
                        <div class="col-sm-6">
                            <asp:Button runat="server" ID="btnSendToReccomendation" Text="Send to Recomendation" CssClass="btn btn-primary btn-user btn-block" OnClick="btnSendToReccomendation_Click" Enabled="false" />
                        </div>
                    </div>
                </div>
            </div>
            <%---------------------dialog box----------------------%>
            <asp:Panel ID="pnlDialogBox" runat="server" Visible="false" CssClass="w3-container">
                <div id="id01" class="w3-modal">
                    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width: 40%;">

                        <div class="w3-center">
                            <br>
                            <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-display-topright" title="Close Modal">&times;</span>
                            <h2>Recommondation</h2>
                        </div>

                        <div class="w3-container" action="/action_page.php" style="padding: 70px">
                            <div class="w3-section">
                                <label><b>Recommondation Type</b></label>
                                <asp:DropDownList ID="ddlSelectRecomendation" runat="server" CssClass="btn btn-primary dropdown-toggle">
                                    <asp:ListItem Value="1">Send to recommondation</asp:ListItem>
                                    <asp:ListItem Value="2">Send to approval</asp:ListItem>
                                </asp:DropDownList>
                                <%--  <select class="btn btn-primary dropdown-toggle" aria-label="Default select example" required>
                                    <option selected>Open this select menu</option>
                                    <option value="1">Send to recommondation</option>
                                    <option value="2">Send to approval</option>
                                </select>--%>

                                <br />
                                <br />

                                <label><b>Officer Name</b></label>

                                <asp:DropDownList ID="ddlOficerRecomended" runat="server" CssClass="btn btn-primary dropdown-toggle"></asp:DropDownList>
                            </div>
                        </div>

                        <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                            <div class="row justify-content-evenly">
                                <div class="col-4">
                                    <asp:Button ID="btnCancelDialog" runat="server" Text="Cancel" CssClass="btn btn-primary btn-user btn-block" OnClick="btnCancelDialog_Click" />

                                </div>
                                <div class="col-4">
                                    <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn btn-primary btn-user btn-block" OnClick="btnSend_Click" />
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </asp:Panel>


            <%--------------end of dialog box--------------------%>
        </div>

    </div>

</asp:Content>