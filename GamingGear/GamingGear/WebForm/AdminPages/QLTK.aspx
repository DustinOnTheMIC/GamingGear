<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QLTK.aspx.cs" Inherits="GamingGear.AdminMasterPage.QLTK" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="qltk-gridview1">
        <asp:GridView ID="GridView1" runat="server" ShowFooter="true" CellSpacing="4" HorizontalAlign="Center" Width="1000px" AutoGenerateColumns="False" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="white" GridLines="Vertical" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle />
            <Columns>
                <asp:TemplateField HeaderText="Tên ĐN">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox1" runat="server" Text='<%# Bind("TENDN") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox CssClass="textbox" ID="tbtdn" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("TENDN") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Mật Khẩu">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox2" runat="server" Text='<%# Bind("MATKHAU") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox CssClass="textbox" ID="tbmk" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("MATKHAU") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Tên KH">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox3" runat="server" Text='<%# Bind("TENKH") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox CssClass="textbox" ID="tbtenkh" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("TENKH") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="SĐT">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox4" runat="server" Text='<%# Bind("SDT") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox CssClass="textbox" ID="tbsdt" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("SDT") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Địa Chỉ">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox5" runat="server" Text='<%# Bind("DIACHI") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox CssClass="textbox" ID="tbdiachi" runat="server"></asp:TextBox>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("DIACHI") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Loại TK">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="TextBox6" runat="server" Text='<%# Bind("LOAITK") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList CssClass="default-DDL" ID="DropDownList2" runat="server">
                            <asp:ListItem Value="0">Admin</asp:ListItem>
                            <asp:ListItem Value="1">Khách Hàng</asp:ListItem>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("LOAITK") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="TTTK">
                    <EditItemTemplate>
                        <asp:TextBox CssClass="textbox" ID="tbtttk" runat="server" Text='<%# Bind("TTTK") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:DropDownList CssClass="default-DDL" ID="DropDownList3" runat="server">
                            <asp:ListItem>enable</asp:ListItem>
                            <asp:ListItem>disable</asp:ListItem>
                        </asp:DropDownList>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("TTTK") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                    <EditItemTemplate>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        </span>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </span>
                    </EditItemTemplate>
                    <FooterTemplate>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add User" />
                        </span>
                    </FooterTemplate>
                    <ItemTemplate>
                        <span class="span-btn-admin hover-btn">
                            <asp:Button CssClass="button" ID="Button2" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <div style="display: inline-block; margin-left: 30%;">
        <table style="width: 500px; color:white">
            <tr>
                <td>Tên ĐN</td>
                <td>
                    <asp:DropDownList CssClass="default-DDL" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TENDN" DataValueField="TENDN">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [TENDN] FROM [TAIKHOAN]"></asp:SqlDataSource>
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
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <link href="../../Css/CssAdmin/CssButtonAdmin1.css" rel="stylesheet" />
    <link href="../../Css/CssAdmin/CssQLTK.css" rel="stylesheet" />
    <link href="../../Css/CssDropDownList.css" rel="stylesheet" />
</asp:Content>

