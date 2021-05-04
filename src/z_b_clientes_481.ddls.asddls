@AbapCatalog.sqlViewName: 'ZV_CLIENTES_481'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Clientes'
define view Z_B_CLIENTES_481 
    as select from ztb_clientes_481 
{
    key id_cliente as IdCliente,
    key tipo_acceso as TipoAcceso,
    nombre as Nombre,
    apellidos as Apellidos,
    email as Email,
    url as Url
}
