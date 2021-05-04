@AbapCatalog.sqlViewName: 'ZV_CLNT_LIB_481'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes libros'
@Metadata.allowExtensions: true
define view Z_B_CLNT_LIB_481 
    as select from ztb_clnt_lib_481 as ClntLib
    association [0..*] to Z_B_CLIENTES_481 as _Clientes on ClntLib.id_cliente = _Clientes.IdCliente 
{
    key id_cliente as IdCliente,
    key id_libro as IdLibro,
    _Clientes.Nombre,
    _Clientes.Apellidos,
    @UI.hidden: true
    _Clientes.Url,
    _Clientes.Email,
    _Clientes.TipoAcceso
}
