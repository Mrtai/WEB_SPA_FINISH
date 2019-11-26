<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChiTietDichVu.aspx.cs" Inherits="SpaWeb.ChiTietDichVu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="min-height: 100px">
        <asp:FormView ID="sanPhamDetail" SelectMethod="DichVuDetail_GetItem" RenderOuterTable="false" runat="server" ItemType="DAL.DICH_VU">
            <ItemTemplate>
                <div class="row">
                    <div class="col-lg-8">
                        <img class="group list-group-image img-fluid" src="<%# Item.IMAGE%>" alt="" width="100%" height="350px" />
                    </div>
                    <div class="col-lg-4">
                        <h2 style="align-items: center; text-align: center"><%# Item.TEN_DICH_VU %></h2>
                        <div>
                            <div class="row">
                               
                                <h3>Đánh giá: <%# Item.DANH_GIA %>/5   <span class="glyphicon glyphicon-star" aria-hidden="true"></span></h3> 
							
                               <h3>Giá: <%# Item.GIA %></h3> 
                                <h3>Số lượng người đã sử dụng: <%# Item.SOLUONG_DUNG %></h3> 
                                <h4>ĐẶC BIỆT: Vẫn hoạt động bình thường vào giờ nghỉ trưa, khách hàng có thể thoải mái booking mà không ngại ảnh hưởng đến công việc, học tập,…</h4>
	                        </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <h2 style="text-align: center; padding: 30px">Nội dung chi tiết và cách sử dụng dịch vụ</h2>
                </div>
                <div>
                    <%# Item.CHI_TIET %>
                </div>
            </ItemTemplate>
        </asp:FormView>
    </div>

</asp:Content>
