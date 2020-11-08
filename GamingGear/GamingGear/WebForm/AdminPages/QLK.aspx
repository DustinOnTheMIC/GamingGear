<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QLK.aspx.cs" Inherits="GamingGear.AdminMasterPage.QLK" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../code_copy/QLK.css" rel="stylesheet" />
    <div>
        <div>
            <span class="span-btn-admin hover-btn">
                <asp:Button CssClass="button btnTaoPhieu-size" ID="btnTaoPhieu" runat="server" Text="Tạo Phiếu" OnClick="btnTaoPhieu_Click" />
            </span>
            <asp:Panel ID="Panel1" Visible="false" runat="server" Width="500px">
                <table style="width: 400px; margin: 10% 26%;">
                    <tr>
                        <td>Loại phiếu</td>
                        <td>
                            <asp:DropDownList CssClass="default-DDL" ID="DropDownList1" runat="server">
                                <asp:ListItem Value="Nhập">Nhập</asp:ListItem>
                                <asp:ListItem Value="Xuất">Xuất</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>Mã hàng</td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" CssClass="default-DDL" runat="server" DataSourceID="SqlDataSource1" DataTextField="MAHANG" DataValueField="MAHANG">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [MAHANG] FROM [HANG]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>Số lượng</td>
                        <td>
                            <asp:TextBox CssClass="textbox" ID="TextBox2" TextMode="Number" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Ngày</td>
                        <td class="auto-style1">
                            <asp:TextBox CssClass="textbox" ID="TextBox3" TextMode="Date" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <span class="span-btn-admin hover-btn">
                                <asp:Button CssClass="button btnAdd-size" ID="btnADD" runat="server" Text="ADD" OnClick="btnADD_Click" />
                            </span>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <span class="span-btn-admin hover-btn">
                                <asp:Button CssClass="button btnExit-size" ID="btnExit" runat="server" Text="Exit" OnClick="btnExit_Click" />
                            </span>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
    <div>
        <div id="main" style="position: relative">
            <div id="left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="white" GridLines="Vertical" OnRowDeleting="GridView1_RowDeleting">
                    <AlternatingRowStyle/>
                    <Columns>
                        <asp:BoundField HeaderText="Mã Phiếu" DataField="MAPHIEU" />
                        <asp:BoundField HeaderText="Loại Phiếu" DataField="LOAIPHIEU" />
                        <asp:BoundField HeaderText="Mã Hàng" DataField="MAHANG" />
                        <asp:BoundField HeaderText="Số Lượng" DataField="SOLUONG" />
                        <asp:BoundField HeaderText="Ngày" DataField="NGAY" HtmlEncode="false" DataFormatString="{0:MM/dd/yyyy}" />
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <span class="span-btn-admin hover-btn">
                                    <asp:Button CssClass="button button1-size" ID="Button1" runat="server" CausesValidation="False" OnClientClick="return confirm('Are u sure?');" CommandName="Delete" Text="Xoá" />
                                </span>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
            <div id="right">

                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="white" GridLines="Vertical">
                    <AlternatingRowStyle />
                    <Columns>
                        <asp:BoundField HeaderText="Mã Kho" DataField="MAKHO" />
                        <asp:BoundField HeaderText="Mã Hàng" DataField="MAHANG" />
                        <asp:BoundField HeaderText="Số Lượng" DataField="SOLUONG" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>


</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
    <link href="../../Css/CssAdmin/CssQLK1.css" rel="stylesheet" />
    <link href="../../Css/CssAdmin/CssButtonAdmin1.css" rel="stylesheet" />
    <link href="../../Css/CssDropDownList.css" rel="stylesheet" />
</asp:Content>
