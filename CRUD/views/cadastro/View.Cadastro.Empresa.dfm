inherited frmCadastroEmpresa: TfrmCadastroEmpresa
  Caption = 'Empresa'
  ClientHeight = 414
  ClientWidth = 914
  OnCreate = FormCreate
  TextHeight = 15
  inherited grdCadastro: TDBGrid
    Top = 12
    Width = 887
    Height = 292
    DataSource = dmCadastro.srcCadastroEmpresa
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDEMPRESA'
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMEMPRESA'
        Title.Caption = 'NOME'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUCNPJ'
        Title.Caption = 'CNPJ'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUINSCRICAO'
        Title.Caption = 'INSCRI'#199#195'O'
        Width = 103
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TLCOMERCIAL'
        Title.Alignment = taCenter
        Title.Caption = 'TELEFONE'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TLCELULAR'
        Title.Alignment = taCenter
        Title.Caption = 'CELULAR'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TXEMAIL'
        Title.Caption = 'E-MAIL'
        Width = 162
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'STATIVO'
        Title.Alignment = taCenter
        Title.Caption = 'ATIVO'
        Width = 74
        Visible = True
      end>
  end
  inherited pnlOpcoes: TPanel
    Top = 365
    Width = 914
    inherited btnExcluir: TBitBtn
      Left = 206
      ExplicitLeft = 206
    end
    inherited btnFechar: TBitBtn
      Left = 806
    end
  end
  object grdEndereco: TDBGrid
    Left = 10
    Top = 312
    Width = 887
    Height = 43
    Anchors = [akLeft, akRight, akBottom]
    DataSource = dmCadastro.srcCadastroEmpresaEndereco
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = ' '
        Title.Alignment = taCenter
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TITULAR'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOGRADOURO'
        Width = 183
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'N'#186
        Title.Alignment = taCenter
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 155
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UF'
        Title.Alignment = taCenter
        Width = 68
        Visible = True
      end>
  end
end
