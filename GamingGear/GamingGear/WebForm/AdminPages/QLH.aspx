<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QLH.aspx.cs" Inherits="GamingGear.AdminMasterPage.QLH" %>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <link href="../../Css/CssAdmin/CssQLH.css" rel="stylesheet" />
    <link href="../../Css/CssAdmin/CssButtonAdmin1.css" rel="stylesheet" />
    <link href="../../Css/CssDropDownList.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span class="span-btn-admin hover-btn qlh-themhang-button">
            <asp:Button CssClass="button" ID="btnThemHang" runat="server" Text="Thêm hàng" OnClick="btnThemHang_Click" />
        </span>
    <div>
        <asp:GridView ID="GridView1" runat="server" RowStyle-HorizontalAlign="Center" HorizontalAlign="Center" AutoGenerateColumns="False" CellPadding="4" ForeColor="white" GridLines="None" Height="373px" Width="845px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle />
            <Columns>
                <asp:TemplateField HeaderText="Mã Hàng">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox1" Enabled="false" runat="server" Text='<%# Bind("MAHANG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("MAHANG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên Hàng">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox2" runat="server" Text='<%# Bind("TENHANG") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("TENHANG") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Đơn Giá">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox3" runat="server" Text='<%# Bind("DONGIA") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("DONGIA","{0:0,0}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hình Ảnh">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox4" Enabled="false" runat="server" Text='<%# Bind("HINHANH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" ImageUrl='<%#"~/Images/imageProduct2/"+Eval("HINHANH") %>' Width="100px" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mô Tả">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox5" runat="server" Text='<%# Bind("MOTA") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("MOTA") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mã Loại">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox6" runat="server" Text='<%# Bind("MALOAI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("MALOAI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="Tình trạng" DataField="TTH" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        </span>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Huỷ" />
                        </span>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Sửa" />
                        </span>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="Button2" runat="server" CausesValidation="False" OnClientClick="return confirm('Are u sure?');" CommandName="Delete" Text="Xoá" />
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <RowStyle HorizontalAlign="Center"></RowStyle>
            <SelectedRowStyle ForeColor="white" />
            <SortedAscendingCellStyle />
            <SortedAscendingHeaderStyle />
            <SortedDescendingCellStyle />
            <SortedDescendingHeaderStyle />
        </asp:GridView>
    </div>

    <div>
        
        <br />
        <asp:Panel CssClass="panel" ID="Panel1" Visible="false" runat="server">
            <table style="width: 600px;">
                <tr>
                    <td>Mã hàng</td>
                    <td>
                        <asp:TextBox CssClass="textbox" ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Tên hàng</td>
                    <td>
                        <asp:TextBox CssClass="textbox" ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Đơn giá</td>
                    <td>
                        <asp:TextBox CssClass="textbox" ID="TextBox9" TextMode="Number" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Hình ảnh</td>
                    <td>
                        <asp:FileUpload CssClass="button" ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Mô tả</td>
                    <td>
                        <asp:TextBox CssClass="textbox" ID="TextBox10" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mã Loại</td>
                    <td>
                        <asp:DropDownList CssClass="default-DDL" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MALOAI" DataValueField="MALOAI">
                        </asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [MALOAI] FROM [LOAIHANG]"></asp:SqlDataSource>

                    </td>
                </tr>
                <tr>
                    <td>Tình trạng</td>
                    <td>
                        <asp:DropDownList CssClass="default-DDL" ID="DropDownList2" runat="server">
                            <asp:ListItem>enable</asp:ListItem>
                            <asp:ListItem>disable</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr>
                    <td>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="btnExit" runat="server" Text="Exit" OnClick="btnExit_Click" />
                        </span>
                    </td>
                    <td>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="btnADD" runat="server" Text="ADD" Width="165px" OnClick="btnADD_Click" />
                        </span>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <div>

        <table class="qlh-table">
            <tr>
                <td>Mã Hàng</td>
                <td>
                    <asp:DropDownList ID="DropDownList3" CssClass="default-DDL" runat="server" DataSourceID="SqlDataSource2" DataTextField="MAHANG" DataValueField="MAHANG">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [MAHANG] FROM [HANG]"></asp:SqlDataSource>
                </td>
                <td>
                    <span class="span-btn-admin hover-btn">
                        <asp:Button CssClass="button" ID="btnLock" runat="server" OnClick="btnLock_Click" Text="Lock" />
                    </span>
                </td>
                <td>
                    <span class="span-btn-admin hover-btn">
                        <asp:Button CssClass="button" ID="btnUnlock" runat="server" OnClick="btnUnlock_Click" Text="Unlock" />
                    </span>
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
