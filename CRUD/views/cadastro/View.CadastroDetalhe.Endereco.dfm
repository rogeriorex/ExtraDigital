inherited frmCadastroEnderecoDetalhe: TfrmCadastroEnderecoDetalhe
  Caption = 'Endere'#231'o'
  ClientWidth = 594
  ExplicitWidth = 606
  TextHeight = 15
  inherited pnlOpcoes: TPanel
    Width = 594
    TabOrder = 2
    ExplicitWidth = 588
    inherited btnSalvar: TBitBtn
      Top = 14
      ExplicitLeft = 412
      ExplicitTop = 14
    end
    inherited btnCancelar: TBitBtn
      Left = 499
      Top = 14
      ExplicitLeft = 493
      ExplicitTop = 14
    end
  end
  inherited pnlCadastro: TPanel
    Left = 4
    Top = 6
    Width = 587
    Height = 327
    ExplicitLeft = 4
    ExplicitTop = 6
    ExplicitWidth = 587
    ExplicitHeight = 327
    object lblIDENDERECO: TLabel
      Left = 64
      Top = 37
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = ID_ENDERECO
    end
    object lblIDTITULAR: TLabel
      Left = 136
      Top = 37
      Width = 33
      Height = 15
      Caption = 'Titular'
    end
    object lblIDEMPRESA: TLabel
      Left = 64
      Top = 93
      Width = 45
      Height = 15
      Caption = 'Empresa'
    end
    object lblNMENDERECO: TLabel
      Left = 64
      Top = 152
      Width = 62
      Height = 15
      Caption = 'Logradouro'
      FocusControl = NMENDERECO
    end
    object lblNUENDERECO: TLabel
      Left = 489
      Top = 147
      Width = 14
      Height = 15
      Caption = 'N'#186
      FocusControl = NUENDERECO
    end
    object lblNMBAIRRO: TLabel
      Left = 64
      Top = 213
      Width = 31
      Height = 15
      Caption = 'Bairro'
      FocusControl = NMBAIRRO
    end
    object lblIDCIDADE: TLabel
      Left = 287
      Top = 213
      Width = 37
      Height = 15
      Caption = 'Cidade'
    end
    object lblIDUF: TLabel
      Left = 287
      Top = 274
      Width = 14
      Height = 15
      Caption = 'UF'
    end
    object lblNUCEP: TLabel
      Left = 64
      Top = 274
      Width = 21
      Height = 15
      Caption = 'CEP'
      FocusControl = NUCEP
    end
    object ID_ENDERECO: TDBEdit
      Left = 64
      Top = 53
      Width = 39
      Height = 23
      DataField = 'IDENDERECO'
      DataSource = dmCadastro.srcCadastroEndereco
      TabOrder = 0
    end
    object NMENDERECO: TDBEdit
      Left = 64
      Top = 168
      Width = 398
      Height = 23
      DataField = 'NMENDERECO'
      DataSource = dmCadastro.srcCadastroEndereco
      TabOrder = 3
    end
    object NUENDERECO: TDBEdit
      Left = 489
      Top = 168
      Width = 39
      Height = 23
      DataField = 'NUENDERECO'
      DataSource = dmCadastro.srcCadastroEndereco
      TabOrder = 4
    end
    object NMBAIRRO: TDBEdit
      Left = 64
      Top = 229
      Width = 193
      Height = 23
      DataField = 'NMBAIRRO'
      DataSource = dmCadastro.srcCadastroEndereco
      TabOrder = 5
    end
    object NUCEP: TDBEdit
      Left = 64
      Top = 290
      Width = 193
      Height = 23
      DataField = 'NUCEP'
      DataSource = dmCadastro.srcCadastroEndereco
      TabOrder = 7
    end
    object IDTITULAR: TDBLookupComboBox
      Left = 136
      Top = 53
      Width = 392
      Height = 23
      DataField = 'IDTITULAR'
      DataSource = dmCadastro.srcCadastroEndereco
      KeyField = 'IDTITULAR'
      ListField = 'NMTITULAR'
      ListSource = dmCadastro.srcTitular
      TabOrder = 1
    end
    object IDEMPRESA: TDBLookupComboBox
      Left = 64
      Top = 110
      Width = 464
      Height = 23
      DataField = 'IDEMPRESA'
      DataSource = dmCadastro.srcCadastroEndereco
      KeyField = 'IDEMPRESA'
      ListField = 'NMEMPRESA'
      ListSource = dmCadastro.srcEmpresa
      TabOrder = 2
    end
    object IDCIDADE: TDBLookupComboBox
      Left = 287
      Top = 229
      Width = 241
      Height = 23
      DataField = 'IDCIDADE'
      DataSource = dmCadastro.srcCadastroEndereco
      KeyField = 'IDCIDADE'
      ListField = 'NMCIDADE'
      ListSource = dmCadastro.srcCidade
      TabOrder = 6
    end
    object IDUF: TDBLookupComboBox
      Left = 287
      Top = 290
      Width = 64
      Height = 23
      DataField = 'IDUF'
      DataSource = dmCadastro.srcCadastroEndereco
      KeyField = 'IDUF'
      ListField = 'SGESTADO'
      ListSource = dmCadastro.srcUF
      TabOrder = 8
    end
  end
  object STATIVO: TDBCheckBox
    Left = 66
    Top = 22
    Width = 53
    Height = 17
    Caption = 'Ativo'
    DataField = 'STATIVO'
    DataSource = dmCadastro.srcCadastroEndereco
    TabOrder = 0
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    OnClick = STATIVOClick
  end
end
