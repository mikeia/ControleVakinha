object dm: Tdm
  OldCreateOrder = False
  Height = 459
  Width = 620
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\mikei\OneDrive\Documentos\ControledeVaquinha\b' +
        'anco\BASE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 496
    Top = 32
  end
  object qryUltimo: TFDQuery
    Connection = Conexao
    Left = 496
    Top = 112
  end
  object qrySaldo: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from conta')
    Left = 464
    Top = 192
    object qrySaldoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySaldoSALDO: TFMTBCDField
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 18
      Size = 2
    end
  end
end
