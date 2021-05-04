@AbapCatalog.sqlViewName: 'ZV_CATEGO_481'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Categorias'
define view Z_B_CATEGO_481 
    as select from ztb_catego_481 
{
    key bi_categ as BiCateg,
    descripcion as Descripcion
}
