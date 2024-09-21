<%@ Page Title="Admin Section- Manage Users" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Blog.ManageUsers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <%-- Remove footer from control panel --%>
    <style type="text/css">
        .footer {
            display: none;
        }
    </style>

    <%-- Admin Page Wrapper--%>
    <div class="admin-wrapper control-panel ">


        <%-- Left sidebar --%>

        <div class="left-sidebar">

            <ul>
                <li><a href="ControlPanel">Manage Posts</a></li>
                <li><a href="ManageUsers">Manage Users</a></li>
                <li><a href="ManageTopics">Manage Topics</a></li>
            </ul>

        </div>
        <%-- // Left sidebar --%>


        <%-- Admin content --%>
        <div class="admin-content">

            <div class="button-group">
                <asp:Button runat="server" ID="AddUser" OnClick="AddUser_Click" CssClass="btn btn-primary" Text="Add User"/>
                <%--<a href="ControlPanel.aspx" class="btn btn-primary">Manage Post</a>--%>
            </div>

            <div class="content">

                <h3 class="page-title">Manage Users</h3>
                <p class="page-title">
                    <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:BlogConnectionString %>" SelectCommand="SELECT * FROM [tblUser]" DeleteCommand="DELETE FROM [tblUser] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblUser] ([Username], [Name], [Email], [Password], [OldPassword], [CreatedDate], [ModifiedDate], [IsActive]) VALUES (@Username, @Name, @Email, @Password, @OldPassword, @CreatedDate, @ModifiedDate, @IsActive)" UpdateCommand="UPDATE [tblUser] SET [Username] = @Username, [Name] = @Name, [Email] = @Email, [Password] = @Password, [OldPassword] = @OldPassword, [CreatedDate] = @CreatedDate, [ModifiedDate] = @ModifiedDate, [IsActive] = @IsActive WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Username" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="OldPassword" Type="String" />
                            <asp:Parameter DbType="Date" Name="CreatedDate" />
                            <asp:Parameter DbType="Date" Name="ModifiedDate" />
                            <asp:Parameter Name="IsActive" Type="Boolean" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Username" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="OldPassword" Type="String" />
                            <asp:Parameter DbType="Date" Name="CreatedDate" />
                            <asp:Parameter DbType="Date" Name="ModifiedDate" />
                            <asp:Parameter Name="IsActive" Type="Boolean" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceUsers" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                            <asp:BoundField DataField="OldPassword" HeaderText="Old Password" SortExpression="OldPassword" ReadOnly="true" />
                            <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate" ReadOnly="true"/>
                            <asp:BoundField DataField="ModifiedDate" HeaderText="Modified Date" SortExpression="ModifiedDate" ReadOnly="true" />
                            <asp:CheckBoxField DataField="IsActive" HeaderText="Is Active" SortExpression="IsActive" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    
                </p>

                



            </div>

        </div>
        <%-- //Admin content --%>
    </div>



    <%-- // Admin Page Wrapper --%>
</asp:Content>
