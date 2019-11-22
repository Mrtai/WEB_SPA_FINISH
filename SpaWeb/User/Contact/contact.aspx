<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="SpaWeb.User.Contact.WebForm1" %>

<%@ Register Src="~/Calendar.ascx" TagPrefix="uc1" TagName="Calendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div id="main">
        <section class="main-title-section-wrapper default" style="">
            <div class="container">
                <div class="main-title-section">
                    <h1>Liên Hệ</h1>		</div>
                <div class="breadcrumb" style="width: 98%;">
                    <a href="https://gaspa.vn/">Home</a><span class="fa default"></span><span class="current">Liên Hệ</span>
                </div>	
            </div>
        </section>
        <div class="container">
            
           
            <div class="row">
                 <asp:Label ID="lb_result" CssClass="text-danger" runat="server" Text="Label" Visible="false"></asp:Label>
                <div class="col-lg-4">
                    <asp:MultiView ID="MultiView1" runat="server">
                         <asp:View ID="viewStep1" runat="server">
                             <div class="bg-primary">
                                 <div ><h3 class="text-center" >Đặt lịch</h3></div>
                                 <div class="form-group" >
                                     <asp:DropDownList CssClass="form-control " style="margin-left: 5%;" ID="dr_chinhanh" runat="server" ViewStateMode="Enabled"></asp:DropDownList></div>
                                 <div class="form-group ">
                                     <asp:DropDownList CssClass="form-control " style="margin-left: 5%;" ID="dr_dichvu" runat="server" ViewStateMode="Enabled"></asp:DropDownList></div>
                                <asp:Calendar ID="Calendar1" runat="server" DayHeaderStyle-BackColor="#FFFF99" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged">
                                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                                        <OtherMonthDayStyle ForeColor="#999999" />
                                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                                        <TodayDayStyle BackColor="#CCCCCC" />
                                    </asp:Calendar>

                                 <div class="form-group text-center">
                                     <asp:Button ID="btnNext" CssClass="btn btn-info" runat="server" Text="Đồng ý" OnClick="btnNext_Click" />
                                 </div>
                             </div>
                         </asp:View>
                         <asp:View ID="viewStep2" runat="server">
                             <div class="bg-primary">
                                 <div><h3 class="text-center" >Đặt lịch</h3></div>
                                 <div style="margin-left: 5%;">
                                     <p>Chào mừng bạn đến với Gà Spa.</p>
                                     <p>Bạn đã đặt dịch vụ<b><asp:Label ID="lb_service" runat="server" Text=""></asp:Label></b><br />
                                         tại chi nhánh <b><asp:Label ID="lb_chinhanh" runat="server" Text=""></asp:Label></b>
                                     </p>
                                     <p>Mời bạn chọn thời gian đặt lịch</p>
                                     
                                 </div>
                                 
                                 
                                 <div class="row"> 
                                     <div class="col-lg-4 form-group">
                                         <asp:RadioButton ID="opt0" GroupName="gio" runat="server" Text="8:00 Sáng" Checked="true" /><br />
                                         <asp:RadioButton ID="opt1" GroupName="gio" runat="server"  Text="8:30 Sáng" /><br/>
                                         <asp:RadioButton ID="opt2" GroupName="gio" runat="server" Text="8:30 Sáng" /><br />
                                         <asp:RadioButton ID="opt3" GroupName="gio" runat="server" Text="9:00 Sáng" /><br />
                                         <asp:RadioButton ID="opt4" GroupName="gio" runat="server" Text="9:30 Sáng" /><br />
                                         <asp:RadioButton ID="opt5" GroupName="gio" runat="server" Text="10:00 Sáng" /><br />
                                         <asp:RadioButton ID="opt6" GroupName="gio" runat="server" Text="10:30 Sáng" /><br />
                                         <asp:RadioButton ID="opt7" GroupName="gio" runat="server" Text="11:00 Sáng" /><br />
                                         <asp:RadioButton ID="opt8" GroupName="gio" runat="server" Text="11:30 Sáng" /><br />
                                     </div>
                                     <div class="col-lg-4 form-group">
                                         <asp:RadioButton style="margin-left: -2px;" ID="opt9" GroupName="gio" runat="server" Text="12:00 Chiều" />
                                         <asp:RadioButton ID="opt10" GroupName="gio" runat="server" Text="1:00 Chiều" />
                                         <asp:RadioButton ID="opt11" GroupName="gio" runat="server" Text="1:30 Chiều" />
                                         <asp:RadioButton ID="opt12" GroupName="gio" runat="server" Text="2:00 Chiều" />
                                         <asp:RadioButton ID="opt13" GroupName="gio" runat="server" Text="2:30 Chiều" />
                                         <asp:RadioButton ID="opt14" GroupName="gio" runat="server" Text="3:00 Chiều" />
                                         <asp:RadioButton ID="opt15" GroupName="gio" runat="server" Text="3:30 Chiều" />
                                         <asp:RadioButton ID="opt16" GroupName="gio" runat="server" Text="4:00 Chiều" />
                                         <asp:RadioButton ID="opt17" GroupName="gio" runat="server" Text="4:30 Chiều" />
                                     </div>
                                     <div class="col-lg-4 form-group">
                                         <asp:RadioButton ID="opt18" GroupName="gio" runat="server" Text="5:00 Chiều" />
                                         <asp:RadioButton ID="opt19" GroupName="gio" runat="server" Text="5:30 Chiều" />
                                         <asp:RadioButton ID="opt20" GroupName="gio" runat="server" Text="6:00 Chiều" />
                                         <asp:RadioButton ID="opt21" GroupName="gio" runat="server" Text="6:30 Chiều" />
                                         <asp:RadioButton ID="opt22" GroupName="gio" runat="server" Text="7:00 Chiều" />
                                         <asp:RadioButton ID="opt23" GroupName="gio" runat="server" Text="7:30 Chiều" />
                                     </div>
                                 </div>
                                 <div class="form-group text-center">
                                     <asp:Button ID="btn_previous" CssClass="btn btn-info text-left" runat="server" Text="Quay lại" OnClick="btn_previous_Click" />
                                     <asp:Button ID="btn_next1" CssClass="btn btn-info text-right" runat="server" Text="Tiếp theo" OnClick="btn_next1_Click" />
                                 </div>
                           </div>
                         </asp:View>
                        <asp:View ID="viewStep3" runat="server">
                            <div class="bg-primary">
                              <div><h3 class="text-center" >Đặt lịch</h3></div>
                              <div style="margin-left: 5%;" >
                                  <p>Bạn đã đặt dịch vụ vào lúc ngày .</p>
                                  <p>Vui lòng điền thông tin của bạn để xác nhận cuộc hẹn</p>
                              
                              <div class="form-group">
                                 <asp:TextBox  CssClass="form-control" ID="txt_name"  runat="server" placeholder="Họ tên"></asp:TextBox> 
                                  <asp:RequiredFieldValidator ControlToValidate="txt_name" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Họ tên không được bỏ trống"></asp:RequiredFieldValidator></div>
                               <div class="form-group">
                                   
                                   <asp:TextBox  CssClass="form-control" ID="txt_phone" runat="server" placeholder="Số điện thoại"></asp:TextBox>
                                   <asp:RequiredFieldValidator ControlToValidate="txt_phone" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Số điện thoại không được bỏ trống"></asp:RequiredFieldValidator>
                               </div>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="txt_email" runat="server" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txt_email" runat="server" ErrorMessage="Email không được bỏ trống"></asp:RequiredFieldValidator></div>
                                <div class="form-group">
                                    <asp:TextBox ID="txt_note1" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group text-center">
                                    <asp:Button ID="btn_previous_2" CssClass="btn btn-info text-left" runat="server" Text="Quay lại" OnClick="btn_previous_2_Click" />
                                    <asp:Button ID="btn_submit" CssClass="btn btn-info text-right" runat="server" Text="Đồng ý" OnClick="btn_submit_Click" />
                                </div>
                               </div>
                            </div>
                        </asp:View>
                    </asp:MultiView>
                </div>
                <div class="col-lg-4">
                    <div class="wpb_wrapper">
                        <div class="booking-title"><strong>ĐỊA CHỈ</strong></div>
                        <div class="address">
                            <asp:Repeater ID="DSchinhan" runat="server">
                                <ItemTemplate>
                                    <div>
                                        <b><%# Eval("TEN_CHI_NHANH")%></b>
                                    </div>
                                    <div><%# Eval("DIA_CHI")%></div>
                                    <div><%# Eval("PHONE")%></div>
                                </ItemTemplate>
                            </asp:Repeater> 
                        </div>
                    </div>
                 </div>
                <div class="col-lg-4">
                    <div class="wpb_wrapper">
			            <p><strong>GIỜ LÀM VIỆC</strong></p>
                        <p><strong>Thứ 2 – Chủ nhật</strong></p>
                        <p>8:00 – 19:30</p>
                        
		             </div>
                </div>
        </div>
    </div>
    
    </div>
</asp:Content>
