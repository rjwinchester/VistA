inherited frmOrdersTS: TfrmOrdersTS
  Left = 84
  Top = 77
  Caption = 'Release Orders'
  ClientHeight = 351
  ClientWidth = 457
  Constraints.MinHeight = 365
  Constraints.MinWidth = 310
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = nil
  ExplicitWidth = 473
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMiddle: TPanel [0]
    Left = 0
    Top = 81
    Width = 457
    Height = 56
    Align = alTop
    Constraints.MinHeight = 45
    TabOrder = 1
    ExplicitWidth = 456
    object grpChoice: TGroupBox
      Left = 1
      Top = 1
      Width = 455
      Height = 54
      Align = alClient
      Constraints.MinHeight = 45
      TabOrder = 0
      ExplicitWidth = 454
      DesignSize = (
        455
        54)
      object radDelayed: TRadioButton
        Left = 20
        Top = 5
        Width = 329
        Height = 21
        Caption = '  &Delay release of new order(s) until'
        TabOrder = 0
        OnClick = radDelayedClick
      end
      object cmdOK: TButton
        Left = 356
        Top = 9
        Width = 75
        Height = 20
        Anchors = [akRight, akBottom]
        Caption = 'OK'
        Default = True
        TabOrder = 1
        OnClick = cmdOKClick
        ExplicitLeft = 355
      end
      object cmdCancel: TButton
        Left = 356
        Top = 31
        Width = 75
        Height = 20
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = 'Cancel'
        TabOrder = 2
        OnClick = cmdCancelClick
        ExplicitLeft = 355
      end
      object radReleaseNow: TRadioButton
        Left = 16
        Top = 21
        Width = 333
        Height = 17
        Caption = '  &Release new orders immediately'
        Enabled = False
        TabOrder = 3
        Visible = False
        OnClick = radReleaseNowClick
      end
    end
  end
  object pnlTop: TPanel [1]
    Left = 0
    Top = 0
    Width = 457
    Height = 81
    Align = alTop
    AutoSize = True
    BorderStyle = bsSingle
    TabOrder = 0
    ExplicitWidth = 456
    object lblPtInfo: TVA508StaticText
      Name = 'lblPtInfo'
      Left = 1
      Top = 1
      Width = 451
      Height = 34
      Align = alTop
      Alignment = taLeftJustify
      Caption = ''
      Constraints.MinHeight = 34
      TabOrder = 0
      ShowAccelChar = True
      ExplicitWidth = 450
    end
    object pnldif: TPanel
      Left = 1
      Top = 35
      Width = 451
      Height = 41
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 450
      DesignSize = (
        451
        41)
      object Image1: TImage
        Left = 1
        Top = 1
        Width = 24
        Height = 39
        Align = alLeft
        AutoSize = True
        Enabled = False
        Picture.Data = {
          07544269746D61707E010000424D7E0100000000000076000000280000001800
          000016000000010004000000000008010000C40E0000C40E0000100000000000
          0000000000000000800000800000008080008000000080008000808000008080
          8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
          FF008000000000000000000000080777777777777777777777700F7777777777
          7777777777700F88888888888888888887700F88888888888888888887700F88
          888808888888888887700F88888800888888888887700F8888880B0888888888
          87700F8888880BB00008888887700F888800BBCCBBB0088887700F8880BBBCCC
          CBBBB08887700F880BBBBBBBBBBBBB0887700F880BBBBBCCBBBBBB0887700F88
          0BBBBBCCBBBBBB0887700F880BBBBBCCBBBBBB0887700F8880BBBBCCBBBBB088
          87700F888800BBBBBBB0088887700F88888800000008888887700F8888888888
          8888888887700F88888888888888888887700FFFFFFFFFFFFFFFFFFFFF708000
          00000000000000000008}
        Transparent = True
        ExplicitHeight = 18
      end
      object memHelp: TRichEdit
        Left = 31
        Top = 0
        Width = 355
        Height = 40
        ParentCustomHint = False
        TabStop = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        HideScrollBars = False
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object btnHelp: TButton
        Left = 386
        Top = 0
        Width = 64
        Height = 38
        Anchors = [akTop, akRight, akBottom]
        Caption = 'More Help'
        TabOrder = 1
        OnClick = btnHelpClick
      end
    end
  end
  object pnlBottom: TPanel [2]
    Left = 0
    Top = 137
    Width = 457
    Height = 214
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 456
    inline fraEvntDelayList: TfraEvntDelayList
      Left = 1
      Top = 1
      Width = 455
      Height = 212
      Align = alClient
      AutoScroll = True
      TabOrder = 0
      TabStop = True
      Visible = False
      ExplicitLeft = 1
      ExplicitTop = 1
      ExplicitWidth = 454
      ExplicitHeight = 212
      inherited pnlDate: TPanel
        Left = 350
        Height = 212
        ExplicitLeft = 349
        ExplicitHeight = 212
        inherited lblEffective: TLabel
          Left = 453
          Width = 71
          ExplicitLeft = 453
          ExplicitWidth = 71
        end
        inherited orDateBox: TORDateBox
          Left = 453
          ExplicitLeft = 453
        end
      end
      inherited pnlList: TPanel
        Width = 350
        Height = 212
        ExplicitWidth = 349
        ExplicitHeight = 212
        inherited lblEvntDelayList: TLabel
          Width = 348
          Caption = 'Delay Orders Until:'
          ExplicitWidth = 88
        end
        inherited mlstEvents: TORListBox
          Width = 348
          Height = 176
          OnDblClick = cmdOKClick
          OnChange = fraEvntDelayListmlstEventsChange
          ExplicitWidth = 347
          ExplicitHeight = 176
        end
        inherited edtSearch: TCaptionEdit
          Width = 348
          ExplicitWidth = 347
        end
      end
    end
  end
  inherited amgrMain: TVA508AccessibilityManager
    Data = (
      (
        'Component = pnlMiddle'
        'Status = stsDefault')
      (
        'Component = grpChoice'
        'Status = stsDefault')
      (
        'Component = radDelayed'
        'Status = stsDefault')
      (
        'Component = cmdOK'
        'Status = stsDefault')
      (
        'Component = cmdCancel'
        'Status = stsDefault')
      (
        'Component = pnlTop'
        'Status = stsDefault')
      (
        'Component = pnldif'
        'Status = stsDefault')
      (
        'Component = pnlBottom'
        'Status = stsDefault')
      (
        'Component = fraEvntDelayList'
        'Status = stsDefault')
      (
        'Component = fraEvntDelayList.pnlDate'
        'Status = stsDefault')
      (
        'Component = fraEvntDelayList.orDateBox'
        'Status = stsDefault')
      (
        'Component = fraEvntDelayList.pnlList'
        'Status = stsDefault')
      (
        'Component = fraEvntDelayList.mlstEvents'
        'Status = stsDefault')
      (
        'Component = fraEvntDelayList.edtSearch'
        'Status = stsDefault')
      (
        'Component = frmOrdersTS'
        'Status = stsDefault')
      (
        'Component = lblPtInfo'
        'Status = stsDefault')
      (
        'Component = radReleaseNow'
        'Status = stsDefault')
      (
        'Component = memHelp'
        'Status = stsDefault')
      (
        'Component = btnHelp'
        'Status = stsDefault'))
  end
end
