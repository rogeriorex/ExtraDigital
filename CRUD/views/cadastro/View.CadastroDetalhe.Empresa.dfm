inherited frmCadastroEmpresaDetalhe: TfrmCadastroEmpresaDetalhe
  Caption = 'Empresa'
  TextHeight = 15
  inherited pnlOpcoes: TPanel
    TabOrder = 2
    inherited btnSalvar: TBitBtn
      Left = 409
      ExplicitLeft = 403
    end
    inherited btnCancelar: TBitBtn
      Left = 505
      ExplicitLeft = 499
    end
  end
  inherited pnlCadastro: TPanel
    Left = 0
    Top = 2
    Width = 595
    ExplicitLeft = 0
    ExplicitTop = 2
    ExplicitWidth = 595
    object lblIDEMPRESA: TLabel
      Left = 63
      Top = 37
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = ID_EMPRESA
    end
    object lblNMEMPRESA: TLabel
      Left = 136
      Top = 37
      Width = 33
      Height = 15
      Caption = 'Nome'
      FocusControl = NMEMPRESA
    end
    object lblNUCNPJ: TLabel
      Left = 63
      Top = 93
      Width = 27
      Height = 15
      Caption = 'CNPJ'
      FocusControl = NUCNPJ
    end
    object lblNUINSCRICAO: TLabel
      Left = 312
      Top = 93
      Width = 47
      Height = 15
      Caption = 'Inscri'#231#227'o'
      FocusControl = NUINSCRICAO
    end
    object lblTLCOMERCIAL: TLabel
      Left = 63
      Top = 213
      Width = 44
      Height = 15
      Caption = 'Telefone'
      FocusControl = TLCOMERCIAL
    end
    object lblTLCELULAR: TLabel
      Left = 240
      Top = 213
      Width = 37
      Height = 15
      Caption = 'Celular'
      FocusControl = TLCELULAR
    end
    object lblTXEMAIL: TLabel
      Left = 63
      Top = 152
      Width = 34
      Height = 15
      Caption = 'E-Mail'
      FocusControl = TXEMAIL
    end
    object ID_EMPRESA: TDBEdit
      Left = 63
      Top = 53
      Width = 39
      Height = 23
      DataField = 'IDEMPRESA'
      DataSource = dmCadastro.srcCadastroEmpresa
      TabOrder = 0
    end
    object NMEMPRESA: TDBEdit
      Left = 136
      Top = 53
      Width = 390
      Height = 23
      DataField = 'NMEMPRESA'
      DataSource = dmCadastro.srcCadastroEmpresa
      TabOrder = 1
    end
    object NUCNPJ: TDBEdit
      Left = 63
      Top = 109
      Width = 214
      Height = 23
      DataField = 'NUCNPJ'
      DataSource = dmCadastro.srcCadastroEmpresa
      TabOrder = 2
    end
    object NUINSCRICAO: TDBEdit
      Left = 312
      Top = 109
      Width = 214
      Height = 23
      DataField = 'NUINSCRICAO'
      DataSource = dmCadastro.srcCadastroEmpresa
      TabOrder = 3
    end
    object TLCOMERCIAL: TDBEdit
      Left = 63
      Top = 229
      Width = 140
      Height = 23
      DataField = 'TLCOMERCIAL'
      DataSource = dmCadastro.srcCadastroEmpresa
      TabOrder = 5
    end
    object TLCELULAR: TDBEdit
      Left = 240
      Top = 229
      Width = 140
      Height = 23
      DataField = 'TLCELULAR'
      DataSource = dmCadastro.srcCadastroEmpresa
      TabOrder = 6
    end
    object TXEMAIL: TDBEdit
      Left = 63
      Top = 168
      Width = 463
      Height = 23
      DataField = 'TXEMAIL'
      DataSource = dmCadastro.srcCadastroEmpresa
      TabOrder = 4
    end
  end
  object STATIVO: TDBCheckBox
    Left = 65
    Top = 22
    Width = 53
    Height = 17
    Caption = 'Ativo'
    DataField = 'STATIVO'
    DataSource = dmCadastro.srcCadastroEmpresa
    TabOrder = 0
    ValueChecked = 'S'
    ValueUnchecked = 'N'
  end
end
