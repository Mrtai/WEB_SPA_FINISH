<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DanhSachNhanVien.aspx.cs" Inherits="SpaWeb.Admin.DanhSachNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
             <div class="card-body">
                <h1 class="text-primary">Danh Sách Nhân Viên</h1>
                <div>
                    <a class="btn btn-success text-center" href="AddNhanVien.aspx" style="margin-bottom:30px; font-size:larger">Tạo Mới</a>
                    <asp:Label runat="server" Text="value" ID="lb_messenger"
                        Visible="false"  CssClass="h3 text-success"></asp:Label>
                </div>
                 <div class="table table-striped">
                    <asp:GridView CssClass="table table-hover table-striped table-condensed text-center" runat="server" ID="SanPhamLoadGrid" AutoGenerateColumns="False"
                        SelectMethod="NhanVienLoad_GetData">
                        <Columns>
                           <asp:TemplateField HeaderText="ID" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>
                                <div>
                                    <%# Eval("MA_NV") %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="Tên Nhân Viên" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%# Eval("TEN_NV") %>
                                </div>
                            </ItemTemplate>

                          </asp:TemplateField>
                        
                            <asp:TemplateField HeaderText="Username" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>
                                <div>
                                    <%#Eval("USERNAME") %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="Email" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>
                                <div>
                                    <%#Eval("EMAIL") %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>

                            <asp:TemplateField HeaderText="Chức Năng" HeaderStyle-CssClass="h4 text-center">
                                <ItemTemplate>

                                   <a href="EditNhanVien.aspx?MaNV=<%# Eval("MA_NV") %>" class="btn btn-warning" style="padding:10px">Cập Nhật</a>
                                   <a href="SanPhamLoad.aspx"> 
                                   <asp:LinkButton CssClass="btn btn-danger" style="padding:10px" runat ="server" Text="Xóa" 
                                        CommandArgument='<%# Eval("MA_NV") %>' OnClick="btn_Delete_Click"
                                        OnClientClick="return confirm('Bạn Có Muốn Xóa Nhân Viên Này Không?');"/>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
           </div>
        </div>
</asp:Content>
