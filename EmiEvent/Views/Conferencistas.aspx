<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagesMaster/Admin.Master" AutoEventWireup="true" CodeBehind="Conferencistas.aspx.cs" Inherits="EmiEvent.Views.Conferencistas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h2>Conferencistas</h2>
        <form runat="server">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:HiddenField ID="hiddenId" runat="server" />
                        <label for="exampleInput1">Nombre</label>
                        <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Ingrese un nombre"></asp:TextBox>
                        <small class="form-text text-muted">Asigne un nombre a su evento.</small>
                    </div>
                    </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInput2">Tipo</label>
                        <asp:TextBox ID="txtTipo" runat="server" class="form-control" placeholder="Ingrese el tipo de conferencista"></asp:TextBox>
                    </div>
                 </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="exampleFecha">Referencia</label>
                        <asp:TextBox ID="txtReferencia" runat="server" class="form-control" placeholder="Ingrese una Referencia"></asp:TextBox>
                    </div>
                </div>
                
                    <br />
                <div class="col-md-4">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="btnGuardar_Click" />&nbsp;
                <a href="./Conferencistas.aspx" class="btn btn-danger">Cancelar</a>
                    </div>

            </div>
            
            <br />
            <br />
            <div class="container">
                <h2>Listado de Conferencistas</h2>
                <p>La lista de eventos proximos a realizarse pueden ser actualizados o eliminados</p>
                
                <asp:GridView ID="CVConferencista" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="conId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="conId" HeaderText="conId" InsertVisible="False" ReadOnly="True" SortExpression="conId" />
                        <asp:BoundField DataField="conNombre" HeaderText="conNombre" SortExpression="conNombre" />
                        <asp:BoundField DataField="conTipo" HeaderText="conTipo" SortExpression="conTipo" />
                        <asp:BoundField DataField="conReferencia" HeaderText="conReferencia" SortExpression="conReferencia" />
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Opciones">
                            <ItemTemplate>
                                <asp:LinkButton ID="GVbtnEditar" runat="server" OnClick="GVbtnEditar_Click"  CssClass="btn btn-warning">Editar</asp:LinkButton>
                                <asp:LinkButton ID="GVbtnEliminar" runat="server" OnClick="GVbtnEliminar_Click"  CssClass="btn btn-danger">Eliminar</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmiEventConnectionString %>" SelectCommand="SELECT * FROM [TBL_CONFERENCISTAS]"></asp:SqlDataSource>

            </div>

        </form>
    </div>
</asp:Content>
