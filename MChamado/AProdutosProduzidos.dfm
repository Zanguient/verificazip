�
 TFPRODUTOSPRODUZIDOS 0�  TPF0TFProdutosProduzidosFProdutosProduzidosLeft� ToplCaptionProdutos ProduzidosClientHeight�ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrder	PositionpoDesktopCenterWindowStatewsMaximizedOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPainelGradientePainelGradiente1Left Top WidthHeight)AlignalTop	AlignmenttaLeftJustifyCaption   Produtos ProduzidosFont.CharsetANSI_CHARSET
Font.ColorclWhiteFont.Height�	Font.NameTimes New Roman
Font.StylefsBold 
ParentFontTabOrder AConfiguracoesFPrincipal.CorPainelGra  TPanelColorPanelColor1Left Top)WidthHeight�AlignalClientColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TDBGridColor	GProdutosLeftTopWidthHeight�AlignalClientColorclInfoBk
DataSourceDataCHAMADOPRODUTOAPRODUZIRDrawingStyle
gdsClassic
FixedColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclBlueFont.Height�	Font.NameMS Sans Serif
Font.Style 
ParentFont	PopupMenuMenuItemTabOrder TitleFont.CharsetDEFAULT_CHARSETTitleFont.ColorclBlueTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.Style 	OnKeyDownGProdutosKeyDownACorFocoFPrincipal.CorFocoColumnsExpanded	FieldName	CODFILIALVisible	 Expanded	FieldName
NUMCHAMADOVisible	 Expanded	FieldName	C_COD_PROVisible	 Expanded	FieldName	C_NOM_PROVisible	 Expanded	FieldName
QTDPRODUTOVisible	 Expanded	FieldNameSEQITEMVisible	 Expanded	FieldNameSEQITEMORCADOVisible	 Expanded	FieldNameDESUMTitle.CaptionUMVisible	     TPanelColorPanelColor2Left Top�WidthHeight.AlignalBottomColorclSilverFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style ParentBackground
ParentFontTabOrderAUsarCorFormACorFormFPrincipal.CorForm TBitBtnBFecharLeft�TopWidthdHeightCaption&FecharDoubleBuffered	
Glyph.Data
z  v  BMv      v   (                                    �  �   �� �   � � ��   ���   �  �   �� �   � � ��  ��� 3     33wwwww33333333333333333333333333333333333333333333333?33�33333s3333333333333���33��337ww�33��337���33��337ww3333333333333����33     33wwwwws3	NumGlyphsParentDoubleBufferedTabOrder OnClickBFecharClick   TRBSQLCHAMADOPRODUTOAPRODUZIR
Aggregates Params ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQL.StringstSELECT CPR.CODFILIAL, CPR.NUMCHAMADO , PRO.C_COD_PRO, PRO.C_NOM_PRO, CPR.QTDPRODUTO, CPR.SEQITEM, CPR.SEQITEMORCADO,8CPR.SEQPRODUTO, CPR.VALUNITARIO, CPR.VALTOTAL, CPR.DESUM1FROM CHAMADOPRODUTOAPRODUZIR CPR, CADPRODUTOS PRO$WHERE CPR.SEQPRODUTO = PRO.I_SEQ_PRO ASqlQuery.SQLConnectionFPrincipal.BaseDadosSQL.StringstSELECT CPR.CODFILIAL, CPR.NUMCHAMADO , PRO.C_COD_PRO, PRO.C_NOM_PRO, CPR.QTDPRODUTO, CPR.SEQITEM, CPR.SEQITEMORCADO,8CPR.SEQPRODUTO, CPR.VALUNITARIO, CPR.VALTOTAL, CPR.DESUM1FROM CHAMADOPRODUTOAPRODUZIR CPR, CADPRODUTOS PRO$WHERE CPR.SEQPRODUTO = PRO.I_SEQ_PRO Left� TFMTBCDField CHAMADOPRODUTOAPRODUZIRCODFILIALDisplayLabelFilialDisplayWidth	FieldName	CODFILIALRequired		Precision
Size   TFMTBCDField!CHAMADOPRODUTOAPRODUZIRNUMCHAMADODisplayLabelChamadoDisplayWidth		FieldName
NUMCHAMADORequired		Precision
Size   TWideStringField CHAMADOPRODUTOAPRODUZIRC_COD_PRODisplayLabel   CódigoDisplayWidth	FieldName	C_COD_PROSize2  TWideStringField CHAMADOPRODUTOAPRODUZIRC_NOM_PRODisplayLabelProdutoDisplayWidth9	FieldName	C_NOM_PROSized  TFMTBCDField!CHAMADOPRODUTOAPRODUZIRQTDPRODUTODisplayLabel
QuantidadeDisplayWidth	FieldName
QTDPRODUTO	PrecisionSize  TFMTBCDFieldCHAMADOPRODUTOAPRODUZIRSEQITEMDisplayLabel	Seq. ItemDisplayWidth		FieldNameSEQITEMRequired		Precision
Size   TFMTBCDField$CHAMADOPRODUTOAPRODUZIRSEQITEMORCADODisplayLabelSeq. Item OrcadoDisplayWidth	FieldNameSEQITEMORCADORequired		Precision
Size   TFMTBCDField!CHAMADOPRODUTOAPRODUZIRSEQPRODUTO	FieldName
SEQPRODUTO	Precision
Size   TFMTBCDField"CHAMADOPRODUTOAPRODUZIRVALUNITARIO	FieldNameVALUNITARIO	PrecisionSize  TFMTBCDFieldCHAMADOPRODUTOAPRODUZIRVALTOTAL	FieldNameVALTOTAL	PrecisionSize  TWideStringFieldCHAMADOPRODUTOAPRODUZIRDESUM	FieldNameDESUMSize   TDataSourceDataCHAMADOPRODUTOAPRODUZIRDataSetCHAMADOPRODUTOAPRODUZIRLeftp  TSQLAux
Aggregates Params ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQLConnectionFPrincipal.BaseDadosLeft�Top	  TSQLCadastro
Aggregates Params ProviderNameInternalProviderASQlConnectionFPrincipal.BaseDadosASqlQuery.MaxBlobSize�ASqlQuery.Params ASqlQuery.SQLConnectionFPrincipal.BaseDadosLeft�TopY  
TPopupMenuMenuItemLeftxToph 	TMenuItemMProdutoProduzidoCaptionProduto ProduzidoOnClickMProdutoProduzidoClick    