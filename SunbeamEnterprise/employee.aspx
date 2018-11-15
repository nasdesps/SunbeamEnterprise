<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="SunbeamEnterprise.employee" %>

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
                    
                    <li class="active"><a href="#">Employee</a></li>
                    <li><a href="Project.aspx">Project</a></li>
                    <li><a href="Skill.aspx">Skill</a></li>
                    <li><a href="division.aspx">Divison</a></li>
                    <li><a href="dependents.aspx">Dependent</a></li>
                    <li><a href="project-schedule.aspx">Project-Schedule</a></li>
                    <li><a href="emp-skills.aspx">Employee-Skill</a></li>
                    <li><a href="project-emp.aspx">Project-Employee</a></li>
                </ul>
            </div>
    </nav>
    <form id="form1" runat="server" style="margin-top: 40px;">
        <div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" DeleteCommand="DELETE FROM &quot;EMPLOYEE&quot; WHERE &quot;EMP_ID&quot; = :EMP_ID" InsertCommand="INSERT INTO &quot;EMPLOYEE&quot; (&quot;EMP_ID&quot;, &quot;EMP_NAME&quot;, &quot;EMP_ADDRESS&quot;, &quot;EMP_CONTACT&quot;, &quot;EMP_EMAIL&quot;, &quot;EMAIL_DOB&quot;, &quot;DIVISION_ID&quot;) VALUES (:EMP_ID, :EMP_NAME, :EMP_ADDRESS, :EMP_CONTACT, :EMP_EMAIL, :EMAIL_DOB, :DIVISION_ID)" ProviderName="<%$ ConnectionStrings:Database.ProviderName %>" SelectCommand="SELECT * FROM &quot;EMPLOYEE&quot;" UpdateCommand="UPDATE &quot;EMPLOYEE&quot; SET &quot;EMP_NAME&quot; = :EMP_NAME, &quot;EMP_ADDRESS&quot; = :EMP_ADDRESS, &quot;EMP_CONTACT&quot; = :EMP_CONTACT, &quot;EMP_EMAIL&quot; = :EMP_EMAIL, &quot;EMAIL_DOB&quot; = :EMAIL_DOB, &quot;DIVISION_ID&quot; = :DIVISION_ID WHERE &quot;EMP_ID&quot; = :EMP_ID">
                <DeleteParameters>
                    <asp:Parameter Name="EMP_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EMP_ID" Type="String" />
                    <asp:Parameter Name="EMP_NAME" Type="String" />
                    <asp:Parameter Name="EMP_ADDRESS" Type="String" />
                    <asp:Parameter Name="EMP_CONTACT" Type="Decimal" />
                    <asp:Parameter Name="EMP_EMAIL" Type="String" />
                    <asp:Parameter Name="EMAIL_DOB" Type="String" />
                    <asp:Parameter Name="DIVISION_ID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EMP_NAME" Type="String" />
                    <asp:Parameter Name="EMP_ADDRESS" Type="String" />
                    <asp:Parameter Name="EMP_CONTACT" Type="Decimal" />
                    <asp:Parameter Name="EMP_EMAIL" Type="String" />
                    <asp:Parameter Name="EMAIL_DOB" Type="String" />
                    <asp:Parameter Name="DIVISION_ID" Type="String" />
                    <asp:Parameter Name="EMP_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <InsertItemTemplate>
                    EMP_ID:
                <asp:TextBox ID="EMP_IDTextBox" runat="server" Text='<%# Bind("EMP_ID") %>' CssClass="form-control" />
                    <br />
                    EMP_NAME:
                <asp:TextBox ID="EMP_NAMETextBox" runat="server" Text='<%# Bind("EMP_NAME") %>' CssClass="form-control" />
                    <br />
                    EMP_ADDRESS:
                <asp:TextBox ID="EMP_ADDRESSTextBox" runat="server" Text='<%# Bind("EMP_ADDRESS") %>' CssClass="form-control" />
                    <br />
                    EMP_CONTACT:
                <asp:TextBox ID="EMP_CONTACTTextBox" runat="server" Text='<%# Bind("EMP_CONTACT") %>' CssClass="form-control" />
                    <br />
                    EMP_EMAIL:
                <asp:TextBox ID="EMP_EMAILTextBox" runat="server" Text='<%# Bind("EMP_EMAIL") %>' CssClass="form-control" />
                    <br />
                    EMAIL_DOB:
                <asp:TextBox ID="EMAIL_DOBTextBox" runat="server" Text='<%# Bind("EMAIL_DOB") %>' CssClass="form-control" />
                    <br />
                    DIVISION_ID:
                <asp:TextBox ID="DIVISION_IDTextBox" runat="server" Text='<%# Bind("DIVISION_ID") %>' CssClass="form-control" />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>

            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="EMP_ID" DataSourceID="SqlDataSource1" CssClass="table" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" ReadOnly="True" SortExpression="EMP_ID" />
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

        </div>
    </form>
    </div>
</body>
</html>
