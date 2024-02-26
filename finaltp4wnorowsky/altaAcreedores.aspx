<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaAcreedores.aspx.cs" Inherits="finaltp4wnorowsky.altaAcreedores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Apellido: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Nombre: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Alta" />
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:finalConnectionString %>" InsertCommand="insert into Acreedores (apellido, nombre) values (@apellido, @nombre)" SelectCommand="SELECT [apellido], [nombre] FROM [Acreedores]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="apellido" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox2" Name="nombre" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
