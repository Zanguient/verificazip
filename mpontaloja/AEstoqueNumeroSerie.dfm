�
 TFESTOQUENUMEROSERIE 0   TPF0TFEstoqueNumeroSerieFEstoqueNumeroSerieLeft� ToplCaptionEstoque por Numero SerieClientHeight�ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoOwnerFormCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top Width�Height)AlignalTop	AlignmenttaLeftJustifyCaption)      Consulta Estoque por Número Série   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left ToptWidth�Height:AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBFecharLeft/TopWidthdHeightHelpContextCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrder OnClickBFecharClick   TGridIndiceGProdutoLeft Top)Width�HeightKHelpContext%AlignalClientColorclInfoBk
DataSourceDataEstoqueNumeroSerieDrawingStyle
gdsClassic
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExitdgMultiSelect 
ParentFontParentShowHintShowHint	TabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAColunasOrdem AListaIndice.Strings123456913 AListaCAmpos.Strings	I_Lan_Orc	C_Nro_Not	D_Dat_Orc	C_Nom_CliTIP.C_NOM_TIP	C_Nom_Pag	C_Nom_Ven	C_ORD_COM AindiceInicialALinhaSQLOrderBy ColumnsExpanded	FieldNameDESNUMEROSERIETitle.CaptionNumero SerieWidth	Visible	 Expanded	FieldName
QTDPRODUTOTitle.Caption
QuantidadeWidthQVisible	 Expanded	FieldNameCOD_CORTitle.CaptionCodigoVisible	 Expanded	FieldNameNOM_CORTitle.CaptionCorWidth Visible	 Expanded	FieldName
NOMTAMANHOTitle.CaptionTamanhoWidth Visible	    TSQLEstoqueNumeroSerie
Aggregates PacketRecordsParams ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQL.StringscSELECT EST.SEQPRODUTO, EST.DESNUMEROSERIE, EST.QTDPRODUTO, COR.COD_COR, COR.NOM_COR, TAM.NOMTAMANHO1FROM ESTOQUENUMEROSERIE EST, COR COR, TAMANHO TAM!WHERE EST.CODCOR = COR.COD_COR(+)&AND EST.CODTAMANHO = TAM.CODTAMANHO(+)AND EST.SEQPRODUTO = 14690 ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.StringscSELECT EST.SEQPRODUTO, EST.DESNUMEROSERIE, EST.QTDPRODUTO, COR.COD_COR, COR.NOM_COR, TAM.NOMTAMANHO1FROM ESTOQUENUMEROSERIE EST, COR COR, TAMANHO TAM!WHERE EST.CODCOR = COR.COD_COR(+)&AND EST.CODTAMANHO = TAM.CODTAMANHO(+)AND EST.SEQPRODUTO = 14690 Left�Toph TFMTBCDFieldEstoqueNumeroSerieSEQPRODUTO	FieldName
SEQPRODUTORequired		Precision
Size   TWideStringField EstoqueNumeroSerieDESNUMEROSERIE	FieldNameDESNUMEROSERIESize2  TFMTBCDFieldEstoqueNumeroSerieQTDPRODUTO	FieldName
QTDPRODUTO	PrecisionSize  TWideStringFieldEstoqueNumeroSerieNOM_COR	FieldNameNOM_CORSize�   TWideStringFieldEstoqueNumeroSerieNOMTAMANHO	FieldName
NOMTAMANHOSize2  TFMTBCDFieldEstoqueNumeroSerieCOD_COR	FieldNameCOD_COR	Precision
Size    TDataSourceDataEstoqueNumeroSerieAutoEditDataSetEstoqueNumeroSerieLeft�Top0   