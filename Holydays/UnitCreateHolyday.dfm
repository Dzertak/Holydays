object FormCreateHolyday: TFormCreateHolyday
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1087#1088#1072#1079#1076#1085#1080#1082#1072
  ClientHeight = 363
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object scrlbx1: TScrollBox
    Left = 0
    Top = 0
    Width = 554
    Height = 361
    HorzScrollBar.Visible = False
    TabOrder = 0
    object grp1: TGroupBox
      Left = 3
      Top = 0
      Width = 527
      Height = 41
      Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1047#1072#1082#1072#1079#1095#1080#1082#1072
      TabOrder = 0
      object btnAddZ: TSpeedButton
        Left = 486
        Top = 15
        Width = 23
        Height = 22
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnAddZClick
      end
      object edtZFio: TEdit
        Left = 3
        Top = 16
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = #1060#1048#1054
      end
      object edtZOrg: TEdit
        Left = 130
        Top = 16
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      end
      object edtZTel: TEdit
        Left = 257
        Top = 16
        Width = 96
        Height = 21
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TextHint = #1058#1077#1083#1077#1092#1086#1085
      end
      object edtZEmail: TEdit
        Left = 359
        Top = 16
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TextHint = #1048#1084#1077#1081#1083
      end
    end
    object grp2: TGroupBox
      Left = 0
      Top = 340
      Width = 532
      Height = 226
      Caption = #1047#1072#1082#1072#1079#1099' '#1055#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074
      Enabled = False
      TabOrder = 1
      object img2: TImage
        Left = 194
        Top = 17
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000021F4944415478DA8D924B4B9B411486E7CC07
          8A546C5742B5682158A9186C4CBC26812492505111C45FD05569375D94A004A1
          505AB2D18D2EC495E0DE6E54225E2289971AAAA21282A2F542251452D1855AAA
          99E93B9ADAC444F4C021335FDEF39CCB1C6237ACA9F12511F15C1C7398943109
          1BF5F924BBC5E8DFA1D1E5449CD6AE699A1BD7CAC4E76329C4B010A26B6C7C3C
          7A2BC0D5E020CEB5CF9C73B7FA42FFB928E232F94F118F37F826272319014EBB
          BD15C1C3B809D4DF0DEF6144BF9890F500F4C1CB215B17226E9AF0CF5CA4001C
          560B4AE77E64B502D083603744D73D3B6DB67CC9648449F6484AD13215088EA5
          006CE67A55C52902B3F0ABF3CFCEED260BEC16B3FABF0FC4D7E8C73B3337EF49
          01586B6B94E01CDD12B2E405174327C9024B7515D8F4112D7542D31BFC1A7A97
          0230571915601B7D16C3DB179656BE240B6A0C156AC08B44CC88EBDBF96FCBFD
          6943AC35BCF8843E3B0038C0B3B9F06C1B5248469C08CFEA41051F203BC38394
          8456D7A26980EA0AFD43042EA0CF52407EC347D04E0C0035007D427728A46C5B
          0E47021917C9585E5688CC83189423D3BE24F6E10889ACAB9B5BE1348032C3F3
          522534C16D97ABCCD80E805BB84FE39C8D363147B68D7DA80B7FDF8BA5013299
          BE4447087805D000824941000CA05AD7C6FEC19F3B01CACA9E160122BC48FF1E
          C174B5E1D2BBF923EAB91740D9B327051C95A8276E4E54BEA6BABE374099EE71
          FE03543284FCAD58AC014EFCCD5FBC5EFEB935984C880000000049454E44AE42
          6082}
      end
      object btn1: TSpeedButton
        Left = 6
        Top = 17
        Width = 23
        Height = 21
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btn1Click
      end
      object lbl2: TLabel
        Left = 460
        Top = 23
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn3: TSpeedButton
        Left = 218
        Top = 17
        Width = 23
        Height = 21
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btn3Click
      end
      object dbgrd4: TDBGrid
        Left = 3
        Top = 40
        Width = 206
        Height = 120
        DataSource = DataModule1.dsAddSerSup
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1091#1089#1083#1091#1075#1080
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            Visible = True
          end>
      end
      object edt2: TEdit
        Left = 104
        Top = 21
        Width = 87
        Height = 17
        Hint = #1053#1072#1081#1090#1080' '#1091#1089#1083#1091#1075#1091
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = #1053#1072#1081#1090#1080
        OnChange = edt2Change
      end
      object dbgrd5: TDBGrid
        Left = 3
        Top = 162
        Width = 522
        Height = 56
        DataSource = DataModule1.dsAddSup
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1040#1076#1088#1077#1089
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Width = 80
            Visible = True
          end>
      end
      object dbgrd6: TDBGrid
        Left = 218
        Top = 39
        Width = 307
        Height = 120
        DataSource = DataModule1.dsAddOrdSup
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1079#1072#1082#1072#1079#1072
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1087#1086'.'#1053#1072#1079#1074#1072#1085#1080#1077
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1091'.'#1053#1072#1079#1074#1072#1085#1080#1077
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            Width = 56
            Visible = True
          end>
      end
      object dbedt_3: TDBEdit
        Left = 400
        Top = 88
        Width = 121
        Height = 21
        DataField = #1050#1086#1076'_'#1079#1072#1082#1072#1079#1072
        DataSource = DataModule1.dsAddOrdSup
        TabOrder = 4
        Visible = False
        OnChange = dbedt_3Change
      end
      object dbedtSupServ: TDBEdit
        Left = 288
        Top = 176
        Width = 121
        Height = 21
        DataField = #1050#1086#1076'_'#1091#1089#1083#1091#1075#1080
        DataSource = DataModule1.dsAddSerSup
        TabOrder = 5
        Visible = False
        OnChange = dbedt_1Change
      end
    end
    object grp3: TGroupBox
      Left = 3
      Top = 115
      Width = 527
      Height = 226
      Caption = #1047#1072#1082#1072#1079#1099' '#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1077#1081
      Enabled = False
      TabOrder = 2
      object img1: TImage
        Left = 194
        Top = 17
        Width = 16
        Height = 16
        AutoSize = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000100000
          001008060000001FF3FF610000021F4944415478DA8D924B4B9B411486E7CC07
          8A546C5742B5682158A9186C4CBC26812492505111C45FD05569375D94A004A1
          505AB2D18D2EC495E0DE6E54225E2289971AAAA21282A2F542251452D1855AAA
          99E93B9ADAC444F4C021335FDEF39CCB1C6237ACA9F12511F15C1C7398943109
          1BF5F924BBC5E8DFA1D1E5449CD6AE699A1BD7CAC4E76329C4B010A26B6C7C3C
          7A2BC0D5E020CEB5CF9C73B7FA42FFB928E232F94F118F37F826272319014EBB
          BD15C1C3B809D4DF0DEF6144BF9890F500F4C1CB215B17226E9AF0CF5CA4001C
          560B4AE77E64B502D083603744D73D3B6DB67CC9648449F6484AD13215088EA5
          006CE67A55C52902B3F0ABF3CFCEED260BEC16B3FABF0FC4D7E8C73B3337EF49
          01586B6B94E01CDD12B2E405174327C9024B7515D8F4112D7542D31BFC1A7A97
          0230571915601B7D16C3DB179656BE240B6A0C156AC08B44CC88EBDBF96FCBFD
          6943AC35BCF8843E3B0038C0B3B9F06C1B5248469C08CFEA41051F203BC38394
          8456D7A26980EA0AFD43042EA0CF52407EC347D04E0C0035007D427728A46C5B
          0E47021917C9585E5688CC83189423D3BE24F6E10889ACAB9B5BE1348032C3F3
          522534C16D97ABCCD80E805BB84FE39C8D363147B68D7DA80B7FDF8BA5013299
          BE4447087805D000824941000CA05AD7C6FEC19F3B01CACA9E160122BC48FF1E
          C174B5E1D2BBF923EAB91740D9B327051C95A8276E4E54BEA6BABE374099EE71
          FE03543284FCAD58AC014EFCCD5FBC5EFEB935984C880000000049454E44AE42
          6082}
      end
      object btnAddServiceExecutor: TSpeedButton
        Left = 3
        Top = 17
        Width = 23
        Height = 21
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnAddServiceExecutorClick
      end
      object lbl1: TLabel
        Left = 457
        Top = 23
        Width = 65
        Height = 13
        Alignment = taRightJustify
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btn2: TSpeedButton
        Left = 215
        Top = 17
        Width = 23
        Height = 21
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btn2Click
      end
      object dbgrd1: TDBGrid
        Left = 3
        Top = 40
        Width = 206
        Height = 120
        DataSource = DataModule1.dsAddSerExe
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1091#1089#1083#1091#1075#1080
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            Visible = True
          end>
      end
      object edt1: TEdit
        Left = 101
        Top = 21
        Width = 90
        Height = 17
        Hint = #1053#1072#1081#1090#1080' '#1091#1089#1083#1091#1075#1091
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        ParentBiDiMode = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = #1053#1072#1081#1090#1080
        OnChange = edt1Change
      end
      object dbgrd2: TDBGrid
        Left = 3
        Top = 162
        Width = 519
        Height = 56
        DataSource = DataModule1.dsAddExe
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1080#1089#1087#1086#1083#1085#1080#1090#1077#1083#1103
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1084#1103'_'#1082#1086#1085#1090#1072#1082#1090#1085#1086#1075#1086'_'#1083#1080#1094#1072
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1058#1077#1083#1077#1092#1086#1085
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1048#1084#1077#1081#1083
            Width = 140
            Visible = True
          end>
      end
      object dbgrd3: TDBGrid
        Left = 215
        Top = 40
        Width = 307
        Height = 120
        DataSource = DataModule1.dsAddOrdExe
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = #1050#1086#1076'_'#1079#1072#1082#1072#1079#1072
            Visible = False
          end
          item
            Expanded = False
            FieldName = #1048#1084#1103'_'#1082#1086#1085#1090#1072#1082#1090#1085#1086#1075#1086'_'#1083#1080#1094#1072
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            Width = 56
            Visible = True
          end>
      end
      object dbedt_2: TDBEdit
        Left = 359
        Top = 120
        Width = 121
        Height = 21
        DataField = #1050#1086#1076'_'#1079#1072#1082#1072#1079#1072
        DataSource = DataModule1.dsAddOrdExe
        TabOrder = 4
        Visible = False
        OnChange = dbedt_2Change
      end
      object dbedtExeServ: TDBEdit
        Left = 264
        Top = 168
        Width = 121
        Height = 21
        DataField = #1050#1086#1076'_'#1091#1089#1083#1091#1075#1080
        DataSource = DataModule1.dsAddSerExe
        TabOrder = 5
        Visible = False
        OnChange = dbedt_Change
      end
    end
    object grp4: TGroupBox
      Left = 3
      Top = 41
      Width = 527
      Height = 74
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1087#1088#1079#1076#1085#1080#1082#1077
      TabOrder = 3
      object btnAddHolyday: TSpeedButton
        Left = 435
        Top = 20
        Width = 23
        Height = 22
        Caption = '+'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        OnClick = btnAddHolydayClick
      end
      object edtHcodeZ: TEdit
        Left = 3
        Top = 24
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = #1050#1086#1076' '#1079#1072#1082#1072#1079#1095#1080#1082#1072
      end
      object edtHcodeTH: TEdit
        Left = 3
        Top = 47
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        TextHint = #1050#1086#1076' '#1090#1080#1087#1072' '#1079#1072#1082#1072#1079#1072
      end
      object edtHname: TEdit
        Left = 130
        Top = 24
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        TextHint = #1053#1072#1079#1074#1072#1085#1080#1077
      end
      object edtHplace: TEdit
        Left = 130
        Top = 47
        Width = 121
        Height = 21
        Alignment = taRightJustify
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        TextHint = #1052#1077#1089#1090#1086' '#1087#1088#1086#1074#1077#1076#1077#1085#1080#1103
      end
      object dtpHdate: TDateTimePicker
        Left = 257
        Top = 24
        Width = 96
        Height = 18
        Date = 42857.591265046300000000
        Time = 42857.591265046300000000
        TabOrder = 4
      end
      object edtHcost: TEdit
        Left = 257
        Top = 47
        Width = 96
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        TextHint = #1057#1090#1086#1080#1084#1086#1089#1090#1100
      end
      object chkHcosted: TCheckBox
        Left = 359
        Top = 25
        Width = 73
        Height = 17
        Caption = #1054#1087#1083#1072#1095#1077#1085
        Enabled = False
        TabOrder = 6
      end
    end
  end
end
