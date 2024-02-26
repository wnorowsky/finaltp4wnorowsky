<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="formularioGRID.aspx.cs" Inherits="finaltp4wnorowsky.formularioGRID" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:finalConnectionString %>" DeleteCommand="DELETE FROM [Acreedores] WHERE [id] = @id" InsertCommand="INSERT INTO [Acreedores] ([apellido], [nombre]) VALUES (@apellido, @nombre)" SelectCommand="SELECT d.idAcreedor, a.apellido, a.nombre, SUM(d.monto)
FROM Acreedores a, Deudas d
WHERE a.idAcreedor = d.id" UpdateCommand="UPDATE [Acreedores] SET [apellido] = @apellido, [nombre] = @nombre WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="apellido" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="apellido" Type="String" />
            <asp:Parameter Name="nombre" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cargar archivo" />
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>
