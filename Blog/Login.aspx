<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Blog.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">



    <div class="auth-content">



        <h2 class="form-title">Login</h2>

        <div>
            <label id="lblUsername">Username</label><br>
            <asp:TextBox CssClass="text-input" ID="txtUsername" placeholder="Enter username" ToolTip="Enter username" runat="server"></asp:TextBox>
            <%--<input type="text" name="username" class="text-input">--%>

            <asp:RequiredFieldValidator ID="usernameRequired" runat="server" Style="color: red;"
                ErrorMessage="Please enter the username"
                ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
        </div>


        <div>
            <label>Password</label><br>
            <asp:TextBox TextMode="Password" CssClass="text-input" ID="txtPassword" placeholder="Enter password" ToolTip="Enter password" runat="server"></asp:TextBox>
            <%--<input type="text" name="password" class="text-input">--%>

            <asp:RequiredFieldValidator ID="passwordRequired" runat="server" Style="color: red;"
                ErrorMessage="Please enter the password"
                ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

        </div>
        <br>

        <div>
            <asp:Button Text="Login" runat="server" ID="btnLogin" CssClass="btn btn-default" BackColor="#666666" ForeColor="White" OnClick="btnLogin_Click" />
            <%--<button type="submit" name="login-btn" class="btn btn-big btn-primary">Log In</button>--%>
        </div>
        <br>

        <asp:Label ID="txtLabel" runat="server" />
        <br>
        <br />
        <p>Or <a href="Signup.aspx">Sign Up</a></p>



    </div>

</asp:Content>
