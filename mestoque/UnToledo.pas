Unit UnToledo;
{Verificado
-.edit;
}
Interface

  function AbrePorta(const Porta,BaudRate,DataBits,Paridade:Integer):Integer;stdcall;external 'P05.DLL';
  function FechaPorta:Integer;stdcall;external 'P05.DLL';
  function PegaPeso(const OpcaoEscrita:integer;Peso,Local:PAnsichar):Integer;stdcall;external 'P05.DLL';

const
  cSessaoConf   = 'CFG';
  cPorta        = 'Serial';
  cBaudRate     = 'BaudRate';
  cParidade     = 'Paridade';
  cDataBits     = 'DataBits';
  cDiponibi     = 'Diponibilizacao';
  cMinimizado   = 'Minimizado';
  cDirPESO      = 'DirPeso';
  cContinuo     = 'Continuo';
  cSucesso      = 1;
  cFalha        = 0;
  cArquivoINI   = 'P05.INI';


implementation



end.
