object FormSortYear: TFormSortYear
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1059#1082#1072#1078#1080#1090#1077' '#1075#1086#1076
  ClientHeight = 60
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn1: TSpeedButton
    Left = 119
    Top = 26
    Width = 23
    Height = 22
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btn1Click
  end
  object lbl1: TLabel
    Left = 8
    Top = -2
    Width = 134
    Height = 26
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1091#1078#1085#1099#1081' '#1074#1072#1084' '#1075#1086#1076' ('#1085#1072#1087#1088#1080#1084#1077#1088' "2016")'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    WordWrap = True
  end
  object edt1: TEdit
    Left = 8
    Top = 30
    Width = 105
    Height = 21
    Alignment = taRightJustify
    TabOrder = 0
    TextHint = '2016'
    OnChange = edt1Change
    OnKeyPress = edt1KeyPress
  end
end
