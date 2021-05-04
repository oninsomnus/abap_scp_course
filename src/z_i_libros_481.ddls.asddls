@AbapCatalog.sqlViewName: 'ZV_LIBROS_481'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Libros'
@Metadata.allowExtensions: true
define view Z_I_LIBROS_481 
    as select from ztb_libros_481 as Libros
    left outer join Z_B_VENDIDOS as _Ventas on Libros.id_libro = _Ventas.id_libro      
    association [0..*] to Z_B_ACC_CATE_481 as _AccCatego on Libros.bi_categ = _AccCatego.BiCateg
    association [0..*] to Z_B_CLNT_LIB_481 as _ClntLib on Libros.id_libro = _ClntLib.IdLibro
    {
    
    key Libros.id_libro as IdLibro,
    key bi_categ as BiCateg,
    titulo as Titulo,
    autor as Autor,
    editorial as Editorial,
    idioma as Idioma,
    paginas as Paginas,
    @Semantics.amount.currencyCode: 'moneda'
    precio as Precio,
    @Semantics.currencyCode
    moneda as Moneda,
    formato as Formato,
    url as Url,
    
    case
        when _Ventas.Ventas < 1 then 0
        when _Ventas.Ventas = 1 then 1
        when _Ventas.Ventas = 2 then 2
        when _Ventas.Ventas > 2 then 3
        else 0
    end as Ventas,
    case _Ventas.Ventas
        when 0 then ''
        else ''
    end as Text,
    
    _AccCatego.Descripcion,
    _ClntLib,
    _AccCatego
}
