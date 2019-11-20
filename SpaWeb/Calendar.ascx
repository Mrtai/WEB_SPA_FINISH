<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Calendar.ascx.cs" Inherits="SpaWeb.Calendar" %>
 <div class="form-group container">
    <asp:TextBox CssClass="form-control " style="
    float: left;
" ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox><asp:ImageButton style="
    float: left;
" ID="btn_calendar" ImageUrl="~/Resource/image/calendar1.png" runat="server" OnClick="ImageButton1_Click" />
    </div>  

    <asp:Calendar ID="Calendar1" runat="server" Visible="False" OnSelectionChanged="Calendar1_SelectionChanged" DayHeaderStyle-BackColor="#FFFF99" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
        <TodayDayStyle BackColor="#CCCCCC" />
</asp:Calendar>
