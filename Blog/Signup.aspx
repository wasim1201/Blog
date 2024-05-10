<%@ Page Title="Register Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Blog.Signup" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="auth-content">



        <h2 class="form-title">Register</h2>

        <div>
            <label>Username</label><br>

            <asp:TextBox CssClass="text-input" runat="server" placeholder="Username" ID="txtUsername" ToolTip="Username" ForeColor="Black" />

            <asp:RequiredFieldValidator ID="usernameRequired" runat="server" Style="color: red;"
                ErrorMessage="Please enter the username"
                ControlToValidate="txtUsername"></asp:RequiredFieldValidator>

            <%--<input type="text" name="username" class="text-input">--%>
        </div>

        <div>
            <label>Full Name</label><br>

            <asp:TextBox CssClass="text-input" runat="server" placeholder="Enter your full name" ID="txtName" ToolTip="Full Name" ForeColor="Black" />
            <asp:RequiredFieldValidator ID="fullNameRequired" runat="server" Style="color: red;"
                ErrorMessage="Please enter the full name"
                ControlToValidate="txtName"></asp:RequiredFieldValidator>
            <%--<input type="text" name="username" class="text-input">--%>
        </div>


        <div>
            <label>Email</label><br>
            <asp:TextBox CssClass="text-input" runat="server" placeholder="Enter your email" ID="txtEmail" ToolTip="Email" ForeColor="Black" />
            <%--<input type="text" name="email" class="text-input">--%>
            <asp:RequiredFieldValidator ID="emailRequired" runat="server" Style="color: red;"
                ErrorMessage="Please enter a valid email"
                ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server"
                style="color:red"
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail"
                ErrorMessage="Please enter a valid email"></asp:RegularExpressionValidator>
        </div>

        <div>
            <label>Password</label><br>
            <asp:TextBox CssClass="text-input" runat="server" placeholder="Password" ID="txtPassword" ToolTip="Password" TextMode="Password" ForeColor="Black" />
            <asp:RequiredFieldValidator ID="choosePassword" runat="server" Style="color: red;"
                ErrorMessage="Please choose a password"
                ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
            <%--<input type="text" name="password" class="text-input">--%>
        </div>

        <div>
            <label>Confirm Password</label><br>
            <asp:TextBox CssClass="text-input" runat="server" placeholder="Retype your password" ID="txtConfirmPassword" ToolTip="Retype your password" TextMode="Password" ForeColor="Black" />
            <%--<input type="text" name="password-confirmation" class="text-input">--%>
            <asp:RequiredFieldValidator ID="confirmPassword" runat="server" Style="color: red;"
                ErrorMessage="Please retype the password"
                ControlToValidate="txtConfirmPassword"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="matchPassword" runat="server" Style="color:red"
                ErrorMessage="Password and confirm password must be same"
                ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
        </div>
        <br>

        <div>
            <asp:Label runat="server" ID="txtLabel" Text="" />
        </div>


        <div>

            <asp:Button runat="server" ID="btnSubmit" BorderStyle="None" ToolTip="Submit" Text="Submit" OnClick="btnSubmit_Click" BackColor="#666666" ForeColor="White" CssClass="
               btn btn-primary" />
            <%--<button type="submit" name="register-btn" class="btn btn-big btn-primary">Register</button>--%>
        </div>
        <br>

        <asp:Label ID="Label1" runat="server" />
        <br>

        <p>Or <a href="Login.aspx">Sign In</a></p>

    </div>


</asp:Content>
