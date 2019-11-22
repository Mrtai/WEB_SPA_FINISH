<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DanhSachDatLich.aspx.cs" Inherits="SpaWeb.Admin.DanhSachDatLich" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="card">
             <div class="card-body">
                <h1 class="text-primary">Danh Sách Lịch Hẹn</h1>
                <div>
                    <asp:Label runat="server" Text="value" ID="lb_messenger"
                        Visible="false"  CssClass="h3 text-success"></asp:Label>
                </div>
                 <div class="table table-striped">
                    <asp:GridView CssClass="table table-hover table-striped table-condensed text-center" runat="server" ID="SanPhamLoadGrid" AutoGenerateColumns="False"
                      ItemType="DAL.Model.LichHenModel"  SelectMethod="DatLichLoad_GetData">
                        <Columns>
                           <asp:TemplateField HeaderText="ID" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>
                                <div>
                                    <%#:Item.MA_LH %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="Chi Nhánh" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%#:Item.CHI_NHANH.TEN_CHI_NHANH %>
                                </div>
                            </ItemTemplate>

                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Dịch Vụ" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%#:Item.DICH_VU.TEN_DICH_VU %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>

                          <asp:TemplateField HeaderText="Giờ" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%#:Item.GIO %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Ngày" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%#:Item.NGAY %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Chú thích" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%#:Item.NOTE %>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField HeaderText="Trạng thái" HeaderStyle-CssClass="h4 text-center" >
                            <ItemTemplate>
                                <div class="text-left">
                                    <%# Item.TRANG_THAI%>
                                </div>
                            </ItemTemplate>
                          </asp:TemplateField>
                            <asp:TemplateField HeaderText="Chức Năng" HeaderStyle-CssClass="h4 text-center">
                                <ItemTemplate>
                                   <asp:LinkButton CssClass="btn btn-danger" style="padding:10px" runat ="server" Text="Xử lý" 
                                        CommandArgument='<%#:Item.MA_LH %>' OnClick="btn_Process_Click"
                                        OnClientClick="return confirm('Bạn có chắc chắn muốn xử lý lịch hẹn này?');"/>
                                    </a>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
           </div>
        </div>
</asp:Content>
