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
                        <asp:HiddenField ID="hiddenId" runat="server" />
                        <label for="exampleInput1">Nombre</label>
                        <asp:TextBox ID="txtNombre" runat="server" class="form-control" placeholder="Ingrese un nombre"></asp:TextBox>
                        <small class="form-text text-muted">Asigne un nombre a su evento.</small>
                    </div>
                    </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleInput2">Descripcion</label>
                        <asp:TextBox ID="txtDescripcion" runat="server" class="form-control" placeholder="Ingrese una descripcion"></asp:TextBox>
                    </div>
                 </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="exampleFecha">Fecha</label>
                        <asp:TextBox ID="txtFecha" TextMode="Date" runat="server" class="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="form-group">
                        <label for="exampleHora">Hora</label>
                        <asp:TextBox ID="txtHora" runat="server" class="form-control" placeholder="Ingrese la hora"></asp:TextBox>
                        <small class="form-text text-muted">Formato: 15:00:00</small>
                    </div>
                 </div>
                <div class="col-md-3">
                    <div class="form-group">
                        <label for="exampleremu">Remuneracion</label>
                        <asp:DropDownList ID="ddpRemu" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True" Value="">- Seleccione -</asp:ListItem>
                            <asp:ListItem Value="Gratuito"> Gratuito </asp:ListItem>
                            <asp:ListItem Value="Pagado"> Pagado </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                  </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleremu">Conferencista</label>
                        <asp:DropDownList ID="ddpCapacitador" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="conNombre" DataValueField="conId" AppendDataBoundItems="True">
                            <asp:ListItem Selected="True" Value="">- Seleccione -</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EmiEventConnectionString %>" SelectCommand="SELECT [conId], [conNombre] FROM [TBL_CONFERENCISTAS]"></asp:SqlDataSource>
                    </div>
                 </div>
                    <br />
                <div class="col-md-4">
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="btnGuardar_Click" />&nbsp;
                <a href="./Eventos.aspx" class="btn btn-danger">Cancelar</a>
                    </div>

            </div>
            
            <br />
            <br />
            <div class="container">
                <h2>Listado de Eventos</h2>
                <p>La lista de eventos proximos a realizarse pueden ser actualizados o eliminados</p>
                
                <asp:GridView ID="GVEventos" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataKeyNames="eveId" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="eveId" HeaderText="IdEve" InsertVisible="False" ReadOnly="True" SortExpression="eveId" />
                        <asp:BoundField DataField="eveNombre" HeaderText="Nombre" SortExpression="eveNombre" />
                        <asp:BoundField DataField="eveDescripcion" HeaderText="Descripcion" SortExpression="eveDescripcion" />
                        <asp:BoundField DataField="eveFecha" HeaderText="Fecha" SortExpression="eveFecha" />
                        <asp:BoundField DataField="eveHora" HeaderText="Hora" SortExpression="eveHora" />
                        <asp:BoundField DataField="eveRemuneracion" HeaderText="Remuneracion" SortExpression="eveRemuneracion" />                        
                        <asp:BoundField DataField="conId" HeaderText="idCon" SortExpression="conId" />
                        <asp:BoundField DataField="conNombre" HeaderText="Conferencista" SortExpression="conNombre" />
                    </Columns>
                    <Columns>
                        <asp:TemplateField HeaderText="Opciones">
                            <ItemTemplate>
                                <asp:LinkButton ID="GVbtnEditar" runat="server" OnClick="GVbtnEditar" CssClass="btn btn-warning" >Editar</asp:LinkButton>
                                <asp:LinkButton ID="GVbtnEliminar" runat="server" CssClass="btn btn-danger" OnClick="GVbtnEliminar" >Eliminar</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmiEventConnectionString %>" SelectCommand="SELECT e.eveId, e.eveNombre, e.eveDescripcion, e.eveFecha, e.eveHora, e.eveRemuneracion, e.conId, c.conNombre FROM TBL_EVENTO AS e INNER JOIN TBL_CONFERENCISTAS AS c ON e.conId = c.conId"></asp:SqlDataSource>


              
                <br />

            </div>

        </form>
    </div>
</asp:Content>
