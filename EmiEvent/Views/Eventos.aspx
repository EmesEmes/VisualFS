<%@ Page Title="" Language="C#" MasterPageFile="~/Views/pagesMaster/Admin.Master" AutoEventWireup="true" CodeBehind="Eventos.aspx.cs" Inherits="EmiEvent.Views.Eventos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            max-width: 1140px;
            min-width: 992px;
            height: 672px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            margin-top: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
        <h2>Registro de Evento</h2>
        <form runat="server">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInput1">Nombre</label>
                        <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Ingrese un nombre"></asp:TextBox>
                        <small class="form-text text-muted">Asigne un nombre a su evento.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInput2">Descripcion</label>
                        <asp:TextBox ID="txtDescripcion" runat="server" class="form-control" placeholder="Ingrese una descripcion"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="exampleFecha">Fecha</label>
                        <asp:TextBox ID="txtFecha" TextMode="Date" runat="server" class="form-control"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <label for="exampleHora">Hora</label>
                        <asp:TextBox ID="txtHora" runat="server" class="form-control" placeholder="Ingrese la hora del evento"></asp:TextBox>
                        <small class="form-text text-muted">Formato: 15:00:00</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleremu">Remuneracion</label>
                        <asp:DropDownList ID="ddpRemu" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True" Value="">- Seleccione -</asp:ListItem>
                            <asp:ListItem Value="Gratuito"> Gratuito </asp:ListItem>
                            <asp:ListItem Value="Pagado"> Pagado </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="btnGuardar_Click" />
                    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" class="btn btn-danger" OnClick="btnEliminar_Click" />
                </div>
            </div>


            <br />
            <div class="container">
                <h2>Table Head Colors</h2>
                <p>The .thead-dark class adds a black background to table headers, and the .thead-light class adds a grey background to table headers:</p>


              
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="eveId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="eveId" HeaderText="eveId" InsertVisible="False" ReadOnly="True" SortExpression="eveId" />
                        <asp:BoundField DataField="eveNombre" HeaderText="eveNombre" SortExpression="eveNombre" />
                        <asp:BoundField DataField="eveDescripcion" HeaderText="eveDescripcion" SortExpression="eveDescripcion" />
                        <asp:BoundField DataField="eveFecha" HeaderText="eveFecha" SortExpression="eveFecha" />
                        <asp:BoundField DataField="eveHora" HeaderText="eveHora" SortExpression="eveHora" />
                        <asp:BoundField DataField="eveRemuneracion" HeaderText="eveRemuneracion" SortExpression="eveRemuneracion" />                        
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmiEventConnectionString %>" SelectCommand="SELECT * FROM [TBL_EVENTO]"></asp:SqlDataSource>


              
                <br />

            </div>

        </form>
    </div>
</asp:Content>
