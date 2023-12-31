object dmConsulta: TdmConsulta
  OnCreate = DataModuleCreate
  Height = 255
  Width = 543
  PixelsPerInch = 120
  object srcConsultaFuncionario: TDataSource
    DataSet = qryConsultaFuncionario
    Left = 162
    Top = 111
  end
  object qryConsultaFuncionario: TFDQuery
    Connection = dmConexao.Connection
    SQL.Strings = (
      'SELECT '
      '  F.IDFUNCIONARIO,'
      '  F.IDEMPRESA,'
      '  E.NMEMPRESA,'
      '  F.NMFUNCIONARIO,'
      '  F.NUCPF,'
      '  F.NURG,'
      '  F.DTNASCIMENTO,'
      '  F.TXEMAIL,'
      '  F.NUCARTEIRATRAB,'
      '  F.NUTITULOELEITOR,'
      '  F.NUCARTEIRAMOTORISTA,'
      '  F.TPCATERORIA,'
      '  F.DTVALIDADECARTEIRAMOT,'
      '  F.TLRESIDENCIAL,'
      '  F.TLCELULAR,'
      '  F.TLCONTATO,'
      '  F.NMCONTATO,'
      '  F.DTCONTRATACAO,'
      '  F.DTDEMISSAO,'
      '  F.DTCADASTRO,'
      '  F.STATIVO,'
      '  F.TXOBS,'
      '  F.NMENDERECO,'
      '  F.NUENDERECO,'
      '  F.NMBAIRRO,'
      '  F.IDCIDADE,'
      '  C.NMCIDADE,'
      '  F.IDUF,'
      '  U.SGESTADO, '
      '  F.NUCEP,'
      '  F.STEXCLUIDO,'
      '  F.DTEXCLUIDO'
      'FROM'
      '  CADFUNCIONARIOS F'
      '  LEFT JOIN CADEMPRESA E ON F.IDEMPRESA = E.IDEMPRESA '
      '  LEFT JOIN CADCIDADE C ON F.IDCIDADE = C.IDCIDADE '
      '  LEFT JOIN CADUF U ON F.IDUF = U.IDUF'
      'WHERE'
      '  F.STEXCLUIDO <> '#39'S'#39
      '  AND'
      '  F.IDEMPRESA = :IDEMPRESA'
      'ORDER BY '
      '  F.NMFUNCIONARIO')
    Left = 161
    Top = 42
    ParamData = <
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 99
      end>
  end
  object qryEmpresa: TFDQuery
    AfterScroll = qryEmpresaAfterScroll
    Connection = dmConexao.Connection
    SQL.Strings = (
      'SELECT'
      '  IDEMPRESA,'
      '  NMEMPRESA'
      'FROM'
      '  CADEMPRESA'
      'ORDER BY'
      '  NMEMPRESA')
    Left = 345
    Top = 42
  end
  object srcEmpresa: TDataSource
    DataSet = qryEmpresa
    Left = 345
    Top = 111
  end
end
