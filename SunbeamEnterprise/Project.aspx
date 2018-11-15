<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="SunbeamEnterprise.Project" %>

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
                    <li class="active"><a href="#">Project</a></li>
                    <li><a href="Skill.aspx">Skill</a></li>
                    <li><a href="division.aspx">Divison</a></li>
                    <li><a href="dependents.aspx">Dependent</a></li>
                    <li><a href="project-schedule.aspx">Project-Schedule</a></li>
                    <li><a href="emp-skill.aspx">Employee-Skill</a></li>
                    <li><a href="project-emp.aspx">Project-Employee</a></li>
                </ul>
            </div>
        </nav>
        <form id="form1" runat="server" style="margin-top: 60px;">
            <div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" DeleteCommand="DELETE FROM &quot;PROJECT&quot; WHERE &quot;PROJECT_ID&quot; = :PROJECT_ID" InsertCommand="INSERT INTO &quot;PROJECT&quot; (&quot;PROJECT_ID&quot;, &quot;PROJECT_NAME&quot;, &quot;PROJECT_START_DATE&quot;, &quot;PROJECT_END_DATE&quot;, &quot;PROJECT_STATUS&quot;, &quot;DIVISION_ID&quot;) VALUES (:PROJECT_ID, :PROJECT_NAME, :PROJECT_START_DATE, :PROJECT_END_DATE, :PROJECT_STATUS, :DIVISION_ID)" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT * FROM &quot;PROJECT&quot;" UpdateCommand="UPDATE &quot;PROJECT&quot; SET &quot;PROJECT_NAME&quot; = :PROJECT_NAME, &quot;PROJECT_START_DATE&quot; = :PROJECT_START_DATE, &quot;PROJECT_END_DATE&quot; = :PROJECT_END_DATE, &quot;PROJECT_STATUS&quot; = :PROJECT_STATUS, &quot;DIVISION_ID&quot; = :DIVISION_ID WHERE &quot;PROJECT_ID&quot; = :PROJECT_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="PROJECT_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PROJECT_ID" Type="String" />
                        <asp:Parameter Name="PROJECT_NAME" Type="String" />
                        <asp:Parameter Name="PROJECT_START_DATE" Type="DateTime" />
                        <asp:Parameter Name="PROJECT_END_DATE" Type="DateTime" />
                        <asp:Parameter Name="PROJECT_STATUS" Type="String" />
                        <asp:Parameter Name="DIVISION_ID" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PROJECT_NAME" Type="String" />
                        <asp:Parameter Name="PROJECT_START_DATE" Type="DateTime" />
                        <asp:Parameter Name="PROJECT_END_DATE" Type="DateTime" />
                        <asp:Parameter Name="PROJECT_STATUS" Type="String" />
                        <asp:Parameter Name="DIVISION_ID" Type="String" />
                        <asp:Parameter Name="PROJECT_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">

                    <InsertItemTemplate>
                        PROJECT_ID:
                <asp:TextBox ID="PROJECT_IDTextBox" runat="server" Text='<%# Bind("PROJECT_ID") %>' CssClass="form-control" />
                        <br />
                        PROJECT_NAME:
                <asp:TextBox ID="PROJECT_NAMETextBox" runat="server" Text='<%# Bind("PROJECT_NAME") %>' CssClass="form-control" />
                        <br />
                        PROJECT_START_DATE:
                <asp:TextBox ID="PROJECT_START_DATETextBox" runat="server" Text='<%# Bind("PROJECT_START_DATE") %>' CssClass="form-control" />
                        <br />
                        PROJECT_END_DATE:
                <asp:TextBox ID="PROJECT_END_DATETextBox" runat="server" Text='<%# Bind("PROJECT_END_DATE") %>' CssClass="form-control" />
                        <br />
                        PROJECT_STATUS:
                <asp:TextBox ID="PROJECT_STATUSTextBox" runat="server" Text='<%# Bind("PROJECT_STATUS") %>' CssClass="form-control" />
                        <br />
                        DIVISION_ID:
                <asp:TextBox ID="DIVISION_IDTextBox" runat="server" Text='<%# Bind("DIVISION_ID") %>' CssClass="form-control" />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>

                </asp:FormView>
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PROJECT_ID" DataSourceID="SqlDataSource1" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="PROJECT_ID" HeaderText="PROJECT_ID" ReadOnly="True" SortExpression="PROJECT_ID" />
                        <asp:BoundField DataField="PROJECT_NAME" HeaderText="PROJECT_NAME" SortExpression="PROJECT_NAME" />
                        <asp:BoundField DataField="PROJECT_START_DATE" HeaderText="PROJECT_START_DATE" SortExpression="PROJECT_START_DATE" />
                        <asp:BoundField DataField="PROJECT_END_DATE" HeaderText="PROJECT_END_DATE" SortExpression="PROJECT_END_DATE" />
                        <asp:BoundField DataField="PROJECT_STATUS" HeaderText="PROJECT_STATUS" SortExpression="PROJECT_STATUS" />
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
                <br />

            </div>
        </form>
    </div>
</body>
</html>
