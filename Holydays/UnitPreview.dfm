object FormPreview: TFormPreview
  Left = 0
  Top = 0
  Caption = 'FormPreview'
  ClientHeight = 397
  ClientWidth = 662
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object frxprvw1: TfrxPreview
    Left = 0
    Top = 0
    Width = 662
    Height = 397
    Align = alClient
    OutlineVisible = True
    OutlineWidth = 121
    ThumbnailVisible = False
    UseReportHints = True
    ExplicitWidth = 447
    ExplicitHeight = 100
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxDBDatasetYEAR'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1050#1086#1076'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072'='#1050#1086#1076'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072
      #1050#1086#1076'_'#1079#1072#1082#1072#1079#1095#1080#1082#1072'='#1050#1086#1076'_'#1079#1072#1082#1072#1079#1095#1080#1082#1072
      #1050#1086#1076'_'#1090#1080#1087#1072'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072'='#1050#1086#1076'_'#1090#1080#1087#1072'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072
      #1053#1072#1079#1074#1072#1085#1080#1077'='#1053#1072#1079#1074#1072#1085#1080#1077
      #1052#1077#1089#1090#1086'_'#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103'='#1052#1077#1089#1090#1086'_'#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
      #1044#1072#1090#1072'_'#1087#1088#1086#1074#1080#1076#1077#1085#1080#1103'='#1044#1072#1090#1072'_'#1087#1088#1086#1074#1080#1076#1077#1085#1080#1103
      #1057#1090#1086#1080#1084#1086#1089#1090#1100'='#1057#1090#1086#1080#1084#1086#1089#1090#1100
      #1054#1087#1083#1072#1095#1077#1085'='#1054#1087#1083#1072#1095#1077#1085
      #1058#1080#1087'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072'='#1058#1080#1087'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072
      #1047#1072#1082#1072#1079#1095#1080#1082'='#1047#1072#1082#1072#1079#1095#1080#1082)
    DataSource = DataModule1.dsHolydays
    BCDToCurrency = False
    Left = 152
    Top = 64
  end
  object frxrprt1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxprvw1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42871.998671041700000000
    ReportOptions.LastChange = 42872.029007662000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 232
    Top = 64
    Datasets = <
      item
        DataSet = frxdbdtst3
        DataSetName = 'frxDBDatasetSUM'
      end
      item
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDatasetYEAR'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 275.905690000000000000
          Top = 11.338590000000000000
          Width = 185.196970000000000000
          Height = 45.354360000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1090#1095#1105#1090' '#1079#1072' '#1075#1086#1076)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 207.874150000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst1
        DataSetName = 'frxDBDatasetYEAR'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000022000
          Width = 525.354670000000100000
          Height = 56.692950000000010000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetYEAR."'#1053#1072#1079#1074#1072#1085#1080#1077'"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 98.267780000000010000
          Width = 525.354670000000100000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetYEAR."'#1052#1077#1089#1090#1086'_'#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103'"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 188.976500000000000000
          Top = 117.165430000000000000
          Width = 525.354670000000100000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetYEAR."'#1044#1072#1090#1072'_'#1087#1088#1086#1074#1080#1076#1077#1085#1080#1103'"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Top = 60.472480000000010000
          Width = 525.354670000000100000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetYEAR."'#1058#1080#1087'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072'"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 188.976500000000000000
          Top = 79.370130000000010000
          Width = 525.354670000000100000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetYEAR."'#1047#1072#1082#1072#1079#1095#1080#1082'"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 188.976500000000000000
          Top = 136.063080000000000000
          Width = 525.354670000000100000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetYEAR."'#1057#1090#1086#1080#1084#1086#1089#1090#1100'"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 188.976500000000000000
          Top = 154.960730000000000000
          Width = 525.354670000000100000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetYEAR."'#1054#1087#1083#1072#1095#1077#1085'"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000022000
          Width = 185.196970000000000000
          Height = 56.692950000000010000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077':')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 60.472480000000010000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1058#1080#1087' '#1087#1088#1072#1079#1076#1085#1080#1082#1072':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000010000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1047#1072#1082#1072#1079#1095#1080#1082':')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 117.165430000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 154.960730000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1054#1087#1083#1072#1095#1077#1085':')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 98.267780000000010000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103':')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 676.535870000000000000
          Top = 177.637910000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 525.354670000000100000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 79.370130000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst3
        DataSetName = 'frxDBDatasetSUM'
        RowCount = 0
        object Memo17: TfrxMemoView
          Top = 7.559059999999988000
          Width = 60.472480000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1057#1091#1084#1072':')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 60.472480000000000000
          Top = 11.338590000000010000
          Width = 177.637910000000000000
          Height = 22.677180000000000000
          DataField = #1057#1091#1084#1072
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDatasetSUM."'#1057#1091#1084#1072'"]')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object frxpdfxprt1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 312
    Top = 64
  end
  object frxdbdtst2: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataModule1.dsHolydays
    BCDToCurrency = False
    Left = 144
    Top = 152
  end
  object frxrprt2: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxprvw1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42872.031884780100000000
    ReportOptions.LastChange = 42872.031884780100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 224
    Top = 152
    Datasets = <
      item
        DataSet = frxdbdtst2
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxdbdtst3
        DataSetName = 'frxDBDatasetSUM'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 200.315090000000000000
          Top = 22.677180000000000000
          Width = 336.378170000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1054#1090#1095#1105#1090' '#1087#1086' '#1090#1080#1087#1091' '#1087#1088#1072#1079#1076#1085#1080#1082#1072)
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 200.315090000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst2
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000022000
          Width = 525.354670000000000000
          Height = 56.692950000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1053#1072#1079#1074#1072#1085#1080#1077'"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 188.976500000000000000
          Top = 98.267780000000010000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1052#1077#1089#1090#1086'_'#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103'"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 188.976500000000000000
          Top = 117.165430000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1044#1072#1090#1072'_'#1087#1088#1086#1074#1080#1076#1077#1085#1080#1103'"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 188.976500000000000000
          Top = 60.472480000000010000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1058#1080#1087'_'#1087#1088#1072#1079#1076#1085#1080#1082#1072'"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 188.976500000000000000
          Top = 79.370130000000010000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1047#1072#1082#1072#1079#1095#1080#1082'"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 188.976500000000000000
          Top = 136.063080000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1057#1090#1086#1080#1084#1086#1089#1090#1100'"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 188.976500000000000000
          Top = 154.960730000000000000
          Width = 525.354670000000000000
          Height = 18.897650000000000000
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."'#1054#1087#1083#1072#1095#1077#1085'"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000079000
          Width = 185.196970000000000000
          Height = 56.692950000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1053#1072#1079#1074#1072#1085#1080#1077':')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 3.779530000000000000
          Top = 60.472480000000190000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1058#1080#1087' '#1087#1088#1072#1079#1076#1085#1080#1082#1072':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.370130000000190000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1047#1072#1082#1072#1079#1095#1080#1082':')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 3.779530000000000000
          Top = 117.165430000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1044#1072#1090#1072' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 3.779530000000000000
          Top = 136.063080000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 3.779530000000000000
          Top = 154.960730000000000000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1054#1087#1083#1072#1095#1077#1085':')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 3.779530000000000000
          Top = 98.267780000000290000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103':')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 668.976810000000000000
          Top = 177.637910000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[LINE#]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 532.913730000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 3.779530000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        Height = 71.811070000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdtst3
        DataSetName = 'frxDBDatasetSUM'
        RowCount = 0
        object Memo17: TfrxMemoView
          Left = 3.779530000000000000
          Top = 11.338590000000010000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1057#1091#1084#1072':')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 64.252010000000000000
          Top = 15.118120000000010000
          Width = 166.299320000000000000
          Height = 26.456710000000000000
          DataField = #1057#1091#1084#1072
          DataSet = frxdbdtst3
          DataSetName = 'frxDBDatasetSUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxDBDatasetSUM."'#1057#1091#1084#1072'"]')
          ParentFont = False
        end
      end
    end
  end
  object frxpdfxprt2: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 304
    Top = 152
  end
  object frxdbdtst3: TfrxDBDataset
    UserName = 'frxDBDatasetSUM'
    CloseDataSource = False
    FieldAliases.Strings = (
      #1057#1091#1084#1072'='#1057#1091#1084#1072)
    DataSource = DataModule1.dsSUM
    BCDToCurrency = False
    Left = 464
    Top = 96
  end
end
