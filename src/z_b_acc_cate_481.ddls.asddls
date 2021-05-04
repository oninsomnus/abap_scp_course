@AbapCatalog.sqlViewName: 'ZV_ACC_CATE_481'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Categoria de acceso'
define view Z_B_ACC_CATE_481 
    as select from ztb_acc_cate_481 as AccCatego
    association [0..1] to Z_B_CATEGO_481 as _Catego on AccCatego.bi_categ = _Catego.BiCateg 
{
    key bi_categ as BiCateg,
    key tipo_acceso as TipoAcceso,
    _Catego.Descripcion
}
