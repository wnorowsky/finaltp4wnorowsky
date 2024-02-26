<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="formuarioCRUD.aspx.cs" Inherits="finaltp4wnorowsky.formuarioCRUD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Seleccionar acreedor: "></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceAcreedores" DataTextField="apellido" DataValueField="id">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Monto: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Debe introducir un monto</asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Fecha: "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" ForeColor="Red" Type="Date">Debe introducir un formato de fecha válido</asp:RangeValidator>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
        </Columns>
        <SelectedRowStyle BackColor="Yellow" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:finalConnectionString %>" DeleteCommand="DELETE FROM [Acreedores] WHERE [id] = @id" InsertCommand="INSERT INTO [Acreedores] ([apellido], [nombre]) VALUES (@apellido, @nombre)" ProviderName="<%$ ConnectionStrings:finalConnectionString.ProviderName %>" SelectCommand="SELECT [id], [apellido], [nombre] FROM [Acreedores]" UpdateCommand="UPDATE [Acreedores] SET [apellido] = @apellido, [nombre] = @nombre WHERE [id] = @id">
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
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
    <br />
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Baja" />
    <br />
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Modificación" />
    <br />
    <asp:Label ID="Label4" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSourceAcreedores" runat="server" ConnectionString="<%$ ConnectionStrings:finalConnectionString %>" DeleteCommand="delete from Deudas where idAcreedor=@idAcreedor AND monto=@monto AND fecha=@fecha;" InsertCommand="insert into Deudas (fecha, idAcreedor, monto) values (@fecha, @idAcreedor, @monto);" SelectCommand="SELECT * FROM [Acreedores]">
        <DeleteParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="monto" PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="fecha" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList1" Name="idAcreedor" PropertyName="SelectedValue" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="fecha" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownList1" Name="idAcreedor" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="TextBox1" Name="monto" PropertyName="Text" />
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="id" PropertyName="SelectedValue" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
