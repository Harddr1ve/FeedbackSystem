<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="FeedbackSystem.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <p>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Редактировать данные пользователя</p>
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
        &nbsp;&nbsp;<asp:Button ID="SaveBtn" runat="server" OnClick="SaveBtn_Click" Text="Сохранить" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="DeleteUserBtn" runat="server" OnClick="DeleteUserBtn_Click" Text="Удалить пользователя" />
    </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Список отзывов и предложений&nbsp;</p>
        <p>
            &nbsp; Краткое описание&nbsp;
            <asp:TextBox ID="ShortDescTxt" runat="server" Height="48px" Width="194px"></asp:TextBox>
        </p>
        <p>
            &nbsp; Полное описание&nbsp;&nbsp;
            <asp:TextBox ID="LongDescTxt" runat="server" Height="48px" Width="516px"></asp:TextBox>
        </p>
        <p>
            &nbsp; Жалоба&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="Negative" runat="server" Font-Names="Arial" ForeColor="White" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p>
            &nbsp;&nbsp;
            <asp:Button ID="AddFeedbackBtn" runat="server" OnClick="AddFeedbackBtn_Click" Text="Добавить отзыв" />
        </p>
        <p>
            &nbsp; &nbsp;</p>
        <p>
            <asp:GridView ID="FeedbackGrid" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns ="false">
                <Columns>
                    <asp:BoundField DataField="ShortDesc" HeaderText="Краткое Описание" />
                    <asp:BoundField DataField="LongDesc" HeaderText="Полное Описание" />
                    <asp:BoundField DataField="Date" HeaderText="Дата создания" />
                    <asp:BoundField DataField="Positive" HeaderText="Жалоба" />
                </Columns>
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
    </p>
        <p>
            &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
