@AbapCatalog.sqlViewName: 'ZV_VENDIDOS_481'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Libros Vendidos'
define view Z_B_VENDIDOS 
    as select from ztb_clnt_lib_481
{
    key id_libro,
    
    count(distinct id_cliente) as Ventas
}
group by id_libro
