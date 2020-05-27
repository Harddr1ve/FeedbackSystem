<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="FeedbackSystem.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Добавить нового пользователя</p>
<p>
    &nbsp; Фамилия&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="LastNameTxt" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp; Имя&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="NameTxt" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp; Отчество&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="SurenameTxt" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp; Номер телефона&nbsp;&nbsp;
    <asp:TextBox ID="PhoneTxt" runat="server"></asp:TextBox>
</p>
<p>
    &nbsp;&nbsp;<asp:Button ID="AddBtn" runat="server" OnClick="AddBtn_Click" Text="Добавить" />
</p>
<p>
    &nbsp;</p>
</asp:Content>
