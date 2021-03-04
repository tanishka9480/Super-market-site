<%@ Page Title="" Language="C#" MasterPageFile="~/SuperMarket.master" AutoEventWireup="true" CodeFile="SuperMarketContact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="float: left; width: 100%">
        <fieldset class="fieldsetmain">
            <legend style="font-size: 20px;">Our Location
            </legend>
            <div>
                <%--<img src="Images/map.png" alt="map" />--%>

                <div style="border-left: 300px; width: 390px; float: right">
                    <fieldset style="margin: 0px; height: 279px">
                        <legend>Query
                        </legend>
                        <table>
                            <tr>
                                <td>
                                    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Rf33" runat="server" ErrorMessage="Required" ControlToValidate="txtname" ForeColor="#990000" />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblEmail" runat="server" Text="Email ID"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="Rf2" runat="server" ForeColor="#990000" ErrorMessage="Required" ControlToValidate="txtEmail" />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblContact" runat="server" Text="Contact Number"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ForeColor="#990000" ErrorMessage="Required" ControlToValidate="txtContact" />
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblMessage" runat="server" Text="Massage"></asp:Label></td>
                                <td>
                                    <asp:TextBox ID="txtMessage" runat="server" Height="95px" TextMode="MultiLine" Width="240px"></asp:TextBox></td>

                            </tr>
                            <tr align="center">
                                <td></td>
                                <td>
                                    <span style="float: left; text-align: left">
                                        <asp:Button ID="btnSendMsg" runat="server" Text="Send Message" CssClass="button"  OnClick="btnSendMsg_Click" /><br />
                                        &nbsp;
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtemail" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" runat="server" ForeColor="#990000" ErrorMessage="Email not valid" Display="Dynamic"></asp:RegularExpressionValidator><br />
                                        <asp:RequiredFieldValidator ID="Rf1" runat="server" ForeColor="#990000" ErrorMessage="Message Required" ControlToValidate="txtMessage" /><br />
                                        <asp:Label ID="lblresp" runat="server" CssClass="lblresponse" />
                                    </span>
                                </td>


                            </tr>
                        </table>
                    </fieldset>
                </div>
            </div>

            <div>
                <div style="width: 290px; float: left">
                    <fieldset style="margin: 0px; height: 100px">
                        <legend>Address
                        </legend>
                        <b>Phone : ********</b>
                        <p>
                            </p>
                        <p>
                             </p>
                        <p>
                             </p>
                    </fieldset>
                </div>
                <div style="width: 280px; float: left">
                    <fieldset style="height: 100px">
                        <legend>Contact Information
                        </legend>

                        <p>
                            <b>Email :</b>  Online Supermarket Retail Management System<br />
                            <b>Owner Name :</b> Neetu<br />
                        </p>
                    </fieldset>
                </div>
            </div>
        </fieldset>
    </div>
</asp:Content>

