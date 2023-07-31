inherited frmCadastroEndereco: TfrmCadastroEndereco
  Caption = 'Endere'#231'o'
  OnCreate = FormCreate
  ExplicitLeft = 2
  ExplicitTop = 2
  TextHeight = 15
  inherited grdCadastro: TDBGrid
    Top = 11
    Height = 344
    Anchors = []
    DataSource = dmCadastro.srcCadastroEndereco
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDENDERECO'
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMTITULAR'
        Title.Caption = 'TITULAR'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMEMPRESA'
        Title.Caption = 'EMPRESA'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMENDERECO'
        Title.Caption = 'LOGRADOURO'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUENDERECO'
        Title.Caption = 'N'#186
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMBAIRRO'
        Title.Caption = 'BAIRRO'
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NMCIDADE'
        Title.Caption = 'CIDADE'
        Width = 112
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SGESTADO'
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Width = 46
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'STATIVO'
        Title.Alignment = taCenter
        Title.Caption = 'ATIVO'
        Visible = True
      end>
  end
  inherited pnlOpcoes: TPanel
    ExplicitTop = 356
    inherited btnExcluir: TBitBtn
      Left = 206
      ExplicitLeft = 206
    end
  end
end
