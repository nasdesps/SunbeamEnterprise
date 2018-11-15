<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="emp-skills.aspx.cs" Inherits="SunbeamEnterprise.emp_skills" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <title>Sunbeam Enterprise</title>
</head>
<body>
    <div class="container">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand">Sunbeam Enterprise</a>
                </div>
                <ul class="nav navbar-nav">
                    
                    <li><a href="employee.aspx">Employee</a></li>
                    <li><a href="#">Project</a></li>
                    <li><a href="Skill.aspx">Skill</a></li>
                    <li><a href="division.aspx">Divison</a></li>
                    <li><a href="dependents.aspx">Dependent</a></li>
                    <li><a href="project-schedule.aspx">Project-Schedule</a></li>
                    <li class="active"><a href="#">Employee-Skill</a></li>
                    <li><a href="project-emp.aspx">Project-Employee</a></li>
                </ul>
            </div>
        </nav>
        <form id="form1" runat="server" style="margin-top: 40px;">
            <div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT &quot;EMP_ID&quot;, &quot;EMP_NAME&quot; FROM &quot;EMPLOYEE&quot;"></asp:SqlDataSource>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EMP_NAME" DataValueField="EMP_ID" CssClass="form-control">
                </asp:DropDownList>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" />
                        <asp:BoundField DataField="SKILL_ID" HeaderText="SKILL_ID" SortExpression="SKILL_ID" />
                        <asp:TemplateField HeaderText="EMPLOYEE NAME">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="SKILL_NAME" DataValueField="SKILL_ID" Enabled="False" SelectedValue='<%# Bind("SKILL_ID") %>' CssClass="form-control">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT * FROM &quot;SKILL&quot;"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066"></FooterStyle>

                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White"></HeaderStyle>

                    <PagerStyle HorizontalAlign="Left" BackColor="White" ForeColor="#000066"></PagerStyle>

                    <RowStyle ForeColor="#000066"></RowStyle>

                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                    <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                    <SortedAscendingHeaderStyle BackColor="#007DBB"></SortedAscendingHeaderStyle>

                    <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                    <SortedDescendingHeaderStyle BackColor="#00547E"></SortedDescendingHeaderStyle>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE_SKILLS&quot; WHERE (&quot;EMP_ID&quot; = :EMP_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="EMP_ID" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
        </form>
    </div>
</body>
</html>
