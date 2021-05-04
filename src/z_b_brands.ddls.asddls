@AbapCatalog.sqlViewName: 'ZV_BRANDSJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Marcas'
define view Z_B_BRANDS
  as select from zrent_brandsj
{
  key marca as Marca,
  @UI.hidden: true
      url   as Imagen
}
