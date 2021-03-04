<%@ Page Title="" Language="C#" MasterPageFile="~/SuperMarket.master" AutoEventWireup="true" CodeFile="SuperMarketRegistration.aspx.cs" Inherits="Default2" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    
<style type="text/css">
        .TextIndicator_TextBox1 {
            color: green;
        }
 
        cssClass1 {
            color: red;
            font-size: 50px;
        }
    </style>
        
    <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        function IsNumeric(e) {
            var keyCode = e.which ? e.which : e.keyCode
            var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
            document.getElementById("error").style.display = ret ? "none" : "inline";
            return ret;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
    
      <div class="span9">
    <ul class="breadcrumb">
		<li><a href="index.html">Home</a> <span class="divider">/</span></li>
		<li class="active">Registration</li>
    </ul>
	<h3> Registration</h3>	
	<hr class="soft"/>
	<div class="well">
	
		<h3>Account Details</h3>
		<div class="control-group">

		<div class="controls">
	<table>
                    <tr>
                        <td>Email *</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="input"></asp:TextBox><cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" TargetControlID="txtemail" WatermarkText="Enter Email Id"></cc1:TextBoxWatermarkExtender>
                        </td>

                        <td>Repeat email *
                        </td>
                        <td>
                            <asp:TextBox ID="txtrptemail" runat="server"></asp:TextBox><cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" TargetControlID="txtrptemail" WatermarkText="Repeat Email "></cc1:TextBoxWatermarkExtender>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="#990000"></asp:RequiredFieldValidator></td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email" ControlToValidate="txtemail" ForeColor="#990000"></asp:RequiredFieldValidator></td>

                        <td>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtemail" ControlToValidate="txtrptemail" ErrorMessage="Email Is not match With Repeat email" ForeColor="#990000"></asp:CompareValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" runat="server" ForeColor="#990000" ErrorMessage="Email is not valid" Display="Dynamic"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Password*</td>
                        <td>
                            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" TargetControlID="txtpass" WatermarkText="Enter Passward">
                            </cc1:TextBoxWatermarkExtender>
                        </td>
                        <td style="width: 105px;">Repeat Password*</td>
                        <td>
                            <asp:TextBox ID="txtReptPass" runat="server" TextMode="Password"></asp:TextBox>
                            <cc1:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender4" runat="server" TargetControlID="txtemail" WatermarkText="Enter Email Id">
                            </cc1:TextBoxWatermarkExtender>

                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="#990000" ControlToValidate="txtReptPass"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Passward" ControlToValidate="txtpass" ForeColor="#990000"></asp:RequiredFieldValidator></td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtpass" ControlToValidate="txtReptPass" ErrorMessage="Passward Is not match With Repeat Passward" ForeColor="#990000"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <cc1:PasswordStrength ID="PS" runat="server"
                                TargetControlID="txtReptPass"
                                DisplayPosition="RightSide"
                               StrengthIndicatorType="Text"
                                PreferredPasswordLength="10"
                                PrefixText="Strength:"
                                TextCssClass="TextIndicator_TextBox1"
                                MinimumNumericCharacters="0"
                                MinimumSymbolCharacters="0"
                                RequiresUpperAndLowerCaseCharacters="false"
                                 StrengthStyles="Very Poor;Weak;Average;Strong;Excellent"
                                TextStrengthDescriptionStyles="cssClass1;cssClass2;cssClass3;cssClass4;cssClass5"
                                CalculationWeightings="50;15;15;20" />
                        </td>
                    </tr>
                </table>	
            <h3>Personal Details</h3>
            <table>
                        <tr>
                            <td>Name *</td>
                            <td>
                                <asp:TextBox ID="txtname" runat="server" CssClass="long" Placeholder="Enter Name"></asp:TextBox></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Name" ControlToValidate="txtname" ForeColor="#990000"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td>Phone *</td>
                            <td>
                                <asp:TextBox ID="txtphone" runat="server" onkeypress="return IsNumeric(event);" placeholder="Enter Phone No."></asp:TextBox>
                                <span id="error" style="color: #900; font-size: 14px; margin-left: 152px; margin-top: -20px; display: none">Only Numbers</span>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Phone No" ControlToValidate="txtphone" ForeColor="#990000"></asp:RequiredFieldValidator>

                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Street
                            </td>
                            <td>
                                <asp:TextBox ID="txtstreet" runat="server" CssClass="long" placeholder="Enter Street Address"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter Street" ControlToValidate="txtstreet" ForeColor="#990000"></asp:RequiredFieldValidator></td>
                        </tr>
                          <tr>
                            <td>State *</td>
                            <td>
                                <asp:DropDownList ID="State" runat="server" AutoPostBack="true"  OnSelectedIndexChanged="State_SelectedIndexChanged">
                                     
                                </asp:DropDownList></td>

                        </tr>

                         <tr>
                            <td>City *</td>
                            <td>
                                <asp:DropDownList ID="City" runat="server" AutoPostBack="false">
                                     
                                </asp:DropDownList></td>

                        </tr>
                    </table>
            
               <h3>Further Details</h3>
            <table>
                        <tr>
                            <td>Gender *</td>
                            <td>
                                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="gender">
                                    <asp:ListItem Value="Male" Selected="True">Male</asp:ListItem>
                                    <asp:ListItem Value="Female">Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>Birthdate *</td>
                            <td>
                                <asp:TextBox ID="txtclendar" runat="server" TargetControlID="txtclendar"></asp:TextBox>
                                <cc1:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtclendar" Format="dd/MM/yyyy"></cc1:CalendarExtender>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Birth Date" ControlToValidate="txtclendar" ForeColor="#990000"></asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td>Nationality *</td>
                            <td>
                                <asp:DropDownList ID="ddlcountry" runat="server">
                                    <asp:ListItem Value="0" Text="---- Select Nationality -----" />
                                    <asp:ListItem Value="Indian" Text="Indian" />
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>Postal Code</td>
                            <td><asp:TextBox ID="txtPostal" runat="server" /></td>
                        </tr>
                    </table>
           <div class="control-group">
		<div class="controls">
	
             <table>
                <tr>
                    <td>
                        <br />
                        <asp:Button runat="server" Text="Register &raquo;" ID="btnRegister" CssClass="button" OnClick="btnRegister_Click2" />
                        <asp:Button runat="server" Text="Cancel" ID="btncancel" CssClass="button" CausesValidation="false" OnClick="btncancel_Click1"  />
                    </td>
                </tr>
            </table>
		</div>
        </div>
            </div>
    

        </div>
          </div>
          </div>
</asp:Content>

