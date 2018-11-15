<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="project-emp.aspx.cs" Inherits="SunbeamEnterprise.project_emp" %>

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
                    <li><a href="Project.aspx">Project</a></li>
                    <li><a href="Skill.aspx">Skill</a></li>
                    <li><a href="division.aspx">Divison</a></li>
                    <li><a href="dependents.aspx">Dependent</a></li>
                    <li><a href="project-schedule.aspx">Project-Schedule</a></li>
                    <li><a href="emp-skills.aspx">Employee-Skill</a></li>
                    <li class="active"><a href="#">Project-Employee</a></li>
                </ul>
            </div>
        </nav>
        <form id="form1" runat="server" style="margin-top: 40px;">
            <div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT &quot;PROJECT_ID&quot;, &quot;PROJECT_NAME&quot; FROM &quot;PROJECT&quot;"></asp:SqlDataSource>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="PROJECT_NAME" DataValueField="PROJECT_ID" CssClass="form-control">
                </asp:DropDownList>
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource2" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT_ID" ReadOnly="True" SortExpression="PROJECT_ID" />
                        <asp:BoundField DataField="PROJECT_NAME" HeaderText="PROJECT_NAME" SortExpression="PROJECT_NAME" />
                        <asp:BoundField DataField="PROJECT_START_DATE" HeaderText="PROJECT_START_DATE" SortExpression="PROJECT_START_DATE" />
                        <asp:BoundField DataField="PROJECT_END_DATE" HeaderText="PROJECT_END_DATE" SortExpression="PROJECT_END_DATE" />
                        <asp:BoundField DataField="PROJECT_STATUS" HeaderText="PROJECT_STATUS" SortExpression="PROJECT_STATUS" />
                        <asp:BoundField DataField="DIVISION_ID" HeaderText="DIVISION_ID" SortExpression="DIVISION_ID" />
                        <asp:TemplateField HeaderText="EMPLOYE DETAIL">
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="EMP_ID" DataValueField="EMP_ID" CssClass="form-control">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT DISTINCT * FROM &quot;EMPLOYEE_PROJECT&quot; WHERE (&quot;PROJECT_ID&quot; = :PROJECT_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList1" Name="PROJECT_ID" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <br />
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource4" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                                    <Columns>
                                        <asp:BoundField DataField="EMP_NAME" HeaderText="EMP_NAME" SortExpression="EMP_NAME" />
                                        <asp:BoundField DataField="EMP_ADDRESS" HeaderText="EMP_ADDRESS" SortExpression="EMP_ADDRESS" />
                                        <asp:BoundField DataField="EMP_CONTACT" HeaderText="EMP_CONTACT" SortExpression="EMP_CONTACT" />
                                        <asp:BoundField DataField="EMP_EMAIL" HeaderText="EMP_EMAIL" SortExpression="EMP_EMAIL" />
                                        <asp:BoundField DataField="EMAIL_DOB" HeaderText="EMAIL_DOB" SortExpression="EMAIL_DOB" />
                                        <asp:BoundField DataField="DIVISION_ID" HeaderText="DIVISION_ID" SortExpression="DIVISION_ID" />
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
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot; WHERE (&quot;EMP_ID&quot; = :EMP_ID)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList2" Name="EMP_ID" PropertyName="SelectedValue" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot; WHERE (&quot;PROJECT_ID&quot; = :PROJECT_ID)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="PROJECT_ID" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>

            </div>
        </form>
    </div>
</body>
</html>
