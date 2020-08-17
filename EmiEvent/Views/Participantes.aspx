<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagesMaster/Admin.Master" AutoEventWireup="true" CodeBehind="Participantes.aspx.cs" Inherits="EmiEvent.Views.Participantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Lista de Participantes</h2>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="parId" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="parId" HeaderText="parId" InsertVisible="False" ReadOnly="True" SortExpression="parId" />
                <asp:BoundField DataField="parNombre" HeaderText="Nombre" SortExpression="parNombre" />
                <asp:BoundField DataField="parApellido" HeaderText="Apellido" SortExpression="parApellido" />
                <asp:BoundField DataField="parCedula" HeaderText="Cedula" SortExpression="parCedula" />
                <asp:BoundField DataField="parDireccion" HeaderText="Direccion" SortExpression="parDireccion" />
                <asp:BoundField DataField="parTelefono" HeaderText="Telefono" SortExpression="parTelefono" />
                <asp:BoundField DataField="parCorreo" HeaderText="Correo" SortExpression="parCorreo" />
                <asp:BoundField DataField="eveId" HeaderText="eveId" SortExpression="eveId" />
                <asp:BoundField DataField="eveNombre" HeaderText="Evento" SortExpression="eveNombre" />
                <asp:BoundField DataField="eveDescripcion" HeaderText="Descripcion Evento" SortExpression="eveDescripcion" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmiEventConnectionString %>" SelectCommand="SELECT p.parId, p.parNombre, p.parApellido, p.parCedula, p.parDireccion, p.parTelefono, p.parCorreo, p.eveId, e.eveNombre, e.eveDescripcion FROM TBL_PARTICIPANTES AS p INNER JOIN TBL_EVENTO AS e ON p.eveId = e.eveId"></asp:SqlDataSource>

    </form>
    </div>
</asp:Content>
