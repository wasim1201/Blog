<%@ Page Title="Admin Section- Manage Post" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="Blog.ControlPanel" %>

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
                <a href="CreatePost.aspx" class="btn btn-primary">Add Post</a>
                <%--<a href="ControlPanel.aspx" class="btn btn-primary">Manage Post</a>--%>
            </div>

            <div class="content">

                <h3 class="page-title">Manage Posts</h3>
                <p class="page-title">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BlogConnectionString %>" DeleteCommand="DELETE FROM [tblPost] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblPost] ([UserId], [Title], [Topic], [Published]) VALUES (@UserId, @Title, @Topic, @Published)" SelectCommand="SELECT [Id], [UserId], [Title], [Topic], [Published] FROM [tblPost]" UpdateCommand="UPDATE [tblPost] SET [UserId] = @UserId, [Title] = @Title, [Topic] = @Topic, [Published] = @Published WHERE [Id] = @Id">
                        <DeleteParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="UserId" Type="String" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Topic" Type="Int32" />
                            <asp:Parameter Name="Published" Type="Byte" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="UserId" Type="String" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="Topic" Type="Int32" />
                            <asp:Parameter Name="Published" Type="Byte" />
                            <asp:Parameter Name="Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:BoundField DataField="Topic" HeaderText="Topic" SortExpression="Topic" />
                            <asp:BoundField DataField="Published" HeaderText="Published" SortExpression="Published" />
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




                <table>

                    <%--<thead>
                        <th>S No</th>
                        <th>Title</th>
                        <th>Author</th>
                        <th colspan="3">Action</th>
                    </thead>--%>

                    <tbody>

                        <asp:DataList runat="server" ID="ManagePostDataList">
                            <ItemTemplate>
                                <tr>
                                    <td><asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
                                    <td><%# Eval("Title") %></td>
                                    <td><%# Eval("Name") %></td>
                                    <td class="edit"><a href="#">Edit</a></td>
                                    <td class="delete"><a href="#">Delete</a></td>
                                    <td class="publish"><a href="#">Publish</a></td>
                                </tr>
                            </ItemTemplate>

                        </asp:DataList>



                    </tbody>


                </table>
            </div>

        </div>
        <%-- //Admin content --%>
    </div>



    <%-- // Admin Page Wrapper --%>
</asp:Content>
