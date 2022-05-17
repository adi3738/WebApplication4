<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebApplication4.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    Welcome to my Aplication
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink> <br />


    <asp:PlaceHolder ID="loginph" runat="server">
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink><br />
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink><br />
        </asp:PlaceHolder>

     

     <asp:PlaceHolder ID="logoutph" runat="server">
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
         </asp:PlaceHolder>

    <h3>User Details</h3> <br />
    <p>First Name : <%= HttpContext.Current.Session["f_name"] %></p>
    <p>Last Name : <%= HttpContext.Current.Session["l_name"] %></p>


</asp:Content>
