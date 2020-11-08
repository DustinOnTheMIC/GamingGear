<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="TK.aspx.cs" Inherits="GamingGear.AdminMasterPage.TK" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tk-div-top">
        <div class="tk-div1">
            <table style="width: 800px;">
                <tr>
                    <td class="auto-style4">Thống kê</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>Doanh thu theo mã đơn hàng
                    <asp:DropDownList ID="DropDownList2" CssClass="default-DDL" runat="server" DataSourceID="SqlDataSource1" DataTextField="MADH" DataValueField="MADH">
                    </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [MADH] FROM [DH]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button button-tk-size" ID="btnDTDH" runat="server" OnClick="btnDTDH_Click" Text="Xem" />
                        </span>
                    </td>
                    <td>
                        <asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Doanh thu ngày
                    <asp:TextBox ID="TextBox2" TextMode="Date" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button button-tk-size" ID="btnDTN" runat="server" OnClick="btnDTN_Click" Text="Xem" />
                        </span>
                    </td>
                    <td>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Doanh thu theo tháng
                    <asp:DropDownList ID="DropDownList1" CssClass="default-DDL" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button button-tk-size" ID="btnDTT" runat="server" Text="Xem" OnClick="btnDTT_Click" />
                        </span>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Tổng doanh thu</td>
                    <td class="auto-style2">
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button button-tk-size" ID="btnTDT" runat="server" Text="Xem" OnClick="btnTDT_Click" />
                        </span>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
        <div class="tk-div2">
            <h3>ĐƠN HÀNG</h3>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" RowStyle-HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="500px">
                <Columns>
                    <asp:BoundField HeaderText="Mã đơn hàng" DataField="MADH" ItemStyle-Font-Bold="true">
                        <ItemStyle Font-Bold="True"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Tên đăng nhập" DataField="TENDN" />
                    <asp:BoundField HeaderText="Ngày" DataField="NGAY" HtmlEncode="false" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:BoundField HeaderText="TTĐH" DataField="TTDH" />
                </Columns>
                
            </asp:GridView>
        </div>
    </div>
    <div class="tk-div3">
        <table style="width: 500px; margin-bottom: 35px;">
            <tr>
                <td>Mã đơn hàng</td>
                <td>
                    <asp:TextBox CssClass="textbox"  ID="tbmdh" TextMode="Number" runat="server"></asp:TextBox>
                </td>
                <td>
                    <span class="span-btn-admin hover-btn">
                        <asp:Button CssClass="button button-tk-size" ID="btnXCT" runat="server" Text="Xem chi tiết" OnClick="btnXCT_Click" />
                    </span>
                </td>
                <td>
                    <span class="span-btn-admin hover-btn">
                        <asp:Button CssClass="button button-tk-size" ID="btnDongCT" runat="server" OnClick="btnDongCT_Click" Text="Đóng" />
                    </span>
                </td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server" Visible="false">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" RowStyle-HorizontalAlign="Center" GridLines="None" HorizontalAlign="Center" BorderStyle="None" CellPadding="4" Height="131px" Width="1090px">
                <Columns>
                    <asp:BoundField HeaderText="Mã đơn hàng" DataField="MADH" ItemStyle-Font-Bold="true">
                        <ItemStyle Font-Bold="True" />
                    </asp:BoundField>
                    <asp:BoundField HeaderText="Tên đăng nhập" DataField="TENDN" />
                    <asp:BoundField HeaderText="Mã hàng" DataField="MAHANG" />
                    <asp:TemplateField HeaderText="Ảnh">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Width="100px" ImageUrl='<%#"~/Images/imageProduct2/"+Eval("HINHANH") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="Tên hàng" DataField="TENHANG" />
                    <asp:BoundField HeaderText="Đơn giá" DataField="DONGIA" DataFormatString="{0:0,0}" />
                    <asp:BoundField HeaderText="Số lượng" DataField="SOLUONG" />
                    <asp:BoundField HeaderText="Thành tiền" DataField="THANHTIEN" DataFormatString="{0:0,0}" />
                    <asp:BoundField HeaderText="Ngày" DataField="NGAY" HtmlEncode="false" DataFormatString="{0:MM/dd/yyyy}" />
                    <asp:BoundField HeaderText="Địa chỉ" DataField="DIACHI" />
                </Columns>
                
            </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Panel>
    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <style type="text/css">
        .auto-style2 {
            width: 54px;
        }

        .auto-style3 {
            width: 299px;
        }

        .auto-style4 {
            width: 240px;
            font-size: 30px;
            text-align: center;
            padding: 10px 10px 27px 10px;
        }
    </style>
    <link href="../../Css/CssAdmin/CssButtonAdmin1.css" rel="stylesheet" />
    <link href="../../Css/CssAdmin/CssTK.css" rel="stylesheet" />
    <link href="../../Css/CssDropDownList.css" rel="stylesheet" />
</asp:Content>
