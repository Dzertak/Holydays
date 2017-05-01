﻿object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 379
  Width = 657
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password="";Data Source=DateBas' +
      'e.mdb;Persist Security Info=True'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 8
    Top = 8
  end
  object dsExecutors: TDataSource
    DataSet = qryExecutors
    Left = 40
    Top = 64
  end
  object qryExecutors: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1080)
    Left = 152
    Top = 64
  end
  object dsServiceExecutors: TDataSource
    DataSet = qryServiceExecutors
    Left = 40
    Top = 120
  end
  object qryServiceExecutors: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1059#1089#1083#1091#1075#1080'_'#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1077#1081)
    Left = 152
    Top = 120
    object qryServiceExecutorsКод_услуги: TAutoIncField
      FieldName = #1050#1086#1076'_'#1091#1089#1083#1091#1075#1080
      ReadOnly = True
    end
    object qryServiceExecutorsКод_исполнителя: TIntegerField
      FieldName = #1050#1086#1076'_'#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103
    end
    object qryServiceExecutorsНазвание: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
      Size = 255
    end
    object qryServiceExecutorsСтоимость: TIntegerField
      FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
    end
  end
  object dsSuppliers: TDataSource
    DataSet = qrySuppliers
    Left = 40
    Top = 176
  end
  object qrySuppliers: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1055#1086#1089#1090#1072#1074#1097#1080#1082#1080)
    Left = 152
    Top = 184
  end
  object dsServiceSuppliers: TDataSource
    DataSet = qryServiceSuppliers
    Left = 40
    Top = 240
  end
  object qryServiceSuppliers: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1059#1089#1083#1091#1075#1080'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074)
    Left = 152
    Top = 240
  end
  object dsCustomers: TDataSource
    DataSet = qryCustomers
    Left = 40
    Top = 304
  end
  object qryCustomers: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from '#1047#1072#1082#1072#1079#1095#1080#1082#1080)
    Left = 152
    Top = 304
  end
  object dsHolydays: TDataSource
    DataSet = qryHolydays
    Left = 272
    Top = 64
  end
  object qryHolydays: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select '#1087'.*, '#1090#1087'.'#1053#1072#1079#1074#1072#1085#1080#1077' as '#1058#1080#1087'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072', '#1079'.'#1060#1048#1054' as '#1047#1072#1082#1072#1079#1095#1080#1082
      'From '#1055#1088#1072#1079#1076#1085#1080#1082#1080' '#1087', '#1058#1080#1087#1099'_'#1087#1088#1072#1079#1076#1085#1080#1082#1086#1074' '#1090#1087', '#1047#1072#1082#1072#1079#1095#1080#1082#1080' '#1079
      'Where '#1087'.'#1050#1086#1076'_'#1058#1080#1087#1072'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072'='#1090#1087'.'#1050#1086#1076'_'#1090#1080#1087#1072'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072' '
      'AND '#1087'.'#1050#1086#1076'_'#1079#1072#1082#1072#1079#1095#1080#1082#1072'='#1079'.'#1050#1086#1076'_'#1079#1072#1082#1072#1079#1095#1080#1082#1072'; ')
    Left = 360
    Top = 64
  end
  object dsOrderExecutors: TDataSource
    DataSet = qryOrderExecutors
    Left = 272
    Top = 128
  end
  object qryOrderExecutors: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select '#1091'.'#1053#1072#1079#1074#1072#1085#1080#1077' as '#1053#1072#1079#1074#1072#1085#1080#1077', '#1091'.'#1057#1090#1086#1080#1084#1086#1089#1090#1100' as '#1057#1090#1086#1080#1084#1086#1089#1090#1100
      'From '#1059#1089#1083#1091#1075#1080'_'#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1077#1081' '#1091', '#1047#1072#1082#1072#1079#1099'_'#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1077#1081' '#1079', '#1055#1088#1072#1079#1076#1085#1080#1082#1080' '#1087
      'Where '#1087'.'#1050#1086#1076'_'#1055#1088#1072#1079#1076#1085#1080#1082#1072'='#1079'.'#1050#1086#1076'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072
      ' AND '#1079'.'#1050#1086#1076'_'#1091#1089#1083#1091#1075#1080'='#1091'.'#1050#1086#1076'_'#1091#1089#1083#1091#1075#1080
      'AND '#1087'.'#1050#1086#1076'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072'=1;')
    Left = 368
    Top = 128
  end
  object dsOrderSuppliers: TDataSource
    DataSet = qryOrderSuppliers
    Left = 272
    Top = 192
  end
  object qryOrderSuppliers: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select '#1091'.'#1053#1072#1079#1074#1072#1085#1080#1077' as '#1053#1072#1079#1074#1072#1085#1080#1077', '#1091'.'#1057#1090#1086#1080#1084#1086#1089#1090#1100' as '#1057#1090#1086#1080#1084#1086#1089#1090#1100
      'From '#1059#1089#1083#1091#1075#1080'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074' '#1091', '#1047#1072#1082#1072#1079#1099'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074' '#1079', '#1055#1088#1072#1079#1076#1085#1080#1082#1080' '#1087
      'Where '#1087'.'#1050#1086#1076'_'#1055#1088#1072#1079#1076#1085#1080#1082#1072'='#1079'.'#1050#1086#1076'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072
      ' AND '#1079'.'#1050#1086#1076'_'#1091#1089#1083#1091#1075#1080'='#1091'.'#1050#1086#1076'_'#1091#1089#1083#1091#1075#1080
      'AND '#1087'.'#1050#1086#1076'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072'=1;')
    Left = 368
    Top = 192
  end
  object qrySQL: TADOQuery
    Connection = con1
    Parameters = <>
    Left = 72
    Top = 16
  end
  object cmd1: TADOCommand
    Connection = con1
    Parameters = <>
    Left = 152
    Top = 16
  end
end
