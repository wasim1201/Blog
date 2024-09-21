<%@ Page Title="Post Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageTopics.aspx.cs" Inherits="Blog.ManageTopics" %>

<asp:Content ID="DefaultContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Site.css" />


    <div class="page-wrapper-topics">

        
    <%-- Admin Page Wrapper--%>
    <div class="admin-wrapper control-panel ">


        <%-- Left sidebar --%>

        <div class="left-sidebar">

            <ul>
                <li><a href="ControlPanel">Manage Posts</a></li>
                <li><a href="ManageUsers">Manage Users</a></li>
                <li><a href="ManageTopics.aspx">Manage Topics</a></li>
            </ul>

        </div>
        <%-- // Left sidebar --%>


        <%-- Admin content --%>
        <div class="admin-content">

            <div class="button-group">
                <a href="AddTopics.aspx" class="btn btn-primary">Add Topic</a>
                <%--<a href="Topics.aspx" class="btn btn-primary">Manage Topics</a>--%>
            </div>

            <div class="content">

                <h3 class="page-title">Manage Topics</h3>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="CreatedDate" HeaderText="Created Date" SortExpression="CreatedDate" ReadOnly="true"/>
                        <asp:BoundField DataField="ModifiedDate" HeaderText="Modified Date" SortExpression="ModifiedDate" ReadOnly="true"/>
                        <asp:BoundField DataField="Id" HeaderText="Published" ReadOnly="True" SortExpression="Id" Visible="false"/>
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
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BlogConnectionString %>" DeleteCommand="DELETE FROM [tblTopics] WHERE [Id] = @Id" InsertCommand="INSERT INTO [tblTopics] ([Name], [Description], [CreatedDate], [ModifiedDate]) VALUES (@Name, @Description, @CreatedDate, @ModifiedDate)" SelectCommand="SELECT * FROM [tblTopics]" UpdateCommand="UPDATE [tblTopics] SET [Name] = @Name, [Description] = @Description, [CreatedDate] = @CreatedDate, [ModifiedDate] = @ModifiedDate WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DbType="Date" Name="CreatedDate" />
                        <asp:Parameter DbType="Date" Name="ModifiedDate" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DbType="Date" Name="CreatedDate" />
                        <asp:Parameter DbType="Date" Name="ModifiedDate" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>



                    
















                <table>

                   <%-- <thead>
                        <th>S No</th>
                        <th>Title</th>
                        <th>Action</th>
                    </thead>--%>

                    <tbody>

                         <asp:DataList runat="server" id="topicDataList">
                            <ItemTemplate>
                                <tr>
                                    <td><asp:Label ID="lblRowNumber" Text='<%# Container.ItemIndex + 1 %>' runat="server" /></td>
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


    </div>

    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />

</asp:Content>
