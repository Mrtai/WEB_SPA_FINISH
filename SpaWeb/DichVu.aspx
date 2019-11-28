<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DichVu.aspx.cs" Inherits="SpaWeb.DichVu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <div class="container">

<div class="row">
    <asp:Repeater ID="Repeaterdata_host" runat="server">
        <ItemTemplate>
            <div class="col-12 col-sm-6 col-md-4 image-grid-item">
				<div style='background-image: url(Resource/image/<%# Eval("IMAGE")%>);' class="image-grid-cover">
					<a href="#" class="image-grid-clickbox" style="padding: 100px;"><%# Eval("TEN_DICH_VU")%></a>
					
				</div>
			</div>
        </ItemTemplate>
    </asp:Repeater>

</div>
</div>
    <div class="container">
    <div class="row">
        <div class="col-lg-12 my-3">
            <div class="pull-right">
                <div class="btn-group" style="margin: 30px;">
                    <button class="btn btn-info" id="list">
                        List View</button>
                    <button class="btn btn-danger" id="grid">
                        Grid View
                    </button>
                </div>
            </div>
        </div>
    </div> 
    <div id="products" class="row view-group">
        <div class="row">
            <asp:Repeater ID="Repeater_dichvu" runat="server">
                <ItemTemplate>
                    <div class="item col-xs-4 col-md-4 col-lg-4" style="height:auto">
                    <div class="thumbnail card" style="width:100%;height:auto">
                        <div class="img-event">
                            <img class="group list-group-image img-fluid" src="Resource/image/<%# Eval("IMAGE")%>" alt="" width="100%" height="200px"/>
                        </div>
                        <div class="caption card-body">
                            <h4 class="group card-title inner list-group-item-heading">
                               <%# Eval("TEN_DICH_VU")%></h4>
                            <p class="group inner list-group-item-text">
                                Product description... Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
                                sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
                            <div class="row">
                                <div class="col-xs-12 col-md-6">
                                    <p class="lead">
                                       <%# Eval("GIA")%>vnđ</p>
                                </div>
                                <div class="col-xs-12 col-md-6">                            
                                    <a class="btn btn-success" href="ChiTietDichVu.aspx?MaDV=<%#Eval("MA_DV") %>">Xem Dich vu</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </ItemTemplate>
            </asp:Repeater>
           
        </div>
  </div>
        </div>
        <script>
            $(document).ready(function () {
                $('#list').click(function (event) { event.preventDefault(); $('#products .item').addClass('list-group-item'); });
                $('#grid').click(function (event) { event.preventDefault(); $('#products .item').removeClass('list-group-item'); $('#products .item').addClass('grid-group-item'); });
            });
        </script>

</asp:Content>
