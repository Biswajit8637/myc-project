<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PGIndexCompare.aspx.cs" Inherits="Reports_PGIndexCompare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>SAMS::Student Academic Management System</title>
    <meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
    <meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
    <ucIncludeScript:IncludeScript ID="IncludeScript1" runat="server" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
    <script src="../js/bootstrap-datepicker.js" type="text/javascript"></script>
    <script src="../js/custom.js" type="text/javascript"></script>
    <script src="../js/MentainScroll.js" type="text/javascript"></script>
    <script src="js/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
      <script src="js/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
      <script src="Scripts/JqAlert/CSMValidation.js" type="text/javascript"></script>
    <script src="Scripts/JqAlert/jQuery.js" type="text/javascript"></script>
    <link href="Scripts/JqAlert/jQuery.alert.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/JqAlert/jQuery.alert.js" type="text/javascript"></script>
    <script src="js/jquery-2.0.3.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/custom.js" type="text/javascript"></script>
    <script src="../js/custom.js" type="text/javascript"></script>
    <link href="../css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquery.dataTables.min.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <uctopHeader:topHeader ID="Header1" runat="server" />
        <div id="midbg">
            <div id="midArea">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td id="LeftMenu" valign="top">
                            <ucLeftPanel:LeftPannel ID="leftMenu1" runat="server" />
                        </td>
                        <td height="492" valign="top">
                            <div class="navigation" id="navigation">
                                <!--NAVIGATION BEGINS-->
                                <ucnavigation:navigation ID="navid" runat="server" />
                                <!--NAVIGATION ENDS-->
                            </div>
                            <div class="data-container">
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="title" id="title">
                                                </div>
                                                <div id="loadComponents">
                                                </div>
                                                <div id="myButton">
                                                    <uctab:ButtonTab ID="Buttontab1" runat="server" />
                                                </div>
                                                <div class="top_tab_container" id="myTab">
                                                </div>

                                            </td>
                                        </tr>
               
                                        <tr>
                                            <td>
                                                <div align="right" style="padding-right: 15px; margin-bottom: 15px;">
                                                    <asp:LinkButton ID="lnkExport" runat="server" CssClass="btn btn-primary btn-sm" OnClick="lnkExport_Click" >Export To Excel<i class="fa fa-file-excel-o" aria-hidden="true"></i></asp:LinkButton>
                                                </div>
                                            </td>
                                        </tr>

                                        <tr>
                                            <asp:UpdatePanel ID="udpAdmission" runat="server" EnableViewState="true" UpdateMode="Always">
                                                    <ContentTemplate>
                                                        <div class="container">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div id="SearchTable" class="NOPRINT">
                                                                        <div class="usercontrol-bg">
                                                                            <div class="form-group row">
                                                <div id="div1" class="col-sm-12 col-xs-12" style="color: #ff0033; font-weight: bold">
                                                    Note: Compare your Barcode/Hall ticket with other Barcode/Hall ticket those are selected
                                                </div>
                                            </div>
                                                                            <div class="searchTable col-md-12 col-sm-12 col-xs-12">
                                                                            <div class="form-group row">
                                                                                <div class="col-lg-3 col-md-3">
                                                                                    <asp:TextBox ID="txtBarCodeNu" placeholder="Enter 1st Barcode/Hall ticket" MaxLength="12" CssClass="form-control" runat="server">
                                                                                       

                                                                                    </asp:TextBox><span class="mandatory">*</span>
                                                                                    <cc1:FilteredTextBoxExtender ID="FEtxtBarCodeNu" runat="server" FilterMode="ValidChars"
                                                                                        ValidChars="" FilterType="Numbers,UppercaseLetters,LowerCaseLetters" TargetControlID="txtBarCodeNu">
                                                                                    </cc1:FilteredTextBoxExtender>
                                                                                </div>
                                                                                <div class="col-lg-1 col-md-1">
                                                                                    <asp:Button ID="btnShow" runat="server" Text="Show" CssClass="btn btn-success" OnClick="btnShow_Click" OnClientClick="return Validation()"   />

                                                                                </div>
                                                                                <div class="col-lg-3 col-md-3">
                                                                                    <asp:TextBox ID="txtBarCodeNua" placeholder="Enter 2nd Barcode/Hall ticket" MaxLength="12" CssClass="form-control" runat="server">
                                                                                       

                                                                                    </asp:TextBox><span class="mandatory">*</span>
                                                                                    <cc1:FilteredTextBoxExtender ID="FEtxtHallticket" runat="server" FilterMode="ValidChars"
                                                                                        ValidChars="" FilterType="Numbers,UppercaseLetters,LowerCaseLetters" TargetControlID="txtBarCodeNua">
                                                                                    </cc1:FilteredTextBoxExtender>
                                                                                </div>
                                                                                <div class="col-lg-1 col-md-1">
                                                                                    <asp:Button ID="Button1" runat="server" Text="Show" CssClass="btn btn-success" OnClick="Button1_Click" OnClientClick="return ValidationA()"   />

                                                                                </div>
                                                                                <div class="col-lg-3 col-md-3">
                                                                                    <asp:TextBox ID="txtBarCodeNuab" placeholder="Enter 3rd Barcode/Hall ticket" MaxLength="12" CssClass="form-control" runat="server">
                                                                                       

                                                                                    </asp:TextBox><span class="mandatory">*</span>
                                                                                    <cc1:FilteredTextBoxExtender ID="FEtxtRegistermobile" runat="server" FilterMode="ValidChars"
                                                                                        ValidChars="" FilterType="Numbers,UppercaseLetters,LowerCaseLetters" TargetControlID="txtBarCodeNuab">
                                                                                    </cc1:FilteredTextBoxExtender>
                                                                                </div>
                                                                                <div class="col-lg-1 col-md-1">
                                                                                    <asp:Button ID="Button2" runat="server" Text="Show" CssClass="btn btn-success" OnClick="Button2_Click" OnClientClick="return ValidationB()"   />

                                                                                </div>

                                                                                
                                                                            </div>
                                                                                <div class="form-group row">
                                                                                <div class="col-lg-4 col-md-4">
                                                                                   <label class="col-sm-4 control-label no-padding-right">
                                                                    Course :
                                                                </label>
                                                                <div class="col-sm-7">
                                                                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control"
                                                                        AutoPostBack="true">
                                                                        <asp:ListItem Value="0">-Select-</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                                </div>
                                                                               
                                                                                <div class="col-lg-4 col-md-4">
                                                                                                <label class="col-sm-4 control-label no-padding-right">
                                                                    Course :
                                                                </label>
                                                                <div class="col-sm-7">
                                                                    <asp:DropDownList ID="ddlSEndCourse" runat="server" AutoPostBack="true" CssClass="form-control"
                                                                        >
                                                                        <asp:ListItem Value="0">-Select-</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                                </div>
                                                                            
                                                                                <div class="col-lg-4 col-md-4">
                                                                                                 <label class="col-sm-4 control-label no-padding-right">
                                                                    Course :
                                                                </label>
                                                                <div class="col-sm-7">
                                                                    <asp:DropDownList ID="ddlthrdCourse" runat="server" AutoPostBack="true" CssClass="form-control"
                                                                        >
                                                                        <asp:ListItem Value="0">-Select-</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </div>
                                                                                </div>
                                                                                

                                                                                
                                                                            </div>
                                                                                
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div id="viewTable">
                                                            <div class="row">
                                                                <div class="col-sm-4">
                                                                    <div class="table-responsive">
                                                                        <asp:DetailsView ID="dtlIndevisual" runat="server" Width="100%" 
                                                            AutoGenerateRows="false" class="table table-striped table-bordered white-bg table-hover" BackColor="#E69431">
                                                            <Fields>
                                                                 <asp:BoundField HeaderText="Applicant Name" DataField="ApplicantName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Registere MobileNumber" DataField="RegisteredMobileNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Application Number" DataField="ApplicationNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Hallticket Number" DataField="HallticketNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Social Category" DataField="SocialCategoryName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Reserve Category" DataField="ReserveCategoryName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Stream" DataField="StreamName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="P.W.D " DataField="PWD" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Gender" DataField="GenderS" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="PG Course" DataField="CourseName" ItemStyle-Width="160px" />
                                                                
                                                                                            <asp:BoundField HeaderText="Entrance Subject" DataField="EntranceSubject" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Entrance Mark" DataField="EntranceMark" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Matric Percentage" DataField="MatricPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="PlusTwo Percentage" DataField="PlusTwoPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Graduation Percentage" DataField="GraduationPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Entrance Point" DataField="EntrancePoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Matric Point" DataField="MatricPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" PlusTwo Point" DataField="PlusTwoPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Graduation Point" DataField="GraduationPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Hons Point" DataField="HonsPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Distinction Point" DataField="DistinctionPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" NCCB Point" DataField="NCCBPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NCCC Point" DataField="NCCCPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NSSUC Point" DataField="NSSUCPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NSSIS Point" DataField="NSSISPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="NSSNL Point" DataField="NSSNLPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="RRRP Point" DataField="RRRPPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="RRPR Point" DataField="RRPRPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Sports ISPoint" DataField="SportsISPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Sports NLPoint" DataField="SportsNLPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Sports IUPoint" DataField="SportsIUPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Weightage Point" DataField="WeightagePoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Total Point" DataField="TotalPoint" ItemStyle-Width="160px" />

                                                                                          

                                                                                            <asp:BoundField HeaderText="Point Without Weightage" DataField="PointWithoutWeightage" ItemStyle-Width="160px" />

                                                                                           
                                                            </Fields>
                                                            <RowStyle BackColor="#FFFFFF" />
                                                        </asp:DetailsView>
                                                                                    
                                                                                     <asp:Label ID="lblMessage" runat="server" Text="No Record(s) Found" Visible="false"></asp:Label>
                                                                               
                                                                        </div>

                                                                    </div>
                                                                <div class="col-sm-4">
                                                                    <div class="table-responsive">
                                                                        
                                                                                    <asp:DetailsView ID="DetailsView1" runat="server" Width="100%" 
                                                            AutoGenerateRows="false" class="table table-striped table-bordered white-bg table-hover" BackColor="#E69431">
                                                            <Fields>
                                                                 <asp:BoundField HeaderText="Applicant Name" DataField="ApplicantName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Registere MobileNumber" DataField="RegisteredMobileNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Application Number" DataField="ApplicationNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Hallticket Number" DataField="HallticketNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Social Category" DataField="SocialCategoryName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Reserve Category" DataField="ReserveCategoryName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Stream" DataField="StreamName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="P.W.D " DataField="PWD" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Gender" DataField="GenderS" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="PG Course" DataField="CourseName" ItemStyle-Width="160px" />
                                                                
                                                                                            <asp:BoundField HeaderText="Entrance Subject" DataField="EntranceSubject" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Entrance Mark" DataField="EntranceMark" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Matric Percentage" DataField="MatricPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="PlusTwo Percentage" DataField="PlusTwoPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Graduation Percentage" DataField="GraduationPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Entrance Point" DataField="EntrancePoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Matric Point" DataField="MatricPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" PlusTwo Point" DataField="PlusTwoPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Graduation Point" DataField="GraduationPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Hons Point" DataField="HonsPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Distinction Point" DataField="DistinctionPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" NCCB Point" DataField="NCCBPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NCCC Point" DataField="NCCCPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NSSUC Point" DataField="NSSUCPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NSSIS Point" DataField="NSSISPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="NSSNL Point" DataField="NSSNLPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="RRRP Point" DataField="RRRPPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="RRPR Point" DataField="RRPRPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Sports ISPoint" DataField="SportsISPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Sports NLPoint" DataField="SportsNLPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Sports IUPoint" DataField="SportsIUPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Weightage Point" DataField="WeightagePoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Total Point" DataField="TotalPoint" ItemStyle-Width="160px" />

                                                                                          

                                                                                            <asp:BoundField HeaderText="Point Without Weightage" DataField="PointWithoutWeightage" ItemStyle-Width="160px" />

                                                                                           
                                                            </Fields>
                                                            <RowStyle BackColor="#FFFFFF" />
                                                        </asp:DetailsView>
                                                                                     <asp:Label ID="Label1" runat="server" Text="No Record(s) Found" Visible="false"></asp:Label>
                                                                              
                                                                        </div>

                                                                    </div>
                                                                <div class="col-sm-4">
                                                                    <div class="table-responsive">
                                                                       
                                                                                    <asp:DetailsView ID="DetailsView2" runat="server" Width="100%" 
                                                            AutoGenerateRows="false" class="table table-striped table-bordered white-bg table-hover" BackColor="#E69431">
                                                            <Fields>
                                                                 <asp:BoundField HeaderText="Applicant Name" DataField="ApplicantName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Registere MobileNumber" DataField="RegisteredMobileNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Application Number" DataField="ApplicationNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Hallticket Number" DataField="HallticketNo" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Social Category" DataField="SocialCategoryName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Reserve Category" DataField="ReserveCategoryName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Stream" DataField="StreamName" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="P.W.D " DataField="PWD" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="Gender" DataField="GenderS" ItemStyle-Width="160px" />
                                                                                              <asp:BoundField HeaderText="PG Course" DataField="CourseName" ItemStyle-Width="160px" />
                                                                
                                                                                            <asp:BoundField HeaderText="Entrance Subject" DataField="EntranceSubject" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Entrance Mark" DataField="EntranceMark" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Matric Percentage" DataField="MatricPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="PlusTwo Percentage" DataField="PlusTwoPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Graduation Percentage" DataField="GraduationPercentage" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Entrance Point" DataField="EntrancePoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" Matric Point" DataField="MatricPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" PlusTwo Point" DataField="PlusTwoPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Graduation Point" DataField="GraduationPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Hons Point" DataField="HonsPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" Distinction Point" DataField="DistinctionPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText=" NCCB Point" DataField="NCCBPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NCCC Point" DataField="NCCCPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NSSUC Point" DataField="NSSUCPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText=" NSSIS Point" DataField="NSSISPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="NSSNL Point" DataField="NSSNLPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="RRRP Point" DataField="RRRPPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="RRPR Point" DataField="RRPRPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Sports ISPoint" DataField="SportsISPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Sports NLPoint" DataField="SportsNLPoint" ItemStyle-Width="160px" />
                                                                                            <asp:BoundField HeaderText="Sports IUPoint" DataField="SportsIUPoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Weightage Point" DataField="WeightagePoint" ItemStyle-Width="160px" />

                                                                                            <asp:BoundField HeaderText="Total Point" DataField="TotalPoint" ItemStyle-Width="160px" />

                                                                                          

                                                                                            <asp:BoundField HeaderText="Point Without Weightage" DataField="PointWithoutWeightage" ItemStyle-Width="160px" />

                                                                                           
                                                            </Fields>
                                                            <RowStyle BackColor="#FFFFFF" />
                                                        </asp:DetailsView>
                                                                                     <asp:Label ID="Label2" runat="server" Text="No Record(s) Found" Visible="false"></asp:Label>
                                                                                
                                                                        </div>

                                                                    </div>
                                                                </div>

                                                            </div>
                                                             </div>
                                                        </div>
                                                        
                                                    </ContentTemplate>

                                                </asp:UpdatePanel>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <ucfooterPanel:footer ID="footer1" runat="server" />
        </div>
    </form>
    <script type="text/javascript">
        function Validation() {
            if (!BlankTextBox('txtBarCodeNu', '1st Barcode/Hallticket')) {
                return false;
            }
            if (!ValidateDropdown('ddlCourse', ' Course')) {
                return false;
            }
        }
        function ValidationA() {
            if (!BlankTextBox('txtBarCodeNua', '2nd Barcode/Hallticket')) {
                return false;
            }
            if (!ValidateDropdown('ddlSEndCourse', ' Course')) {
                return false;
            }
        }
        function ValidationB() {
            if (!BlankTextBox('txtBarCodeNuab', '3rd Barcode/Hallticket')) {
                return false;
            }
            if (!ValidateDropdown('ddlthrdCourse', ' Course')) {
                return false;
            }
        }
    </script>
</body>
</html>
