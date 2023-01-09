object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'ABD '#21487#35270#21270#24037#20855
  ClientHeight = 422
  ClientWidth = 850
  Color = clBtnFace
  Constraints.MinHeight = 330
  Constraints.MinWidth = 670
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 277
    Width = 850
    Height = 145
    Align = alBottom
    ShowCaption = False
    TabOrder = 2
    ExplicitTop = 271
    ExplicitWidth = 842
    object Label2: TLabel
      Left = 6
      Top = 15
      Width = 80
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #23433#35013'apk'#65306
    end
    object Label3: TLabel
      Left = 6
      Top = 48
      Width = 80
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #25353#38190#28040#24687#65306
    end
    object Label4: TLabel
      Left = 6
      Top = 82
      Width = 80
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #24191#25773#28040#24687#65306
    end
    object Label5: TLabel
      Left = 6
      Top = 114
      Width = 80
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = #33258#23450#20041#21629#20196#65306
    end
    object btnInstallAPK: TButton
      Left = 411
      Top = 10
      Width = 114
      Height = 25
      Caption = #23433#35013'apk'
      TabOrder = 0
      OnClick = btnInstallAPKClick
    end
    object edtapk: TButtonedEdit
      Left = 90
      Top = 11
      Width = 315
      Height = 23
      Images = ImageList1
      RightButton.HotImageIndex = 0
      RightButton.ImageIndex = 0
      RightButton.PressedImageIndex = 0
      RightButton.Visible = True
      TabOrder = 2
      TextHint = '<'#28857#20987#21491#36793#32511#33394#26426#22120#20154#36873#25321'apk'#25991#20214'>'
      OnRightButtonClick = edtapkRightButtonClick
    end
    object btnGetScreenPixel: TButton
      Left = 531
      Top = 10
      Width = 120
      Height = 25
      Caption = #33719#21462#23631#24149#20998#36776#29575
      TabOrder = 1
      OnClick = btnGetScreenPixelClick
    end
    object btnGetScreenDPI: TButton
      Left = 531
      Top = 43
      Width = 120
      Height = 25
      Caption = #33719#21462#23631#24149#23494#24230' DPI'
      TabOrder = 4
      OnClick = btnGetScreenDPIClick
    end
    object cbbKeyboardValue: TComboBox
      Left = 90
      Top = 44
      Width = 315
      Height = 23
      Style = csDropDownList
      ItemIndex = 9
      TabOrder = 5
      Text = #23186#20307#38190#65306#25773#25918#19979#19968#39318
      Items.Strings = (
        #31995#32479#38190#65306#30005#28304#38190
        #31995#32479#38190#65306#33756#21333#38190
        #31995#32479#38190#65306'HOME '#38190
        #31995#32479#38190#65306#36820#22238#38190
        #31995#32479#38190#65306#22686#21152#38899#37327
        #31995#32479#38190#65306#38477#20302#38899#37327
        #23186#20307#38190#65306#38745#38899
        #23186#20307#38190#65306#25773#25918'/'#26242#20572
        #23186#20307#38190#65306#20572#27490#25773#25918
        #23186#20307#38190#65306#25773#25918#19979#19968#39318
        #23186#20307#38190#65306#25773#25918#19978#19968#39318
        #23186#20307#38190#65306#24674#22797#25773#25918
        #23186#20307#38190#65306#26242#20572#25773#25918
        #31995#32479#38190#65306#28857#20142#23631#24149
        #31995#32479#38190#65306#29060#28781#23631#24149)
    end
    object btnSendKey: TButton
      Left = 411
      Top = 43
      Width = 114
      Height = 25
      Caption = #21457#36865#38190#30424#20540
      TabOrder = 3
      OnClick = btnSendKeyClick
    end
    object cbbBroadcast: TComboBox
      Left = 90
      Top = 78
      Width = 315
      Height = 23
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 7
      Text = 'android.intent.action.BOOT_COMPLETED'
      Items.Strings = (
        'android.intent.action.BOOT_COMPLETED')
    end
    object btnBroadcast: TButton
      Left = 411
      Top = 77
      Width = 114
      Height = 25
      Caption = #21457#36865#24191#25773
      TabOrder = 6
      OnClick = btnBroadcastClick
    end
    object edtCustom: TEdit
      Left = 90
      Top = 112
      Width = 315
      Height = 23
      TabOrder = 9
      TextHint = '<'#36755#20837#26377#25928#30340'ADB'#21629#20196'>'
    end
    object btnSendCustom: TButton
      Left = 411
      Top = 111
      Width = 114
      Height = 25
      Caption = #21457#36865#33258#23450#20041#21629#20196
      TabOrder = 8
      OnClick = btnSendCustomClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 236
    Width = 850
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    ExplicitTop = 230
    ExplicitWidth = 842
    object Label1: TLabel
      Left = 11
      Top = 13
      Width = 39
      Height = 15
      Caption = #20027#26426#65306
    end
    object btnCLS: TButton
      Left = 538
      Top = 8
      Width = 120
      Height = 25
      Caption = #28165#31354#26085#24535
      TabOrder = 4
      OnClick = btnCLSClick
    end
    object btnConnect: TButton
      Left = 190
      Top = 8
      Width = 80
      Height = 25
      Caption = #36830#25509
      TabOrder = 0
      OnClick = btnConnectClick
    end
    object edtHost: TEdit
      Left = 56
      Top = 9
      Width = 129
      Height = 23
      TabOrder = 6
      Text = '127.0.0.1:7555'
      TextHint = '<IP'#22320#22336':'#31471#21475'>'
    end
    object btnDisconnect: TButton
      Left = 277
      Top = 8
      Width = 80
      Height = 25
      Caption = #26029#24320
      TabOrder = 1
      OnClick = btnDisconnectClick
    end
    object btnKill: TButton
      Left = 451
      Top = 8
      Width = 80
      Height = 25
      Caption = #32467#26463#26381#21153
      TabOrder = 3
      OnClick = btnKillClick
    end
    object Button3: TButton
      Left = 364
      Top = 8
      Width = 80
      Height = 25
      Caption = #21015#20986#35774#22791
      TabOrder = 2
      OnClick = Button3Click
    end
    object btnAbout: TButton
      Left = 665
      Top = 8
      Width = 120
      Height = 25
      Caption = #20851#20110
      TabOrder = 5
      OnClick = btnAboutClick
    end
  end
  object redtLog: TRichEdit
    Left = 0
    Top = 0
    Width = 850
    Height = 236
    Align = alClient
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    ExplicitLeft = 88
    ExplicitTop = 40
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 264
    Top = 56
    Bitmap = {
      494C010101000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000379768D70E281B390E281B39379768D7000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000041B37BFF153C2855153C285541B37BFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007140D1D29734FA441B37BFF338B60C6338B60C641B37BFF29734FA40714
      0D1D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010502070C24
      1833153C285541B37BFF41B37BFF41B37BFF41B37BFF41B37BFF41B37BFF153C
      28550D2418340105020700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001437254F40AF
      78F9153C285541B37BFF41B37BFF41B37BFF41B37BFF41B37BFF41B37BFF153C
      285540AF78F91437254F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000153C285541B3
      7BFF153C285541B37BFF41B37BFF41B37BFF41B37BFF41B37BFF41B37BFF153C
      285541B37BFF153C285500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000153C285541B3
      7BFF153C285541B37BFF41B37BFF41B37BFF41B37BFF41B37BFF41B37BFF153C
      285541B37BFF153C285500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E291B3A3797
      68D7153C285541B37BFF41B37BFF41B37BFF41B37BFF41B37BFF41B37BFF153C
      2855379768D80E281B3900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005120B19153C2855153C2855153C2855153C2855153C2855153C28550611
      0C18000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006120C1B40AF79FA308158B841B37BFF41B37BFF308158B840AF79FA0712
      0D1A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000018432D5F3CA571EB41B37BFF41B37BFF3DA772EE17422D5E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C2216302362438B112E1F42112D1F41256746920C1F152E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF000000000000FFFF000000000000
      FC3F000000000000FC3F000000000000F00F000000000000C003000000000000
      C003000000000000C003000000000000C003000000000000C003000000000000
      F00F000000000000F00F000000000000F81F000000000000F81F000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '.apk'
    Filter = '*.apk|*.apk'
    Left = 344
    Top = 56
  end
end