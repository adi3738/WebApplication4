<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication4.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label> <br/>
    <asp:TextBox ID="fname" runat="server" ></asp:TextBox><br/>

    <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label> <br/>
    <asp:TextBox ID="lname" runat="server"></asp:TextBox><br/>

    <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label> <br/>
    <asp:TextBox ID="email" runat="server"></asp:TextBox><br/>

    <asp:Label ID="Label4" runat="server" Text="Password" TextMode="password"></asp:Label> <br/>
    <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="enter your password"></asp:TextBox>
    <br/> 
    <br/>

    
    <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click1" />


    



</asp:Content>
