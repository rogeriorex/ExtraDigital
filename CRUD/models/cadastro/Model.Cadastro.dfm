object dmCadastro: TdmCadastro
  OnCreate = DataModuleCreate
  Height = 479
  Width = 669
  PixelsPerInch = 120
  object srcCadastroEndereco: TDataSource
    DataSet = qryCadastroEndereco
    Left = 300
    Top = 190
  end
  object qryCadastroEmpresa: TFDQuery
    AfterScroll = qryCadastroEmpresaAfterScroll
    Connection = dmConexao.Connection
    UpdateObject = upCadastroEmpresa
    SQL.Strings = (
      'SELECT'
      '  *  '
      'FROM'
      '  CADEMPRESA'
      'WHERE'
      '  STEXCLUIDO <> '#39'S'#39' '
      'ORDER BY'
      '  NMEMPRESA')
    Left = 104
    Top = 18
  end
  object srcCadastroEmpresa: TDataSource
    DataSet = qryCadastroEmpresa
    Left = 104
    Top = 190
  end
  object qryCadastroEmpresaEndereco: TFDQuery
    MasterSource = srcCadastroEmpresa
    Connection = dmConexao.Connection
    FetchOptions.AssignedValues = [evCache]
    FetchOptions.Cache = [fiBlobs, fiMeta]
    SQL.Strings = (
      'SELECT '
      '  D.IDENDERECO AS " ",'
      '  T.NMTITULAR AS TITULAR,'
      '  D.NMENDERECO AS LOGRADOURO,'
      '  D.NUENDERECO AS "N'#186'",'
      '  D.NMBAIRRO AS BAIRRO,'
      '  C.NMCIDADE AS CIDADE,'
      '  U.SGESTADO AS UF'
      'FROM '
      '  CADENDERECOS D'
      '  INNER JOIN CADEMPRESA E ON (D.IDEMPRESA = E.IDEMPRESA)'
      '  LEFT JOIN CADTITULAR T ON (D.IDTITULAR = T.IDTITULAR)'
      '  LEFT JOIN CADCIDADE C ON (D.IDCIDADE = C.IDCIDADE)'
      '  LEFT JOIN CADUF U ON (D.IDUF = U.IDUF)'
      'WHERE'
      '  E.IDEMPRESA = :IDEMPRESA'
      '  AND'
      '  D.STATIVO = '#39'S'#39)
    Left = 103
    Top = 276
    ParamData = <
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
  end
  object srcCadastroEmpresaEndereco: TDataSource
    DataSet = qryCadastroEmpresaEndereco
    Left = 104
    Top = 362
  end
  object upCadastroEmpresa: TFDUpdateSQL
    Connection = dmConexao.Connection
    InsertSQL.Strings = (
      'INSERT INTO CADEMPRESA ('
      '  IDEMPRESA, NMEMPRESA, NUCNPJ, NUINSCRICAO, STATIVO,'
      '  DTCADASTRO, DTABERTURA, TLCOMERCIAL, TLCELULAR,'
      '  TXOBS, TXEMAIL, STEXCLUIDO, DTEXCLUIDO'
      ') VALUES ('
      '  :NEW_IDEMPRESA, :NEW_NMEMPRESA, :NEW_NUCNPJ, :NEW_NUINSCRICAO,'
      
        '  '#39'S'#39', CURRENT_DATE, CURRENT_DATE, :NEW_TLCOMERCIAL, :NEW_TLCELU' +
        'LAR,'
      '  123, :NEW_TXEMAIL, '#39'N'#39', NULL'
      ');')
    ModifySQL.Strings = (
      'UPDATE CADEMPRESA'
      'SET NMEMPRESA = :NEW_NMEMPRESA, NUCNPJ = :NEW_NUCNPJ, '
      '  NUINSCRICAO = :NEW_NUINSCRICAO, STATIVO = :NEW_STATIVO, '
      '  DTABERTURA = :NEW_DTABERTURA, '
      '  TLCOMERCIAL = :NEW_TLCOMERCIAL, TLCELULAR = :NEW_TLCELULAR, '
      '  TXEMAIL = :NEW_TXEMAIL'
      'WHERE IDEMPRESA = :OLD_IDEMPRESA')
    DeleteSQL.Strings = (
      'UPDATE CADEMPRESA'
      'SET STEXCLUIDO = '#39'S'#39', DTEXCLUIDO = CURRENT_DATE'
      'WHERE IDEMPRESA = :OLD_IDEMPRESA'
      '')
    FetchRowSQL.Strings = (
      
        'SELECT IDEMPRESA, NMEMPRESA, NUCNPJ, NUINSCRICAO, STATIVO, DTCAD' +
        'ASTRO, '
      
        '  DTABERTURA, TLCOMERCIAL, TLCELULAR, TXOBS, TXEMAIL, STEXCLUIDO' +
        ', '
      '  DTEXCLUIDO'
      'FROM CADEMPRESA'
      'WHERE IDEMPRESA = :OLD_IDEMPRESA'
      'AND STEXCLUIDO = '#39'S'#39)
    Left = 104
    Top = 104
  end
  object qryCadastroEndereco: TFDQuery
    Connection = dmConexao.Connection
    SQL.Strings = (
      'SELECT'
      '  D.*,'
      '  T.NMTITULAR,'
      '  E.NMEMPRESA,'
      '  C.NMCIDADE,'
      '  U.SGESTADO'
      'FROM '
      '  CADENDERECOS D'
      '  LEFT JOIN CADEMPRESA E ON (D.IDEMPRESA = E.IDEMPRESA)'
      '  LEFT JOIN CADTITULAR T ON (D.IDTITULAR = T.IDTITULAR)'
      '  LEFT JOIN CADCIDADE C ON (D.IDCIDADE = C.IDCIDADE)'
      '  LEFT JOIN CADUF U ON (D.IDUF = U.IDUF)'
      'WHERE'
      '  D.STEXCLUIDO = '#39'N'#39
      '  OR'
      '  D.STEXCLUIDO IS NULL  '
      'ORDER BY'
      '  D.IDEMPRESA, D.IDTITULAR')
    Left = 299
    Top = 18
  end
  object upCadastroEndereco: TFDUpdateSQL
    Connection = dmConexao.Connection
    InsertSQL.Strings = (
      'INSERT INTO CADEMPRESA'
      '(IDEMPRESA, NMEMPRESA, NUCNPJ, NUINSCRICAO, '
      '  STATIVO, DTCADASTRO, DTABERTURA, TLCOMERCIAL, '
      '  TLCELULAR, TXEMAIL, STEXCLUIDO)'
      
        'VALUES (:NEW_IDEMPRESA, :NEW_NMEMPRESA, :NEW_NUCNPJ, :NEW_NUINSC' +
        'RICAO, '
      '  '#39'S'#39', CURRENT_DATE, :NEW_DTABERTURA, :NEW_TLCOMERCIAL, '
      '  :NEW_TLCELULAR, :NEW_TXEMAIL, '#39'N'#39')')
    ModifySQL.Strings = (
      'UPDATE CADEMPRESA'
      'SET NMEMPRESA = :NEW_NMEMPRESA, NUCNPJ = :NEW_NUCNPJ, '
      '  NUINSCRICAO = :NEW_NUINSCRICAO, STATIVO = :NEW_STATIVO, '
      '  DTABERTURA = :NEW_DTABERTURA, '
      '  TLCOMERCIAL = :NEW_TLCOMERCIAL, TLCELULAR = :NEW_TLCELULAR, '
      '  TXEMAIL = :NEW_TXEMAIL'
      'WHERE IDEMPRESA = :OLD_IDEMPRESA')
    DeleteSQL.Strings = (
      'UPDATE CADEMPRESA'
      'SET STEXCLUIDO = '#39'S'#39', DTEXCLUIDO = CURRENT_DATE'
      'WHERE IDEMPRESA = :OLD_IDEMPRESA'
      '')
    FetchRowSQL.Strings = (
      
        'SELECT IDEMPRESA, NMEMPRESA, NUCNPJ, NUINSCRICAO, STATIVO, DTCAD' +
        'ASTRO, '
      
        '  DTABERTURA, TLCOMERCIAL, TLCELULAR, TXOBS, TXEMAIL, STEXCLUIDO' +
        ', '
      '  DTEXCLUIDO'
      'FROM CADEMPRESA'
      'WHERE IDEMPRESA = :OLD_IDEMPRESA'
      'AND STEXCLUIDO = '#39'S'#39)
    Left = 299
    Top = 104
  end
  object qryUF: TFDQuery
    Connection = dmConexao.Connection
    SQL.Strings = (
      'SELECT IDUF, SGESTADO'
      'FROM   CADUF'
      'ORDER BY SGESTADO')
    Left = 562
    Top = 192
  end
  object srcUF: TDataSource
    DataSet = qryUF
    Left = 562
    Top = 279
  end
  object srcCidade: TDataSource
    DataSet = qryCidade
    Left = 562
    Top = 105
  end
  object srcEmpresa: TDataSource
    DataSet = qryEmpresa
    Left = 441
    Top = 276
  end
  object srcTitular: TDataSource
    DataSet = qryTitular
    Left = 441
    Top = 104
  end
  object qryCidade: TFDQuery
    Connection = dmConexao.Connection
    SQL.Strings = (
      'SELECT IDCIDADE, NMCIDADE'
      'FROM   CADCIDADE'
      'ORDER BY NMCIDADE')
    Left = 562
    Top = 18
  end
  object qryEmpresa: TFDQuery
    Connection = dmConexao.Connection
    SQL.Strings = (
      'SELECT IDEMPRESA, NMEMPRESA'
      'FROM   CADEMPRESA'
      'ORDER BY NMEMPRESA')
    Left = 441
    Top = 190
  end
  object qryTitular: TFDQuery
    Connection = dmConexao.Connection
    SQL.Strings = (
      'SELECT IDTITULAR, NMTITULAR'
      'FROM   CADTITULAR'
      'WHERE STEXCLUIDO <> '#39'S'#39
      'ORDER BY NMTITULAR')
    Left = 441
    Top = 18
  end
  object qryAux: TFDQuery
    MasterSource = srcCadastroEmpresa
    Connection = dmConexao.Connection
    SQL.Strings = (
      'SELECT *'
      'FROM   CADENDERECOS'
      '')
    Left = 441
    Top = 362
  end
end
