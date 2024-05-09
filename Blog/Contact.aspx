<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Blog.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="page-wrapper-contact">
        <div id="contact-id">

            <h2><%: Title %>.</h2>
            <h3>Your contact page.</h3>
            <address>
                Square Technologies <br />
                3B Okhla Zakir Nagar, WA 1234567890<br />
                <abbr title="Phone">P:</abbr>
                125.555.0100
            </address>

            <address>
                <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
                <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
            </address>

        </div>
    </div>
</asp:Content>
