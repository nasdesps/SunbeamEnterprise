<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dependents.aspx.cs" Inherits="SunbeamEnterprise.dependents" %>

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
                    <li class="active"><a href="#">Dependent</a></li>
                    <li><a href="project-schedule.aspx">Project-Schedule</a></li>
                    <li><a href="emp-skills.aspx">Employee-Skill</a></li>
                    <li><a href="project-emp.aspx">Project-Employee</a></li>
                </ul>
            </div>
        </nav>
        <form id="form1" runat="server" style="margin-top: 40px;">
            <div>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" DeleteCommand="DELETE FROM &quot;DEPENDENT&quot; WHERE &quot;DEPENDENT_ID&quot; = :DEPENDENT_ID" InsertCommand="INSERT INTO &quot;DEPENDENT&quot; (&quot;DEPENDENT_ID&quot;, &quot;DEPENDENT_NAME&quot;, &quot;EMP_ID&quot;) VALUES (:DEPENDENT_ID, :DEPENDENT_NAME, :EMP_ID)" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT * FROM &quot;DEPENDENT&quot;" UpdateCommand="UPDATE &quot;DEPENDENT&quot; SET &quot;DEPENDENT_NAME&quot; = :DEPENDENT_NAME, &quot;EMP_ID&quot; = :EMP_ID WHERE &quot;DEPENDENT_ID&quot; = :DEPENDENT_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="DEPENDENT_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="DEPENDENT_ID" Type="String" />
                        <asp:Parameter Name="DEPENDENT_NAME" Type="String" />
                        <asp:Parameter Name="EMP_ID" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="DEPENDENT_NAME" Type="String" />
                        <asp:Parameter Name="EMP_ID" Type="String" />
                        <asp:Parameter Name="DEPENDENT_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="DEPENDENT_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">

                    <InsertItemTemplate>
                        DEPENDENT_ID:
                <asp:TextBox ID="DEPENDENT_IDTextBox" runat="server" Text='<%# Bind("DEPENDENT_ID") %>' CssClass="form-control" />
                        <br />
                        DEPENDENT_NAME:
                <asp:TextBox ID="DEPENDENT_NAMETextBox" runat="server" Text='<%# Bind("DEPENDENT_NAME") %>' CssClass="form-control" />
                        <br />
                        EMP_ID:
                <asp:TextBox ID="EMP_IDTextBox" runat="server" Text='<%# Bind("EMP_ID") %>' CssClass="form-control" />
                        <br />
                        <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>

                </asp:FormView>
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="DEPENDENT_ID" DataSourceID="SqlDataSource1" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="DEPENDENT_ID" HeaderText="DEPENDENT_ID" ReadOnly="True" SortExpression="DEPENDENT_ID" />
                        <asp:BoundField DataField="DEPENDENT_NAME" HeaderText="DEPENDENT_NAME" SortExpression="DEPENDENT_NAME" />
                        <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" />
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
