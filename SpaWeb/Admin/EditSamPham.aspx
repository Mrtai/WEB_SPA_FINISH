<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/AdminMaster.Master" CodeBehind="EditSamPham.aspx.cs" Inherits="SpaWeb.Admin.Product.EditSamPham"  validateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <link href="../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

    <div class="card">
        <div class="card-body">
            <h1 class="card-title">Cập Nhật Sản Phẩm</h1>
            
            <asp:Label runat="server" Text="" ID="lb_messenger"
                Visible="false"
                CssClass="text-danger h3"></asp:Label>

            <div class="forms-sample">
                <div class="form-group">
                    <asp:Label ID="la" runat="server" Text="Tên Sản Phẩm" CssClass="control-label" for="txt_tenSP"></asp:Label>
                    
                    <asp:TextBox ID="txt_tenSP" runat="server" CssClass="form-control"></asp:TextBox>
                    
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Mô Tả"></asp:Label>
                    
                    <asp:TextBox ID="txt_moTa" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" Height="150px"></asp:TextBox>
                    <script>CKEDITOR.replace('ContentPlaceHolder1_txt_moTa');</script>


                </div>
               
                 <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Chọn Ảnh Đại Điện Cho Sản Phẩm"></asp:Label>
                    <span class="input-group-append">
                        <asp:FileUpload ID="FileUpload_hinh" runat="server"  CssClass="file-upload-info"/>
                     </span>
                    
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label4" runat="server" CssClass="control-label" Text="Giá"></asp:Label>
                   
                    <asp:TextBox ID="txt_gia" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                    
                </div>
            </div>
            <div>
               
                <asp:Button runat="server" ID="btn_Save" CssClass="btn btn-success ml-30" Text="Lưu" OnClick="btn_Save_Click"/>
                <asp:Button runat="server" ID="btn_Reset" CssClass="btn btn-info" OnClick="btn_Reset_Click" Text="Reset"/>
                <a href="SanPhamLoad.aspx" class="btn btn-danger">Quay Lại</a>
            </div>
          </div>

        </div>
       
</asp:Content>