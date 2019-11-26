<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditDichVu.aspx.cs" Inherits="SpaWeb.Admin.EditDichVu" enableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="container">
        <h2 style="text-align:center">Danh sách dịch Vụ</h2> <a class="btn btn-success" style="margin:20px" href="AddDichVu.aspx">Thêm Dịch Vụ</a>
    <div class="row" >
         <asp:Repeater ID="Repeater_dichvu" runat="server">
                <ItemTemplate>
                    <div class="row" style="width:100%;border:solid;border-bottom:solid;border-width:1px;border-left:none;border-top:none;border-right:none">
                        <div class="col-lg-3">
                         <div class="img-event">
                            <img class="group list-group-image img-fluid" src="<%# Eval("IMAGE")%>" alt="" width="100px" height="100px"/>
                        </div>
                        </div>
                        <div class="col-lg-5">
                            <h4 class="group card-title inner list-group-item-heading">
                               <%# Eval("TEN_DICH_VU")%></h4>
                             <div class="col-xs-12 col-md-6">
                                    <p class="lead">
                                       <%# Eval("GIA")%>vnđ</p>
                                </div>
                        </div>
                        <div class="col-lg-4" style="padding-top:20px">
                            <a class="btn btn-danger" href="EditDichVuDetail.aspx?MaDV=<%#Eval("MA_DV") %>">Sửa </a>                                                   
                            <asp:Button ID="Button1" CommandName=<%#Eval("MA_DV") %> runat="server" Text="Delete" CssClass="btn btn-outline-reddit" OnClick="Button1_Click"/>
                             
                        </div>
                    </div>
                 </ItemTemplate>
             </asp:Repeater>
         </div>
    </div>
     

</asp:Content>
