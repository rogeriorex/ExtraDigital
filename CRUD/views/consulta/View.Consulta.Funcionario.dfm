inherited frmConsultaFuncionario: TfrmConsultaFuncionario
  Caption = 'Consulta de Funcion'#225'rio'
  ClientHeight = 405
  ClientWidth = 914
  OnCreate = FormCreate
  DesignSize = (
    914
    405)
  TextHeight = 15
  inherited pnlOpcoes: TPanel
    Top = 356
    Width = 914
    DesignSize = (
      910
      45)
    inherited btnFechar: TBitBtn
      Left = 822
      ExplicitLeft = 822
    end
  end
  inherited grdConsulta: TDBGrid
    Width = 891
    Height = 288
    DataSource = dmConsulta.srcConsultaFuncionario
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'IDFUNCIONARIO'
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 40
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
        FieldName = 'NMFUNCIONARIO'
        Title.Caption = 'FUNCIONARIO'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUCPF'
        Title.Caption = 'CPF'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DTNASCIMENTO'
        Title.Caption = 'NASCIMENTO'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TXEMAIL'
        Title.Caption = 'E-MAIL'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUCARTEIRATRAB'
        Title.Caption = 'CARTEIRA'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TLCELULAR'
        Title.Caption = 'CELULAR'
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'STATIVO'
        Title.Alignment = taCenter
        Title.Caption = 'ATIVO'
        Width = 54
        Visible = True
      end>
  end
end
