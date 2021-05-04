@AbapCatalog.sqlViewName: 'ZV_REM_DAYSJ'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Remaining Days'
define view Z_B_REM_DAYS2
  as select from zrent_cars
{

  key matricula            as Matricula,
      marca                as Marca,
      $session.system_date as FechaSistema,
      alq_hasta as FechaHasta,
      case
          when alq_hasta <> ''
          then dats_days_between(cast( $session.system_date as abap.dats ), alq_hasta)
          end                  as Dias 

}
