�
 TFMOSTRALOCACOESALER 0�  TPF0TFMostraLocacoesALerFMostraLocacoesALerLeftfTop� Caption0   Contratos de Locação com Pendência de LeituraClientHeightfClientWidthCColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoOwnerFormCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top WidthCHeight)AlignalTop	AlignmenttaLeftJustifyCaption)      Contratos com Pendência de Leitura   Font.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top=WidthCHeight)AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBFecharLeft�TopWidthdHeightCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrder OnClickBFecharClick   TGridIndiceGridIndice1Left Top)WidthCHeightAlignalClientColorclInfoBk
DataSourceDataContratos
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style OptionsdgTitlesdgIndicatordgColumnResize
dgColLines
dgRowLinesdgTabsdgRowSelectdgAlwaysShowSelectiondgConfirmDeletedgCancelOnExit 
ParentFontTabOrderTitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style ACorFocoFPrincipal.CorFocoAindiceInicial ALinhaSQLOrderBy ColumnsExpanded	FieldNameNUMDIALEITURATitle.CaptionDia LeituraVisible	 Expanded	FieldName	CODFILIALTitle.CaptionFilialWidth#Visible	 Expanded	FieldNameSEQCONTRATOTitle.CaptionSeqWidth-Visible	 Expanded	FieldNameDATULTIMAEXECUCAOTitle.CaptionUltima LeituraVisible	 Expanded	FieldName	C_NOM_CLITitle.CaptionClienteVisible	    TSQL	Contratos
Aggregates Params ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.Strings^select CON.CODFILIAL, CON.SEQCONTRATO, CON.NUMDIALEITURA, CON.DATULTIMAEXECUCAO, CLI.C_NOM_CLI    'from CONTRATOCORPO CON, CADCLIENTES CLI%Where CON.CODCLIENTE = CLI.I_COD_CLI AND CON.DATCANCELAMENTO IS NULL  TFMTBCDFieldContratosCODFILIAL	FieldName	CODFILIALOrigin!BASEDADOS.CONTRATOCORPO.CODFILIAL  TFMTBCDFieldContratosSEQCONTRATO	FieldNameSEQCONTRATOOrigin#BASEDADOS.CONTRATOCORPO.SEQCONTRATO  TFMTBCDFieldContratosNUMDIALEITURA	FieldNameNUMDIALEITURAOrigin%BASEDADOS.CONTRATOCORPO.NUMDIALEITURA  TSQLTimeStampFieldContratosDATULTIMAEXECUCAO	FieldNameDATULTIMAEXECUCAOOrigin)BASEDADOS.CONTRATOCORPO.DATULTIMAEXECUCAO  TWideStringFieldContratosC_NOM_CLI	FieldName	C_NOM_CLIOriginBASEDADOS.CADCLIENTES.C_NOM_CLISize2   TDataSourceDataContratosDataSet	ContratosLeft Top   