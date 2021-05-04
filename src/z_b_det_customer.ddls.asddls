@AbapCatalog.sqlViewName: 'ZV_DET_CUSTJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Detail customer'
@Metadata.allowExtensions: true

define view Z_B_DET_CUSTOMER
  as select from zrent_customers
{

  key doc_id    as Id,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as Correo,
      cntr_type as TipoContrato

}
