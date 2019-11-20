<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SanPhamLoad.aspx.cs" Inherits="SpaWeb.Admin.Product.SanPhamLoad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../Content/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/Site.css" rel="stylesheet" />
</head>
<body onload="document.form12.submit()">
    <form id="form1" runat="server" name="form12">
         <div class="form-group container">
            <h1 class="text-primary">Danh Sách Sản Phẩm</h1>
            <div>
                <a class="btn btn-success text-center" href="AddSanPham.aspx" style="margin-bottom:30px; font-size:larger">Tạo Mới</a>
                <asp:Label runat="server" Text="value" ID="lb_messenger"
                    Visible="false"  CssClass="h3 text-success"></asp:Label>
            </div>
             <div class="table table-hover">
                <asp:GridView CssClass="table table-hover table-condensed text-center" runat="server" ID="SanPhamLoadGrid" AutoGenerateColumns="False"
                    SelectMethod="SanPhamLoad_GetData">
                    <Columns>
                       <asp:TemplateField HeaderText="ID" HeaderStyle-CssClass="h4 text-center">
                        <ItemTemplate>
                            <div>
                                <%# Eval("MA_SP") %>
                            </div>
                        </ItemTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Tên Sản Phẩm" HeaderStyle-CssClass="h4 text-center" >
                        <ItemTemplate>
                            <div class="text-left">
                                <%# Eval("TEN_SP") %>
                            </div>
                        </ItemTemplate>

                      </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mô Tả" HeaderStyle-CssClass="h4 text-center">
                        <ItemTemplate>
                            <div class="text-left">
                                <%# Eval("MO_TA") %>
                            </div>
                        </ItemTemplate>
                      </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Giá" HeaderStyle-CssClass="h4 text-center">
                        <ItemTemplate>
                            <div>
                                <%#String.Format("{0:c}" ,Eval("GIA")) %>
                            </div>
                        </ItemTemplate>
                      </asp:TemplateField>

                      <asp:TemplateField HeaderText="Ảnh Sản Phẩm" HeaderStyle-CssClass="h4 text-center">
                        <ItemTemplate>
                            <div >
                                <img src ="../../Resource/image/<%# Eval("ANH") %>" class="img-responsive center-block" width="53" height="50"/>
                            </div>
                        </ItemTemplate>
                      </asp:TemplateField>

                        <asp:TemplateField HeaderText="Chức Năng" HeaderStyle-CssClass="h4 text-center">
                            <ItemTemplate>

                               <a href="EditSamPham.aspx?MaSP=<%# Eval("MA_SP") %>" class="btn btn-warning" style="padding:10px">Cập Nhật</a>
                               <a href="SanPhamLoad.aspx"> <asp:LinkButton CssClass="btn btn-danger" style="padding:10px" runat ="server" Text="Xóa" 
                                    CommandArgument='<%# Eval("MA_SP") %>' OnClick="btn_Delete_Click"
                                    OnClientClick="return confirm('Bạn Có Muốn Xóa Sản Phẩm Này Không?');"/>
                                </a>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
