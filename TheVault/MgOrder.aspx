<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="MgOrder.aspx.vb" Inherits="MgOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style14 {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style8">
    <table id="table1" class="auto-style14">
        <tr>
            <td>
                <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="OrderId" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        OrderId:
                        <asp:Label ID="OrderIdLabel1" runat="server" Text='<%# Eval("OrderId") %>' />
                        <br />
                        OrderDate:
                        <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
                        <br />
                        DateDue:
                        <asp:TextBox ID="DateDueTextBox" runat="server" Text='<%# Bind("DateDue") %>' />
                        <br />
                        CustomerID:
                        <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        OrderId:
                        <asp:TextBox ID="OrderIdTextBox" runat="server" Text='<%# Bind("OrderId") %>' />
                        <br />
                        OrderDate:
                        <asp:TextBox ID="OrderDateTextBox" runat="server" Text='<%# Bind("OrderDate") %>' />
                        <br />
                        DateDue:
                        <asp:TextBox ID="DateDueTextBox" runat="server" Text='<%# Bind("DateDue") %>' />
                        <br />
                        CustomerID:
                        <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        OrderId:
                        <asp:Label ID="OrderIdLabel" runat="server" Text='<%# Eval("OrderId") %>' />
                        <br />
                        OrderDate:
                        <asp:Label ID="OrderDateLabel" runat="server" Text='<%# Bind("OrderDate") %>' />
                        <br />
                        DateDue:
                        <asp:Label ID="DateDueLabel" runat="server" Text='<%# Bind("DateDue") %>' />
                        <br />
                        CustomerID:
                        <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Bind("CustomerID") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Order] WHERE [OrderId] = @original_OrderId AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([DateDue] = @original_DateDue) OR ([DateDue] IS NULL AND @original_DateDue IS NULL)) AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))" InsertCommand="INSERT INTO [Order] ([OrderId], [OrderDate], [DateDue], [CustomerID]) VALUES (@OrderId, @OrderDate, @DateDue, @CustomerID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Order]" UpdateCommand="UPDATE [Order] SET [OrderDate] = @OrderDate, [DateDue] = @DateDue, [CustomerID] = @CustomerID WHERE [OrderId] = @original_OrderId AND (([OrderDate] = @original_OrderDate) OR ([OrderDate] IS NULL AND @original_OrderDate IS NULL)) AND (([DateDue] = @original_DateDue) OR ([DateDue] IS NULL AND @original_DateDue IS NULL)) AND (([CustomerID] = @original_CustomerID) OR ([CustomerID] IS NULL AND @original_CustomerID IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_OrderId" Type="Int32" />
                        <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                        <asp:Parameter Name="original_DateDue" Type="DateTime" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="OrderId" Type="Int32" />
                        <asp:Parameter Name="OrderDate" Type="DateTime" />
                        <asp:Parameter Name="DateDue" Type="DateTime" />
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="OrderDate" Type="DateTime" />
                        <asp:Parameter Name="DateDue" Type="DateTime" />
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="original_OrderId" Type="Int32" />
                        <asp:Parameter Name="original_OrderDate" Type="DateTime" />
                        <asp:Parameter Name="original_DateDue" Type="DateTime" />
                        <asp:Parameter Name="original_CustomerID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
</asp:Content>

