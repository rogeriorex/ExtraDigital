object dmConexao: TdmConexao
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 321
  Width = 273
  PixelsPerInch = 120
  object Connection: TFDConnection
    Params.Strings = (
      'Database=ExtraDigital'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 120
    Top = 56
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 120
    Top = 120
  end
  object FBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\fbclient.dll'
    Left = 120
    Top = 184
  end
end
