program Comando;

uses
  Forms,
  APrincipal in 'APrincipal.pas' {FPrincipal},
  UnDadosCR in '..\..\..\mfinanceiro\UnDadosCR.pas',
  UnContasAReceber in '..\..\..\mfinanceiro\UnContasAReceber.pas',
  UnComissoes in '..\..\..\mfinanceiro\UnComissoes.pas',
  UnSistema in '..\..\..\magerais\UnSistema.pas',
  Constantes in '..\..\..\mconfiguracoessistema\Constantes.pas',
  UnMoedas in '..\..\..\mconfiguracoessistema\unmoedas.pas',
  UnDados in '..\..\..\magerais\UnDados.pas',
  UnClassesImprimir in '..\..\..\magerais\UnClassesImprimir.pas',
  AMostraParReceberOO in '..\..\..\mfinanceiro\AMostraParReceberOO.pas' {FMostraParReceberOO},
  AContas in '..\..\..\mfinanceiro\acontas.pas' {FContas},
  ABancos in '..\..\..\mfinanceiro\abancos.pas' {FBancos},
  UnCotacao in '..\..\..\mpontaloja\UnCotacao.pas',
  UnProdutos in '..\..\..\mestoque\UnProdutos.pas',
  UnCodigoBarra in '..\..\..\mconfiguracoessistema\uncodigobarra.pas',
  UnClassificacao in '..\..\..\mestoque\unclassificacao.pas',
  UnSumarizaEstoque in '..\..\..\mestoque\UnSumarizaEstoque.pas',
  UnDadosProduto in '..\..\..\mestoque\UnDadosProduto.pas',
  UnContasAPagar in '..\..\..\mfinanceiro\UnContasAPagar.pas',
  AMostraParPagar in '..\..\..\mfinanceiro\AMostraParPagar.pas' {FMostraParPagar},
  AMostraCheque in '..\..\..\magerais\amostracheque.pas' {FMostraCheque},
  UnImpressao in '..\..\..\magerais\UnImpressao.pas',
  UnClientes in '..\..\..\magerais\UnClientes.pas',
  UnEDI in '..\..\..\mfaturamento\UnEDI.pas',
  UnNotaFiscal in '..\..\..\mfaturamento\UnNotaFiscal.pas',
  UnVendedor in '..\..\..\magerais\UnVendedor.pas',
  UnComandosImpCheque in '..\..\..\magerais\uncomandosimpcheque.pas',
  UnImpressaoBoleto in '..\..\..\magerais\UnImpressaoBoleto.pas',
  UnImpressaoRelatorio in '..\..\..\magerais\UnImpressaoRelatorio.pas',
  UnPrincipal in '..\..\..\magerais\UnPrincipal.pas',
  UnFluxo in '..\..\..\mfinanceiro\unfluxo.pas',
  AAdicionais in '..\..\..\mfinanceiro\aadicionais.pas' {FAdicionais},
  AAlteraParcelaCartao in '..\..\..\mfinanceiro\aalteraparcelacartao.pas' {FAlteraParcelaCartao},
  AAvaliacaoReceber in '..\..\..\mfinanceiro\AAvaliacaoReceber.pas' {FAvaliacaoReceber},
  ABaixaContasPagar in '..\..\..\mfinanceiro\abaixacontaspagar.pas' {FEfetuarBaixaPagar},
  ABaixaContasReceber in '..\..\..\mfinanceiro\ABaixaContasReceber.pas' {FEfetuarBaixaReceber},
  ABaixaCPBancos in '..\..\..\mfinanceiro\abaixacpbancos.pas' {FBaixaCPBancos},
  ABordero in '..\..\..\mfinanceiro\abordero.pas' {Form2},
  ACancelaExcluiCP in '..\..\..\mfinanceiro\acancelaexcluicp.pas' {FCancelaExclui},
  ACartao in '..\..\..\mfinanceiro\acartao.pas' {FCartao},
  AChequesCancelados in '..\..\..\mfinanceiro\achequescancelados.pas' {FChequesCancelados},
  AConciliacaoBan in '..\..\..\mfinanceiro\aconciliacaoban.pas' {FConciliacao},
  ACondicoesPgtos in '..\..\..\mfinanceiro\ACondicoesPgtos.pas' {FCondicoesPagamentos},
  AConfiguraComissoes in '..\..\..\mfinanceiro\aconfiguracomissoes.pas' {FConfiguraComissoes},
  AConSituacao in '..\..\..\mfinanceiro\AConSituacao.pas' {FConsultaSituacao},
  AConsolidarCR in '..\..\..\mfinanceiro\AConsolidarCR.pas' {FConsolidarCR},
  AConsultaDespesas in '..\..\..\mfinanceiro\aconsultadespesas.pas' {FConsultaDespesas},
  AConsultaMovimentoBancario in '..\..\..\mfinanceiro\aconsultamovimentobancario.pas' {FConsultaMovimentoBancario},
  AConsultaReceitaDespesa in '..\..\..\mfinanceiro\aconsultareceitadespesa.pas' {FConsultaReceitaDespesa},
  AConsultaTitulosDespesas in '..\..\..\mfinanceiro\aconsultatitulosdespesas.pas' {FConsultaTitulosDespesas},
  AConsultaValoresFornecedor in '..\..\..\mfinanceiro\AConsultaValoresFornecedor.pas' {FConsultaValoresFornecedor},
  AContasAConsolidarCR in '..\..\..\mfinanceiro\AContasAConsolidarCR.pas' {FContasAConsolidarCR},
  AContasAPagar in '..\..\..\mfinanceiro\AContasAPagar.pas' {FContasaPagar},
  AContasAReceber in '..\..\..\mfinanceiro\AContasAReceber.pas' {FContasaReceber},
  AContasFixas in '..\..\..\mfinanceiro\acontasfixas.pas' {FContasFixas},
  ADespesas in '..\..\..\mfinanceiro\adespesas.pas' {FDespesas},
  ADocumentosEmitidos in '..\..\..\mfinanceiro\adocumentosemitidos.pas' {FDocumentosEmitidos},
  ADocumentosReceber in '..\..\..\mfinanceiro\adocumentosreceber.pas' {FDocumentosReceber},
  ADocumentosRecebidos in '..\..\..\mfinanceiro\adocumentosrecebidos.pas' {FDocumentosRecebidos},
  Afluxo in '..\..\..\mfinanceiro\afluxo.pas' {FFluxo},
  AFluxoDetalhe in '..\..\..\mfinanceiro\afluxodetalhe.pas' {FFluxoDetalhe},
  AFluxoPagarReceber in '..\..\..\mfinanceiro\afluxopagarreceber.pas' {FFluxoPagarReceber},
  AFormaPagtoCP in '..\..\..\mfinanceiro\AFormaPagtoCP.pas' {FFormaPagtoCP},
  AFormasPagamento in '..\..\..\mfinanceiro\AFormasPagamento.pas' {FFormasPagamento},
  AFormasPagtoCP in '..\..\..\mfinanceiro\aformaspagtocp.pas' {FFormasPatgoCP},
  AFormasPagtoCR in '..\..\..\mfinanceiro\aformaspagtocr.pas' {FFormasPagtoCR},
  AGeraDespesasFixas in '..\..\..\mfinanceiro\ageradespesasfixas.pas' {FGeraDespesasFixas},
  AGraficoComissoes in '..\..\..\mfinanceiro\AGraficoComissoes.pas' {FGraficosComissoes},
  AGraficoMovBancos in '..\..\..\mfinanceiro\agraficomovbancos.pas' {FGraficosBancos},
  AGraficosContasaPagar in '..\..\..\mfinanceiro\agraficoscontasapagar.pas' {FGraficosCP},
  AGraficosContasaReceber in '..\..\..\mfinanceiro\agraficoscontasareceber.pas' {FGraficosCR},
  AGraficosFluxo in '..\..\..\mfinanceiro\agraficosfluxo.pas' {FGraficoFluxo},
  AImpBordero in '..\..\..\mfinanceiro\AImpBordero.pas' {FImpBordero},
  AImprimeAvaliacao in '..\..\..\mfinanceiro\AImprimeAvaliacao.pas' {FImprimeAvaliacao},
  AImprimeBoleto in '..\..\..\mfinanceiro\AImprimeBoleto.pas' {FImprimeBoleto},
  AImprimeCarne in '..\..\..\mfinanceiro\aimprimecarne.pas' {FImprimeCarne},
  AImprimeCheque in '..\..\..\mfinanceiro\aimprimecheque.pas' {FImprimeCheque},
  AImprimeComissao in '..\..\..\mfinanceiro\AImprimeComissao.pas' {FImprimeComissao},
  AImprimeCP in '..\..\..\mfinanceiro\AImprimeCP.pas' {FImprimeCP},
  AImprimeCR in '..\..\..\mfinanceiro\AImprimeCR.pas' {FImprimeCR},
  AImprimeDuplicata in '..\..\..\mfinanceiro\AImprimeDuplicata.pas' {FImprimeDuplicata},
  AImprimeEnvelope in '..\..\..\mfinanceiro\aimprimeenvelope.pas' {FImprimeEnvelope},
  AImprimeMovBancario in '..\..\..\mfinanceiro\AImprimeMovBancario.pas' {FImprimeMovBancario},
  AImprimePlanoContas in '..\..\..\mfinanceiro\AImprimePlanoContas.pas' {FImprimePlanoContas},
  AImprimeTextoAvaliacao in '..\..\..\mfinanceiro\AImprimeTextoAvaliacao.pas' {FImprimeTextoAvaliacao},
  AImprimeValoresFornecedor in '..\..\..\mfinanceiro\AImprimeValoresFornecedor.pas' {FImprimeValoresFornecedor},
  AManutencaoCP in '..\..\..\mfinanceiro\AManutencaoCP.pas' {FManutencaoCP},
  AManutencaoCR in '..\..\..\mfinanceiro\AManutencaoCR.pas' {FManutencaoCR},
  AMostraNroNSU in '..\..\..\mfinanceiro\amostranronsu.pas' {FMostraNroNSU},
  AMovChequeTerceiro in '..\..\..\mfinanceiro\amovchequeterceiro.pas' {FMovChequeTerceiro},
  AMovComissoes in '..\..\..\mfinanceiro\AMovComissoes.pas' {FMovComissoes},
  ANovaComissao in '..\..\..\mfinanceiro\anovacomissao.pas' {FNovaComissao},
  ANovoContasaPagar in '..\..\..\mfinanceiro\ANovoContasaPagar.pas' {FNovoContasAPagar},
  ANovoContasaReceber in '..\..\..\mfinanceiro\ANovoContasaReceber.pas' {FNovoContasAReceber},
  ANovoPlanoConta in '..\..\..\mfinanceiro\ANovoPlanoConta.pas' {FNovoPlanoConta},
  AOperacaoBancaria in '..\..\..\mfinanceiro\aoperacaobancaria.pas' {FOperacaoBancaria},
  APlanoConta in '..\..\..\mfinanceiro\APlanoConta.pas' {FPlanoConta},
  ARelPedido in '..\..\..\mpontaloja\ARelPedido.pas' {FRelPedido},
  UnCliente in '..\..\..\mfinanceiro\UnCliente.pas',
  UnDespesas in '..\..\..\mfinanceiro\undespesas.pas',
  ANovoCliente in '..\..\..\magerais\ANovoCliente.pas' {FNovoCliente},
  AClientes in '..\..\..\magerais\AClientes.pas' {FClientes},
  AAlterarFilialUso in '..\..\..\magerais\aalterarfilialuso.pas' {FAlterarFilialUso},
  AAlterarSenha in '..\..\..\magerais\aalterarsenha.pas' {FAlteraSenha},
  AAniversarioCliente in '..\..\..\magerais\aaniversariocliente.pas' {FAniversariante},
  ABackup in '..\..\..\magerais\ABackup.pas' {FBackup},
  Abertura in '..\..\..\magerais\Abertura.pas' {FAbertura},
  ACadCidades in '..\..\..\magerais\acadcidades.pas' {FCidades},
  ACadEstados in '..\..\..\magerais\ACadEstados.pas' {FCadEstados},
  ACadLogradouro in '..\..\..\magerais\acadlogradouro.pas' {FCadLogradouros},
  ACadPaises in '..\..\..\magerais\acadpaises.pas' {FCadPaises},
  AConsultaCondicaoPgto in '..\..\..\magerais\AConsultaCondicaoPgto.pas' {FConsultaCondicaoPgto},
  AConsultaRuas in '..\..\..\magerais\AConsultaRuas.pas' {FConsultaRuas},
  AEtiquetaCliente in '..\..\..\magerais\aetiquetacliente.pas' {FEtiquetaClientes},
  AEventos in '..\..\..\magerais\aeventos.pas' {FEventos},
  AMostraBoleto in '..\..\..\magerais\amostraboleto.pas' {FMostraBoleto},
  AMostraCarne in '..\..\..\magerais\amostracarne.pas' {FMostraCarne},
  AMostraDuplicata in '..\..\..\magerais\amostraduplicata.pas' {FMostraDuplicata},
  AMostraEnvelope in '..\..\..\magerais\amostraenvelope.pas' {FMostraEnvelope},
  AMostraNotaPromissoria in '..\..\..\magerais\amostranotapromissoria.pas' {FMostraNotaPromissoria},
  AMostraRecibo in '..\..\..\magerais\amostrarecibo.pas' {FMostraRecibo},
  ANovaTransportadora in '..\..\..\magerais\anovatransportadora.pas' {FNovaTransportadora},
  ANovoVendedor in '..\..\..\magerais\ANovoVendedor.pas' {FNovoVendedor},
  AProfissoes in '..\..\..\magerais\aprofissoes.pas' {FProfissoes},
  ARegiaoVenda in '..\..\..\magerais\aregiaovenda.pas' {FRegiaoVenda},
  ASituacoesClientes in '..\..\..\magerais\asituacoesclientes.pas' {FSituacoesClientes},
  ASobre in '..\..\..\magerais\ASobre.pas' {FSobre},
  ATransportadoras in '..\..\..\magerais\atransportadoras.pas' {FTransportadoras},
  AUnidade in '..\..\..\magerais\aunidade.pas' {FUnidades},
  AVendedores in '..\..\..\magerais\AVendedores.pas' {FVendedores},
  UnAtualizacao in '..\..\..\magerais\UnAtualizacao.pas',
  ARamoAtividade in '..\..\..\mpontaloja\ARamoAtividade.pas' {FRamoAtividade},
  ASituacoes in '..\..\..\mfinanceiro\asituacoes.pas' {FSituacoes},
  ANovaNotaFiscaisFor in '..\..\..\mestoque\ANovaNotaFiscaisFor.pas' {FNovaNotaFiscaisFor},
  UnInventario in '..\..\..\mestoque\UnInventario.pas',
  UnNotasFiscaisFor in '..\..\..\mestoque\UnNotasFiscaisFor.pas',
  UnOrdemProducao in '..\..\..\mestoque\UnOrdemProducao.pas',
  UnServicos in '..\..\..\mestoque\unservicos.pas',
  ANovoProduto in '..\..\..\mestoque\ANovoProduto.pas' {FNovoProduto},
  AProdutos in '..\..\..\mestoque\AProdutos.pas' {Fprodutos},
  ANovaClassificacao in '..\..\..\mestoque\ANovaClassificacao.pas' {FNovaClassificacao},
  AImpProduto in '..\..\..\mestoque\AImpProduto.pas' {FImpProduto},
  AMontaKit in '..\..\..\mestoque\AMontaKit.pas' {FMontaKit},
  ALocalizaClassificacao in '..\..\..\mestoque\alocalizaclassificacao.pas' {FLocalizaClassificacao},
  ALocalizaProdutos in '..\..\..\mfaturamento\ALocalizaProdutos.pas' {FlocalizaProduto},
  AProdutosKit in '..\..\..\mestoque\AProdutosKit.pas' {FProdutosKit},
  ACores in '..\..\..\mestoque\ACores.pas' {FCores},
  ATipoFundo in '..\..\..\mestoque\ATipoFundo.pas' {FTipoFundo},
  ATipoEmenda in '..\..\..\mestoque\ATipoEmenda.pas' {FTipoEmenda},
  AMaquinas in '..\..\..\mestoque\AMaquinas.pas' {FMaquinas},
  AItensNatureza in '..\..\..\mfaturamento\aitensnatureza.pas' {FItensNatureza},
  AOperacoesEstoques in '..\..\..\mestoque\aoperacoesestoques.pas' {FOperacoesEstoques},
  ANovaNatureza in '..\..\..\mfaturamento\anovanatureza.pas' {FNovaNatureza},
  ANaturezas in '..\..\..\mfaturamento\ANaturezas.pas' {FNaturezas},
  AMovNatureza in '..\..\..\mfaturamento\amovnatureza.pas' {FMovNatureza},
  ANovaNotaFiscalNota in '..\..\..\mfaturamento\ANovaNotaFiscalNota.pas' {FNovaNotaFiscalNota},
  AObservacoesNota in '..\..\..\mfaturamento\aobservacoesnota.pas' {FObservacoesNota},
  ANovoServico in '..\..\..\mestoque\anovoservico.pas' {FNovoServico},
  AMostraObservacaoCliente in '..\..\..\mpontaloja\AMostraObservacaoCliente.pas' {FMostraObservacaoCliente},
  AEstagioProducao in '..\..\..\mestoque\AEstagioProducao.pas' {FEstagioProducao},
  ATipoEstagioProducao in '..\..\..\mestoque\ATipoEstagioProducao.pas' {FTipoEstagioProducao},
  ACotacao in '..\..\..\mpontaloja\ACotacao.pas' {FCotacao},
  UnCrystal in '..\..\..\magerais\UnCrystal.pas',
  ANovaCotacao in '..\..\..\mpontaloja\ANovaCotacao.pas' {FNovaCotacao},
  ALocalizaServico in '..\..\..\mfaturamento\alocalizaservico.pas' {FlocalizaServico},
  AImpCotacao in '..\..\..\mpontaloja\AImpCotacao.pas' {FImpOrcamento},
  ATipoCotacao in '..\..\..\mpontaloja\ATipoCotacao.pas' {FTipoCotacao},
  AEmbalagem in '..\..\..\mpontaloja\AEmbalagem.pas' {FEmbalagem},
  AProdutoReferencia in '..\..\..\mpontaloja\AProdutoReferencia.pas' {FReferenciaProduto},
  AProdutosDevolvidos in '..\..\..\mpontaloja\AProdutosDevolvidos.pas' {FProdutosDevolvidos},
  AImprimeEtiqueta in '..\..\..\mpontaloja\AImprimeEtiqueta.pas' {FImprimiEtiqueta},
  UnImpressaoEtiquetaCotacao in '..\..\..\mpontaloja\UnImpressaoEtiquetaCotacao.pas',
  AGeraOP in '..\..\..\mpontaloja\AGeraOP.pas' {FGerarOP},
  ANovaOrdemProducaoCadarco in '..\..\..\mestoque\ANovaOrdemProducaoCadarco.pas' {FNovaOrdemProducaoCadarco},
  AImpOrdemProducao in '..\..\..\mestoque\AImpOrdemProducao.pas' {FImpOrdemProducao},
  AGeraEstagiosOP in '..\..\..\mpontaloja\AGeraEstagiosOP.pas' {FGeraEstagiosOP},
  ABaixaParcialCotacao in '..\..\..\mpontaloja\ABaixaParcialCotacao.pas' {FBaixaParcialCotacao},
  AConsultaBaixaParcial in '..\..\..\mpontaloja\AConsultaBaixaParcial.pas' {FConsultaBaixaParcial},
  ANovoECF in '..\..\..\mpontaloja\ANovoECF.pas' {FNovoECF},
  UnECF in '..\..\..\mpontaloja\UnECF.pas',
  UnBematech in '..\..\..\mpontaloja\UnBematech.pas',
  AFormaPagamentoECF in '..\..\..\mpontaloja\AFormaPagamentoECF.pas' {FFormaPagamentoECF},
  AOrdensProducaoCadarco in '..\..\..\mestoque\AOrdensProducaoCadarco.pas' {FOrdensProducaoCadarco},
  ATipoCorte in '..\..\..\mestoque\ATipoCorte.pas' {FTipoCorte},
  ANovoTecnico in '..\..\..\mpontaloja\ANovoTecnico.pas' {FNovoTecnico},
  ATecnicos in '..\..\..\mpontaloja\ATecnicos.pas' {FTecnicos},
  ANovaCobranca in '..\..\..\mfinanceiro\ANovaCobranca.pas' {FNovaCobranca},
  ACobrancas in '..\..\..\mfinanceiro\ACobrancas.pas' {FCobrancas},
  AHistoricoLigacao in '..\..\..\mfinanceiro\AHistoricoLigacao.pas' {FHistoricoLigacao},
  AVisualizaLogReceber in '..\..\..\mfinanceiro\AVisualizaLogReceber.pas' {FVisualizaLogReceber},
  ANovaConta in '..\..\..\mfinanceiro\ANovaConta.pas' {FNovaConta},
  AMotivoInadimplencia in '..\..\..\mfinanceiro\AMotivoInadimplencia.pas' {FMotivoInadimplencia},
  AContratosCliente in '..\..\..\mpontaloja\AContratosCliente.pas' {FContratosCliente},
  UnContrato in '..\..\..\mpontaloja\UnContrato.pas',
  ANovoContratoCliente in '..\..\..\mpontaloja\ANovoContratoCliente.pas' {FNovoContratoCliente},
  ATipoContrato in '..\..\..\mpontaloja\ATipoContrato.pas' {FTipoContrato},
  ABrindesCliente in '..\..\..\mpontaloja\ABrindesCliente.pas' {FBrindesCliente},
  AAlteraVendedorCotacao in '..\..\..\mpontaloja\AAlteraVendedorCotacao.pas' {FAlteraVendedorCotacao},
  UnTeleMarketing in '..\..\..\mpontaloja\UnTeleMarketing.pas',
  ANovoTeleMarketing in '..\..\..\mpontaloja\ANovoTeleMarketing.pas' {FNovoTeleMarketing},
  ATeleMarketings in '..\..\..\mpontaloja\ATeleMarketings.pas' {FTeleMarketings},
  AProdutosCliente in '..\..\..\mpontaloja\AProdutosCliente.pas' {FProdutosCliente},
  UnDaruma in '..\..\..\mpontaloja\UnDaruma.pas',
  ANovoAgendamento in '..\..\..\mpontaloja\ANovoAgendamento.pas' {FNovoAgedamento},
  ATipoAgendamento in '..\..\..\mpontaloja\ATipoAgendamento.pas' {FTipoAgendamento};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
