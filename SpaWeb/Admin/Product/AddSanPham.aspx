<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeBehind="AddSanPham.aspx.cs" Inherits="SpaWeb.Admin.Product.AddSanPham" validateRequest="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title></title>
    
    <link href="../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group container">
            <div class="h1 text-uppercase text-center text-primary">Thêm Sản Phẩm</div>
            <asp:Label runat="server" Text="" ID="lb_messenger"
                Visible="false"
                CssClass="text-danger h3"></asp:Label>
            <div class="form-group">
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="la" runat="server" Text="Tên Sản Phẩm" CssClass="control-label" for="txt_tenSP"></asp:Label>
                    
                    <asp:TextBox ID="txt_tenSP" runat="server" CssClass="form-control"></asp:TextBox>
                    
                </div>
                <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label2" runat="server" CssClass="control-label" Text="Mô Tả"></asp:Label>
                    
                    <asp:TextBox ID="txt_moTa" TextMode="multiline" Rows="5" runat="server" CssClass="form-control" Height="150px"></asp:TextBox>
                    <script>CKEDITOR.replace('txt_moTa');</script>


                </div>
               
                 <div class="form-group has-success has-feedback">
                    <asp:Label ID="Label1" runat="server" CssClass="control-label" Text="Chọn Ảnh Đại Điện Cho Sản Phẩm"></asp:Label>
                   
                    <asp:FileUpload ID="FileUpload_hinh" runat="server" CssClass="form-control"/>
                    
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
    </form>

</body>
</html>
