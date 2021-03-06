program ChamadoTecnico;

uses
  Forms,
  SysUtils,
  RpDefine,
  FunString,
  APrincipal in 'APrincipal.pas' {FPrincipal},
  Constantes in '..\MConfiguracoesSistema\Constantes.pas',
  ASobre in '..\MaGerais\ASobre.pas' {FSobre},
  Abertura in '..\MaGerais\Abertura.pas' {FAbertura},
  AAlterarSenha in '..\MaGerais\AAlterarSenha.pas' {FAlteraSenha},
  AAlterarFilialUso in '..\MaGerais\AAlterarFilialUso.pas' {FAlterarFilialUso},
  UnRegistro in '..\MConfiguraModulos\UnRegistro.pas',
  AClientes in '..\MaGerais\AClientes.pas' {FClientes},
  ANovoCliente in '..\MaGerais\ANovoCliente.pas' {FNovoCliente},
  AProfissoes in '..\MaGerais\AProfissoes.pas' {FProfissoes},
  ASituacoesClientes in '..\MaGerais\ASituacoesClientes.pas' {FSituacoesClientes},
  AConsultaRuas in '..\MaGerais\AConsultaRuas.pas' {FConsultaRuas},
  ACadCidades in '..\MaGerais\ACadCidades.pas' {FCidades},
  ACadPaises in '..\MaGerais\ACadPaises.pas' {FCadPaises},
  ACadEstados in '..\MaGerais\ACadEstados.pas' {FCadEstados},
  AEventos in '..\MaGerais\AEventos.pas' {FEventos},
  UnCodigoBarra in '..\MConfiguracoesSistema\UnCodigoBarra.pas',
  UnMoedas in '..\MConfiguracoesSistema\UnMoedas.pas',
  CadFormularios in '..\MConfiguracoesSistema\CadFormularios.pas' {FCadFormularios},
  AConsultaPrecosProdutos in '..\mpontaloja\AConsultaPrecosProdutos.pas' {FConsultaPrecosProdutos},
  AProdutosKit in '..\MEstoque\AProdutosKit.pas' {FProdutosKit},
  UnCotacao in '..\mpontaloja\UnCotacao.pas',
  UnProdutos in '..\MEstoque\UnProdutos.pas',
  UnSumarizaEstoque in '..\MEstoque\UnSumarizaEstoque.pas',
  AProdutos in '..\MEstoque\AProdutos.pas' {Fprodutos},
  ANovaClassificacao in '..\MEstoque\ANovaClassificacao.pas' {FNovaClassificacao},
  AMontaKit in '..\MEstoque\AMontaKit.pas' {FMontaKit},
  ALocalizaClassificacao in '..\MEstoque\ALocalizaClassificacao.pas' {FLocalizaClassificacao},
  ANovoVendedor in '..\MaGerais\ANovoVendedor.pas' {FNovoVendedor},
  AVendedores in '..\MaGerais\AVendedores.pas' {FVendedores},
  UnClassificacao in '..\MEstoque\UnClassificacao.pas',
  ACotacao in '..\mpontaloja\ACotacao.pas' {FCotacao},
  AConsultaCondicaoPgto in '..\MaGerais\AConsultaCondicaoPgto.pas' {FConsultaCondicaoPgto},
  AFormasPagamento in '..\MFinanceiro\AFormasPagamento.pas' {FFormasPagamento},
  ALocalizaProdutos in '..\MFaturamento\ALocalizaProdutos.pas' {FlocalizaProduto},
  ANovoServico in '..\MEstoque\ANovoServico.pas' {FNovoServico},
  ALocalizaServico in '..\MFaturamento\ALocalizaServico.pas' {FlocalizaServico},
  UnServicos in '..\MEstoque\UnServicos.pas',
  AAdicionaProdFilial in '..\MEstoque\AAdicionaProdFilial.pas' {FAdicionaProdFilial},
  ATabelaPreco in '..\MEstoque\ATabelaPreco.pas' {FTabelaPreco},
  AFormacaoPreco in '..\MEstoque\AFormacaoPreco.pas' {FFormacaoPreco},
  AServicos in '..\MEstoque\AServicos.pas' {FServicos},
  AFormacaoPrecoServico in '..\MEstoque\AFormacaoPrecoServico.pas' {FFormacaoPrecoServico},
  UnNotaFiscal in '..\MFaturamento\UnNotaFiscal.pas',
  UnComissoes in '..\MFinanceiro\UnComissoes.pas',
  UnContasAReceber in '..\MFinanceiro\UnContasAReceber.pas',
  UnImpressao in '..\MaGerais\UnImpressao.pas',
  UnClassesImprimir in '..\MaGerais\UnClassesImprimir.pas',
  ANovaNatureza in '..\MFaturamento\ANovaNatureza.pas' {FNovaNatureza},
  ANaturezas in '..\MFaturamento\ANaturezas.pas' {FNaturezas},
  AOperacoesEstoques in '..\MEstoque\AOperacoesEstoques.pas' {FOperacoesEstoques},
  APlanoConta in '..\MFinanceiro\APlanoConta.pas' {FPlanoConta},
  ANovoPlanoConta in '..\MFinanceiro\ANovoPlanoConta.pas' {FNovoPlanoConta},
  AObservacoesNota in '..\MFaturamento\AObservacoesNota.pas' {FObservacoesNota},
  UnContasAPagar in '..\MFinanceiro\UnContasAPagar.pas',
  ABancos in '..\MFinanceiro\ABancos.pas' {FBancos},
  UnAtualizacao in '..\MaGerais\UnAtualizacao.pas',
  AContas in '..\MFinanceiro\AContas.pas' {FContas},
  UnPrincipal in '..\MaGerais\UnPrincipal.pas',
  ARegiaoVenda in '..\MaGerais\ARegiaoVenda.pas' {FRegiaoVenda},
  AMovNatureza in '..\MFaturamento\AMovNatureza.pas' {FMovNatureza},
  AItensNatureza in '..\MFaturamento\AItensNatureza.pas' {FItensNatureza},
  AUnidade in '..\MEstoque\AUnidade.pas' {FUnidades},
  UnComandosImpCheque in '..\MaGerais\UnComandosImpCheque.pas',
  AEtiquetaCliente in '..\MaGerais\AEtiquetaCliente.pas' {FEtiquetaClientes},
  ATipoFundo in '..\mestoque\ATipoFundo.pas' {FTipoFundo},
  UnDados in '..\magerais\UnDados.pas',
  ATipoEmenda in '..\mestoque\ATipoEmenda.pas' {FTipoEmenda},
  AMaquinas in '..\mestoque\AMaquinas.pas' {FMaquinas},
  UnClientes in '..\magerais\UnClientes.pas',
  ACores in '..\mestoque\ACores.pas' {FCores},
  ANovaCotacao in '..\mpontaloja\ANovaCotacao.pas' {FNovaCotacao},
  AMostraParReceberOO in '..\mfinanceiro\AMostraParReceberOO.pas' {FMostraParReceberOO},
  UnVendedor in '..\magerais\UnVendedor.pas',
  ATipoCotacao in '..\mpontaloja\ATipoCotacao.pas' {FTipoCotacao},
  UnSistema in '..\magerais\UnSistema.pas',
  ARamoAtividade in '..\mpontaloja\ARamoAtividade.pas' {FRamoAtividade},
  UnImpressaoRelatorio in '..\magerais\UnImpressaoRelatorio.pas',
  ARelPedido in '..\mpontaloja\ARelPedido.pas' {FRelPedido},
  UnImpressaoBoleto in '..\magerais\UnImpressaoBoleto.pas',
  AEmbalagem in '..\mpontaloja\AEmbalagem.pas' {FEmbalagem},
  AImprimeEtiqueta in '..\mpontaloja\AImprimeEtiqueta.pas' {FImprimiEtiqueta},
  UnImpressaoEtiquetaCotacao in '..\mpontaloja\UnImpressaoEtiquetaCotacao.pas',
  AProdutoReferencia in '..\mpontaloja\AProdutoReferencia.pas' {FReferenciaProduto},
  UnDadosCR in '..\mfinanceiro\UnDadosCR.pas',
  UnDadosProduto in '..\mestoque\UnDadosProduto.pas',
  AGeraOP in '..\mpontaloja\AGeraOP.pas' {FGerarOP},
  ANovaOrdemProducaoCadarco in '..\mestoque\ANovaOrdemProducaoCadarco.pas' {FNovaOrdemProducaoCadarco},
  UnOrdemProducao in '..\mestoque\UnOrdemProducao.pas',
  AProdutosDevolvidos in '..\mpontaloja\AProdutosDevolvidos.pas' {FProdutosDevolvidos},
  ANovaNotaFiscalNota in '..\mfaturamento\ANovaNotaFiscalNota.pas' {FNovaNotaFiscalNota},
  AMostraObservacaoCliente in '..\mpontaloja\AMostraObservacaoCliente.pas' {FMostraObservacaoCliente},
  ANovaNotaFiscaisFor in '..\mestoque\ANovaNotaFiscaisFor.pas' {FNovaNotaFiscaisFor},
  UnNotasFiscaisFor in '..\mestoque\UnNotasFiscaisFor.pas',
  ABaixaParcialCotacao in '..\mpontaloja\ABaixaParcialCotacao.pas' {FBaixaParcialCotacao},
  AConsultaBaixaParcial in '..\mpontaloja\AConsultaBaixaParcial.pas' {FConsultaBaixaParcial},
  AValidaSerieSistema in '..\..\modulos\AValidaSerieSistema.pas' {FValidaSerieSistema},
  AAlteraClassificacaoProduto in '..\mpontaloja\AAlteraClassificacaoProduto.pas' {FAlteraClassificacaoProduto},
  UnCrystal in '..\magerais\UnCrystal.pas',
  ANovoECF in '..\mpontaloja\ANovoECF.pas' {FNovoECF},
  UnECF in '..\mpontaloja\UnECF.pas',
  AFormaPagamentoECF in '..\mpontaloja\AFormaPagamentoECF.pas' {FFormaPagamentoECF},
  AEstagioProducao in '..\mestoque\AEstagioProducao.pas' {FEstagioProducao},
  ATipoEstagioProducao in '..\mestoque\ATipoEstagioProducao.pas' {FTipoEstagioProducao},
  AGeraEstagiosOP in '..\mpontaloja\AGeraEstagiosOP.pas' {FGeraEstagiosOP},
  AMostraPlanenamentoOP in '..\mpontaloja\AMostraPlanenamentoOP.pas' {FMostraPlanejamentoOP},
  UnPcp in '..\mestoque\UnPcp.pas',
  AAlteraEstagioCotacao in '..\mpontaloja\AAlteraEstagioCotacao.pas' {FAlteraEstagioCotacao},
  AOrdensProducaoCadarco in '..\mestoque\AOrdensProducaoCadarco.pas' {FOrdensProducaoCadarco},
  ATecnicos in '..\mpontaloja\ATecnicos.pas' {FTecnicos},
  ANovoTecnico in '..\mpontaloja\ANovoTecnico.pas' {FNovoTecnico},
  ATipoCorte in '..\mestoque\ATipoCorte.pas' {FTipoCorte},
  ANovaCobranca in '..\mfinanceiro\ANovaCobranca.pas' {FNovaCobranca},
  AHistoricoLigacao in '..\mfinanceiro\AHistoricoLigacao.pas' {FHistoricoLigacao},
  ACobrancas in '..\mfinanceiro\ACobrancas.pas' {FCobrancas},
  AMotivoInadimplencia in '..\mfinanceiro\AMotivoInadimplencia.pas' {FMotivoInadimplencia},
  ANovaConta in '..\mfinanceiro\ANovaConta.pas' {FNovaConta},
  ATipoContrato in '..\mpontaloja\ATipoContrato.pas' {FTipoContrato},
  ANovoContratoCliente in '..\mpontaloja\ANovoContratoCliente.pas' {FNovoContratoCliente},
  UnContrato in '..\mpontaloja\UnContrato.pas',
  AContratosCliente in '..\mpontaloja\AContratosCliente.pas' {FContratosCliente},
  APrincipioAtivo in '..\mpontaloja\APrincipioAtivo.pas' {FPrincipioAtivo},
  ANovaCampanhaVendas in '..\mpontaloja\ANovaCampanhaVendas.pas' {FNovaCampanhaVendas},
  ACampanhaVendas in '..\mpontaloja\ACampanhaVendas.pas' {FCampanhaVendas},
  ANovoTeleMarketing in '..\mpontaloja\ANovoTeleMarketing.pas' {FNovoTeleMarketing},
  UnTeleMarketing in '..\mpontaloja\UnTeleMarketing.pas',
  ABrindesCliente in '..\mpontaloja\ABrindesCliente.pas' {FBrindesCliente},
  AAlteraVendedorCotacao in '..\mpontaloja\AAlteraVendedorCotacao.pas' {FAlteraVendedorCotacao},
  ATeleMarketings in '..\mpontaloja\ATeleMarketings.pas' {FTeleMarketings},
  AProdutosCliente in '..\mpontaloja\AProdutosCliente.pas' {FProdutosCliente},
  ADonoProduto in '..\mpontaloja\ADonoProduto.pas' {FDonoProduto},
  ANovoAgendamento in '..\mpontaloja\ANovoAgendamento.pas' {FNovoAgedamento},
  ATipoAgendamento in '..\mpontaloja\ATipoAgendamento.pas' {FTipoAgendamento},
  UnDaruma in '..\mpontaloja\UnDaruma.pas',
  AAgendamentos in '..\mpontaloja\AAgendamentos.pas' {FAgendamentos},
  AAcondicionamento in '..\mpontaloja\AAcondicionamento.pas' {FAcondicionamento},
  AEstagioAgendamento in '..\mpontaloja\AEstagioAgendamento.pas' {FEstagioAgendamento},
  ANovoChamadoTecnico in 'ANovoChamadoTecnico.pas' {FNovoChamado},
  UnChamado in 'UnChamado.pas',
  AGeraFracaoOP in '..\mpontaloja\AGeraFracaoOP.pas' {FGeraFracaoOP},
  AChamadosTecnicos in 'AChamadosTecnicos.pas' {FChamadoTecnico},
  AParentesCliente in '..\mpontaloja\AParentesCliente.pas' {FParentesClientes},
  AAlteraEstagioChamado in '..\mpontaloja\AAlteraEstagioChamado.pas' {FAlteraEstagioChamado},
  AAlteraEstagioAgendamento in '..\mpontaloja\AAlteraEstagioAgendamento.pas' {FAlteraEstagioAgendamento},
  AOrdemProducaoGenerica in '..\mestoque\AOrdemProducaoGenerica.pas' {FOrdemProducaoGenerica},
  ANovaOrdemProducaoGenerica in '..\mestoque\ANovaOrdemProducaoGenerica.pas' {FNovaOrdemProducaoGenerica},
  AHistoricoECobranca in '..\mfinanceiro\AHistoricoECobranca.pas' {FHistoricoECobranca},
  ALocalizaProdutoContrato in 'ALocalizaProdutoContrato.pas' {FLocalizaProdutoContrato},
  AAgendaChamados in 'AAgendaChamados.pas' {FAgendaChamados},
  AHoraAgendaChamado in 'AHoraAgendaChamado.pas' {FHoraAgendaChamado},
  ATipoChamado in 'ATipoChamado.pas' {FTipoChamado},
  APerguntaPesquisaSatisfacao in 'APerguntaPesquisaSatisfacao.pas' {FPerguntaPesquisaSatisfacao},
  ANovaPerguntaPesquisaSatisfacao in 'ANovaPerguntaPesquisaSatisfacao.pas' {FNovaPerguntaPesquisaSatisfacao},
  AEfetuarPesquisaSatisfacao in 'AEfetuarPesquisaSatisfacao.pas' {FEfetuarPesquisaSatisfacao},
  UnPesquisaSatisfacao in 'UnPesquisaSatisfacao.pas',
  APesquisaSatisfacaoChamado in 'APesquisaSatisfacaoChamado.pas' {FPesquisaSatisfacaoChamado},
  AMedico in '..\mpontaloja\AMedico.pas' {FMedico},
  AContatosCliente in '..\mpontaloja\AContatosCliente.pas' {FContatosCliente},
  AProdutosReserva in '..\mpontaloja\AProdutosReserva.pas' {FProdutosReserva},
  ANovaMaquina in '..\mestoque\ANovaMaquina.pas' {FNovaMaquina},
  UnArgox in '..\magerais\UnArgox.pas',
  AChequesCP in '..\mfinanceiro\AChequesCP.pas' {FChequesCP},
  AConsultacheques in '..\mfinanceiro\AConsultacheques.pas' {FConsultaCheques},
  ATamanhos in '..\mpontaloja\ATamanhos.pas' {FTamanhos},
  APedidosPendentesFaturar in '..\mpontaloja\APedidosPendentesFaturar.pas' {FPedidosPendentesFaturar},
  UnProspect in '..\mcrm\UnProspect.pas',
  AConsolidarCR in '..\mfinanceiro\AConsolidarCR.pas' {FConsolidarCR},
  AContasAReceber in '..\mfinanceiro\AContasAReceber.pas' {FContasaReceber},
  AGraficosContasaPagar in '..\mfinanceiro\AGraficosContasaPagar.pas' {FGraficosCP},
  agraficoscontasareceber in '..\mfinanceiro\agraficoscontasareceber.pas' {FGraficosCR},
  AVisualizaLogReceber in '..\mfinanceiro\AVisualizaLogReceber.pas' {FVisualizaLogReceber},
  ANovoContasaReceber in '..\mfinanceiro\ANovoContasaReceber.pas' {FNovoContasAReceber},
  AManutencaoCR in '..\mfinanceiro\AManutencaoCR.pas' {FManutencaoCR},
  AMovComissoes in '..\mfinanceiro\AMovComissoes.pas' {FMovComissoes},
  AContasAConsolidarCR in '..\mfinanceiro\AContasAConsolidarCR.pas' {FContasAConsolidarCR},
  AComissaoClassificacaoVendedor in '..\mestoque\AComissaoClassificacaoVendedor.pas' {FComissaoClassificacaoVendedor},
  AProdutosOrcados in 'AProdutosOrcados.pas' {FProdutosOrcados},
  UnVersoes in '..\magerais\UnVersoes.pas',
  AConcorrentes in '..\mcrm\AConcorrentes.pas' {FConcorrentes},
  ANovoConcorrente in '..\mcrm\ANovoConcorrente.pas' {FNovoConcorrente},
  UnAmostra in '..\mcrm\UnAmostra.pas',
  ABaixaContasAReceberOO in '..\mfinanceiro\ABaixaContasAReceberOO.pas' {FBaixaContasaReceberOO},
  ANovaProposta in '..\mcrm\ANovaProposta.pas' {FNovaProposta},
  UnProposta in '..\mcrm\UnProposta.pas',
  ANovoProspect in '..\mcrm\ANovoProspect.pas' {FNovoProspect},
  AProspects in '..\mcrm\AProspects.pas' {FProspects},
  ANovaAgendaProspect in '..\mcrm\ANovaAgendaProspect.pas' {FNovaAgendaProspect},
  ANovoTelemarketingProspect in '..\mcrm\ANovoTelemarketingProspect.pas' {FNovoTelemarketingProspect},
  AProdutosProspect in '..\mcrm\AProdutosProspect.pas' {FProdutosProspect},
  AContatosProspect in '..\mcrm\AContatosProspect.pas' {FContatosProspect},
  AAlteraEstagioProposta in '..\mcrm\AAlteraEstagioProposta.pas' {FAlteraEstagioProposta},
  AMeioDivulgacao in '..\mcrm\AMeioDivulgacao.pas' {FMeioDivulgacao},
  AMotivoVenda in '..\mcrm\AMotivoVenda.pas' {FMotivoVenda},
  ANovoPedidoCompra in '..\mestoque\ANovoPedidoCompra.pas' {FNovoPedidoCompra},
  UnPedidoCompra in '..\mestoque\UnPedidoCompra.pas',
  APedidosCompraAberto in '..\mestoque\APedidosCompraAberto.pas' {FPedidosCompraAberto},
  ACompradores in '..\mestoque\ACompradores.pas' {FCompradores},
  ABaixaContasaPagarOO in '..\mfinanceiro\ABaixaContasaPagarOO.pas' {FBaixaContasaPagarOO},
  AChequesOO in '..\mfinanceiro\AChequesOO.pas' {FChequesOO},
  ANovoLembrete in '..\mpontaloja\ANovoLembrete.pas' {FNovoLembrete},
  UnLembrete in '..\mpontaloja\UnLembrete.pas',
  ASelecionarUsuarios in '..\mpontaloja\ASelecionarUsuarios.pas' {FSelecionarUsuarios},
  ANovoEmailContasAReceber in '..\mfinanceiro\ANovoEmailContasAReceber.pas' {FNovoEmailContasAReceber},
  undespesas in '..\mfinanceiro\undespesas.pas',
  ACentroCusto in '..\mfinanceiro\ACentroCusto.pas' {FCentroCusto},
  AContasAPagar in '..\mfinanceiro\AContasAPagar.pas' {FContasaPagar},
  adespesas in '..\mfinanceiro\adespesas.pas' {FDespesas},
  ageradespesasfixas in '..\mfinanceiro\ageradespesasfixas.pas' {FGeraDespesasFixas},
  AManutencaoCP in '..\mfinanceiro\AManutencaoCP.pas' {FManutencaoCP},
  ANovoContasaPagar in '..\mfinanceiro\ANovoContasaPagar.pas' {FNovoContasAPagar},
  AGerarFracaoOPMaquinasCorte in '..\mpontaloja\AGerarFracaoOPMaquinasCorte.pas' {FGerarFracaoOPMaquinasCorte},
  UnCaixa in '..\mcaixa\UnCaixa.pas',
  ASetores in '..\mcrm\ASetores.pas' {FSetores},
  ABaixaConsumoProduto in '..\mestoque\ABaixaConsumoProduto.pas' {FBaixaConsumoProduto},
  AAlteraEstagioPedidoCompra in '..\mestoque\AAlteraEstagioPedidoCompra.pas' {FAlteraEstagioPedidoCompra},
  AMostraParPagarOO in '..\mfinanceiro\AMostraParPagarOO.pas' {FMostraParPagarOO},
  ASolicitacaoCompras in '..\mestoque\ASolicitacaoCompras.pas' {FSolicitacaoCompra},
  ANovaSolicitacaoCompra in '..\mestoque\ANovaSolicitacaoCompra.pas' {FNovaSolicitacaoCompras},
  AAlteraEstagioOrcamento in '..\mestoque\AAlteraEstagioOrcamento.pas' {FAlteraEstagioOrcamentoCompra},
  ASolicitacaoCompraProdutosPendentes in '..\mestoque\ASolicitacaoCompraProdutosPendentes.pas' {FOrcamentoCompraProdutosPendentes},
  APedidoCompra in '..\mestoque\APedidoCompra.pas' {FPedidoCompra},
  ANovoSetor in '..\mcrm\ANovoSetor.pas' {FNovoSetor},
  ATarefas in '..\mpontaloja\ATarefas.pas' {FTarefas},
  ANovaTarefa in '..\mpontaloja\ANovaTarefa.pas' {FNovaTarefa},
  ATipoProposta in '..\mcrm\ATipoProposta.pas' {FTipoProposta},
  UnZebra in '..\magerais\UnZebra.pas',
  AMontaKitBastidor in '..\mestoque\AMontaKitBastidor.pas' {FMontaKitBastidor},
  APropostasCliente in '..\mcrm\APropostasCliente.pas' {FPropostasCliente},
  ARelOrdemSerra in '..\mestoque\ARelOrdemSerra.pas' {FRelOrdemSerra},
  ACompensaCheque in '..\mfinanceiro\ACompensaCheque.pas' {FCompensaCheque},
  ABaixaProdutosChamado in 'ABaixaProdutosChamado.pas' {FBaixaProdutosChamado},
  ACreditoCliente in '..\mfinanceiro\ACreditoCliente.pas' {FCreditoCliente},
  AConsultaChamadoParcial in 'AConsultaChamadoParcial.pas' {FConsultaChamadoParcial},
  AAlteraEstagioFracaoOP in '..\mestoque\AAlteraEstagioFracaoOP.pas' {FAlteraEstagioFracaoOP},
  UnSolicitacaoCompra in '..\mestoque\UnSolicitacaoCompra.pas',
  ANovoOrcamentoCompra in '..\mestoque\ANovoOrcamentoCompra.pas' {FNovoOrcamentoCompra},
  unEMarketing in '..\mpontaloja\unEMarketing.pas',
  UnOrcamentoCompra in '..\mestoque\UnOrcamentoCompra.pas',
  AHorarioTrabalho in '..\mestoque\AHorarioTrabalho.pas' {FHorarioTrabalho},
  AFaixaEtaria in '..\mpontaloja\AFaixaEtaria.pas' {FFaixaEtaria},
  AMarcas in '..\mpontaloja\AMarcas.pas' {FMarca},
  AMetasVendedor in '..\mpontaloja\AMetasVendedor.pas' {FMetasVendedor},
  AConsultaLogSeparacaoConsumo in '..\mestoque\AConsultaLogSeparacaoConsumo.pas' {FConsultaLogSeparacaoConsumo},
  dmRave in '..\magerais\dmRave.pas' {dtRave: TDSServerModule},
  UnRave in '..\magerais\UnRave.pas',
  UnNFe in '..\mfaturamento\UnNFe.pas',
  AComposicoes in '..\mestoque\AComposicoes.pas' {FComposicoes},
  ANovaComposicao in '..\mestoque\ANovaComposicao.pas' {FNovaComposicao},
  ANovaCondicaoPagamento in '..\mpontaloja\ANovaCondicaoPagamento.pas' {FNovaCondicaoPagamento},
  ACondicaoPagamento in '..\mpontaloja\ACondicaoPagamento.pas' {FCondicaoPagamento},
  UnCondicaoPagamento in '..\mfinanceiro\UnCondicaoPagamento.pas',
  AProjetos in '..\mfinanceiro\AProjetos.pas' {FProjetos},
  AGeraFracaoOPProdutos in '..\mestoque\AGeraFracaoOPProdutos.pas' {FGeraFracaoOPProdutos},
  ACorpoEmailProposta in '..\mcrm\ACorpoEmailProposta.pas' {FCorpoEmailProposta},
  AMostraEstoqueChapas in '..\mestoque\AMostraEstoqueChapas.pas' {FMostraEstoqueChapas},
  UnDRave in '..\magerais\UnDRave.pas',
  UnProgramador1 in '..\magerais\UnProgramador1.pas',
  AAcessorio in '..\mestoque\AAcessorio.pas' {FAcessorio},
  AAplicacao in '..\mcrm\AAplicacao.pas' {FAplicacao},
  AAdicionaProdutosTerceirizacao in '..\mestoque\AAdicionaProdutosTerceirizacao.pas' {FAdicionaProdutosTerceirizacao},
  ALocalizaFracaoOP in '..\mestoque\ALocalizaFracaoOP.pas' {FLocalizaFracaoOP},
  ANovoEstagio in '..\mestoque\ANovoEstagio.pas' {FNovoEstagio},
  AOPProdutosAReservar in '..\mestoque\AOPProdutosAReservar.pas' {FOPProdutosAReservar},
  AMapaCompras in '..\mestoque\AMapaCompras.pas' {FMapaCompras},
  AOrcamentoCompras in '..\mestoque\AOrcamentoCompras.pas' {FOrcamentoCompras},
  ASelecionarFornecedorMapaCompras in '..\mestoque\ASelecionarFornecedorMapaCompras.pas' {FSelecionaFornecedorMapaCompras},
  AComandoFiscalFiltro in '..\mefiPDV\AComandoFiscalFiltro.pas' {FComandoFiscalFiltro},
  AMenuFiscalECF in '..\mefiPDV\AMenuFiscalECF.pas' {FMenuFiscalECF},
  UnSpedFiscal in '..\mfaturamento\UnSpedFiscal.pas',
  ATipoMateriaPrima in '..\mcrm\ATipoMateriaPrima.pas' {FTipoMateriaPrima},
  AFacas in '..\mestoque\AFacas.pas' {FFacas},
  AMostraObservacaoPedido in '..\mpontaloja\AMostraObservacaoPedido.pas' {FMostraObservacaoPedido},
  AProdutosClientePeca in '..\mpontaloja\AProdutosClientePeca.pas' {FProdutosClientePeca},
  ATelefonesCliente in '..\mpontaloja\ATelefonesCliente.pas' {FTelefoneCliente},
  AProdutosProduzidos in 'AProdutosProduzidos.pas' {FProdutosProduzidos},
  AReciboLocacao in '..\mpontaloja\AReciboLocacao.pas' {FReciboLocacao},
  ANovoProdutoPro in '..\mestoque\ANovoProdutoPro.pas' {FNovoProdutoPro},
  AConhecimentoTransporte in '..\mestoque\AConhecimentoTransporte.pas' {FConhecimentoTransporte},
  AFaccionistas in '..\mestoque\AFaccionistas.pas' {FFaccionistas},
  AFracaoFaccionista in '..\mestoque\AFracaoFaccionista.pas' {FFracaoFaccionista},
  ANovaFaccionista in '..\mestoque\ANovaFaccionista.pas' {FNovaFaccionista},
  ANovaFracaoFaccionista in '..\mestoque\ANovaFracaoFaccionista.pas' {FNovaFracaoFaccionista},
  ARetornoFracaoFaccionista in '..\mestoque\ARetornoFracaoFaccionista.pas' {FRetornoFracaoFaccionista},
  ATerceiroFaccionista in '..\mestoque\ATerceiroFaccionista.pas' {FTerceiroFaccionista};

{$R *.RES}

  begin
  RPDefine.DataID := IntToStr(Application.Handle);
  Application.Initialize;
  Application.HelpFile := '';
  Application.CreateForm(TFPrincipal, FPrincipal);
  if ParamCount = 0 then  // verifica se a parametros da base de dados
    varia.ParametroBase := 'SisCorp'
  else
    varia.ParametroBase := CopiaAteChar(ParamStr(1),'/');

  if FPrincipal.AbreBaseDados(ParamStr(1)) then  // caso naum abra a base de dados
  begin
    if Sistema.ValidaSerieSistema then
    begin
      FAbertura := TFAbertura.create(application);
      if (ParamStr(2) <> '') and (ParamStr(3) <> '') then    // caso a senha e ususario venham como parametro
      begin
        if FAbertura.VerificaSenha(Uppercase(ParamStr(2)),Uppercase(ParamStr(3)), ParamStr(4), ParamStr(5)) then // verifica a senha
           FAbertura.close
        else
           FAbertura.ShowModal;
        end
        else
          FAbertura.ShowModal;

        if Varia.StatusAbertura = 'CANCELADO' then
          FPrincipal.close
        else
          Application.Run;
    end
    else
      FPrincipal.close;
  end;
end.
