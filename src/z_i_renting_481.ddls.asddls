@AbapCatalog.sqlViewName: 'ZV_RENT_481'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view Z_I_RENTING_481
  as select from z_b_cars as Cars
  association [1]    to Z_B_REM_DAYS2    as _RemDays      on Cars.Matricula = _RemDays.Matricula
  association [0..*] to Z_B_BRANDS       as _Brands       on Cars.Marca = _Brands.Marca
  association [0..*] to Z_B_DET_CUSTOMER as _DetCustomers on Cars.Matricula = _DetCustomers.Matricula
{

      //z_b_cars
  key Matricula,
      Marca,
      Modelo,
      Color,
      Motor,
      Potencia,
      Unidad,
      Combustible,
      Consumo,
      FechaFabricacion,
      Puertas,
      Precio,
      Moneda,
      Alquilado,
      Desde,
      Hasta,
      case
          when _RemDays.Dias <= 0 then 0
          when _RemDays.Dias between 1 and 30 then 3
          when _RemDays.Dias between 31 and 100 then 2
          when _RemDays.Dias > 100 then 1
          else 0
          end as TiempoRenta,
          
      
      '' as Estado,
      _Brands.Imagen,
      _DetCustomers

}
