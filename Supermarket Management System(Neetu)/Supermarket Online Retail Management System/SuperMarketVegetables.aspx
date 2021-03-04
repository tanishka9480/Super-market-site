<%@ Page Title="" Language="C#" MasterPageFile="~/SuperMarket.master" AutoEventWireup="true" CodeFile="SuperMarketVegetables.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

<style type="text/css">
        .imgclass {
            width:205px;
            height:272px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="float: initial; width: initial; height:initial">
        <fieldset class="fieldsetmain">
            <legend style="font-size: 20px;">Vegetables</legend>
            <div style="height:30px;" align="center">
                <asp:Label ID="lblMessage" runat="server" CssClass="lblresponse" />
            </div>
            <asp:DataList runat="server" ID="gvProduct" RepeatDirection="Horizontal" RepeatColumns="4">
                <ItemTemplate>
                    <asp:Label Visible="false" ID="ProductIdLabel" runat="server" Text='<%# Eval("ProductId") %>' />
                    <br />

                    <asp:Label ID="TypeIdLabel" runat="server" Text='<%# Eval("CategoryId") %>' Visible="false" />
                    <br />
                    <table>
                        <tr>
                            <td style="border-style: dashed; border-width: 1px;">
                                <asp:Image ID="imgPd" CssClass="imgclass" runat="server" ImageUrl='<%#"~/Images/"+Eval("ImageUrl").ToString() %>' /><br />
                                <br />
                                Product Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                                <br />
                                Description:
            <asp:Label ID="DiscriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                                <br />
                                Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%#"$"+ Eval("Price") %>' />
                                <br />
                                Enter The Quantity:&nbsp;
            <asp:TextBox ID="txtQty" runat="server" Width="30" Height="20" Text="1" style="text-align:center" > </asp:TextBox><asp:Label ID="UnitLabel" runat="server" Text='<%# Eval("Unit") %>' />
                                <center>
                                    <br />
            
                                <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart"  OnClick="btnAddToCart_Click" autopostback="true" CssClass="button" causesvalidation="true" /></center>
                            </td>

                        </tr>

                    </table>
                </ItemTemplate>



            </asp:DataList>
        </fieldset>
    </div>
</asp:Content>

