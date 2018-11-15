<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Skill.aspx.cs" Inherits="SunbeamEnterprise.Skill" %>

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
                    <li class="active"><a href="#">Skill</a></li>
                    <li><a href="division.aspx">Divison</a></li>
                    <li><a href="dependents.aspx">Dependent</a></li>
                    <li><a href="project-schedule.aspx">Project-Schedule</a></li>
                    <li><a href="emp-skills.aspx">Employee-Skill</a></li>
                    <li><a href="project-emp.aspx">Project-Employee</a></li>
                </ul>
            </div>
        </nav>
        <form id="form1" runat="server" style="margin-top: 60px;">
            <div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" DeleteCommand="DELETE FROM &quot;SKILL&quot; WHERE &quot;SKILL_ID&quot; = :SKILL_ID" InsertCommand="INSERT INTO &quot;SKILL&quot; (&quot;SKILL_ID&quot;, &quot;SKILL_NAME&quot;) VALUES (:SKILL_ID, :SKILL_NAME)" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT * FROM &quot;SKILL&quot;" UpdateCommand="UPDATE &quot;SKILL&quot; SET &quot;SKILL_NAME&quot; = :SKILL_NAME WHERE &quot;SKILL_ID&quot; = :SKILL_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="SKILL_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SKILL_ID" Type="String" />
                        <asp:Parameter Name="SKILL_NAME" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SKILL_NAME" Type="String" />
                        <asp:Parameter Name="SKILL_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="SKILL_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">

                    <InsertItemTemplate>
                        SKILL_ID:
                <asp:TextBox ID="SKILL_IDTextBox" runat="server" Text='<%# Bind("SKILL_ID") %>' CssClass="form-control" />
                        <br />
                        SKILL_NAME:
                <asp:TextBox ID="SKILL_NAMETextBox" runat="server" Text='<%# Bind("SKILL_NAME") %>' CssClass="form-control" />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>

                </asp:FormView>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="SKILL_ID" DataSourceID="SqlDataSource1" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="SKILL_ID" HeaderText="SKILL_ID" ReadOnly="True" SortExpression="SKILL_ID" />
                        <asp:BoundField DataField="SKILL_NAME" HeaderText="SKILL_NAME" SortExpression="SKILL_NAME" />
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

            </div>
        </form>
    </div>
</body>
</html>
