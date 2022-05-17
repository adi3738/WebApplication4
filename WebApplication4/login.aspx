<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication4.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <asp:Label ID="lblerror" runat="server" Text=""></asp:Label> <br/>
       <asp:Label ID="Label1" runat="server" Text="email"></asp:Label> <br/>
      
    <asp:TextBox ID="email" runat="server" ></asp:TextBox><br/>

    <asp:Label ID="Label2" runat="server" Text="password"  ></asp:Label> <br/>
    <asp:TextBox ID="password" runat="server" TextMode="password"></asp:TextBox><br/>


    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /> <br />

</asp:Content>
