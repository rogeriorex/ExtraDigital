object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'CRUD'
  ClientHeight = 657
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mmnPrincipal
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 15
  object mmnPrincipal: TMainMenu
    Left = 392
    Top = 96
    object mniEmpresa: TMenuItem
      Caption = 'Empresa'
      OnClick = mniClick
    end
    object mniEndereco: TMenuItem
      Caption = 'Endere'#231'o'
      OnClick = mniClick
    end
    object mniFuncionario: TMenuItem
      Caption = 'Funcion'#225'rio'
      OnClick = mniClick
    end
  end
end
