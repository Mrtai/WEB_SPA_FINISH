<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditDichVuDetail.aspx.cs" Inherits="SpaWeb.Admin.EditDichVuDetail" EnableEventValidation = "false" validateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Scripts/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="row" style="padding:50px">
       
            <div class="row" style="width:100%">
               
                <div class="col-lg-4">
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Chọn Ảnh Cho phần chi tiết"></asp:Label>
                    <div class="row">
                        <asp:FileUpload ID="FileUpload_hinh1" runat="server"  CssClass="file-upload-info"/>
                    </div>  
                    <div class="row">
                        <asp:Button ID="Button1" runat="server" Text="Thêm Hình" OnClick="Button1_Click" />
                    </div>       
                </div>
                <div class="col-lg-8" style="border:solid">
                    <div class="row">
                         <asp:Repeater ID="RepeaterHinh" ItemType="System.string" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-3">
                               <img  src="../Resource/image/<%# Item %>"alt="" width="100px" height="100px"/>
                            </div>           
                        </ItemTemplate>
                    </asp:Repeater>
                    </div>
                </div>
            </div>
            <div class="row" style="width: 100%">
                <div class="form-group">
                    <asp:Label ID="la" runat="server" Text="Tên Sản Phẩm" CssClass="control-label" for="txt_tenSP"></asp:Label>
                    
                    <asp:TextBox ID="txt_tenDV1" runat="server" CssClass="form-control"></asp:TextBox>                  
                </div>
                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" Text="Hình Đại diện" CssClass="control-label" for="txt_tenSP"></asp:Label>
                    
                    <asp:TextBox ID="txt_image1" runat="server" CssClass="form-control"></asp:TextBox>                  
                </div>
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" Text="Giá Sản Phẩm" CssClass="control-label" for="txt_tenSP"></asp:Label>
                    
                    <asp:TextBox ID="txt_gia1" runat="server" CssClass="form-control"></asp:TextBox>                  
                </div>
                 <div class="form-group">
                    <asp:Label ID="Label4" runat="server" Text="Số Lượng dùng ban đầu" CssClass="control-label" for="txt_tenSP"></asp:Label>
                    
                    <asp:TextBox ID="txt_soluong1" runat="server" CssClass="form-control"></asp:TextBox>                  
                </div>
                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" Text="Chọn loại Dịch Vụ" CssClass="control-label" for="txt_tenSP"></asp:Label>
                    
                    <asp:DropDownList ID="DropDownList1"  runat="server" CssClass="form-control"></asp:DropDownList>            
                </div>
                <div class="form-group has-success has-feedback" style="width:100%">
                    <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Chi tiết Dịch Vụ"></asp:Label>
                    
                    <asp:TextBox ID="txt_ChiTiet1" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" Height="150px"></asp:TextBox>
                    <script>CKEDITOR.replace('ContentPlaceHolder1_txt_ChiTiet1');</script>

                </div>
                <div>
                <asp:Button runat="server" ID="btn_Save" CssClass="btn btn-success ml-30" OnClick="btn_Save_Click" Text="Lưu"/>
                <asp:Button runat="server" ID="btn_Reset" CssClass="btn btn-info"  Text="Reset"/>
                <a href="EditDichVu.aspx" class="btn btn-danger">Quay Lại</a>
            </div>
            </div>
            
        </div>
</asp:Content>
