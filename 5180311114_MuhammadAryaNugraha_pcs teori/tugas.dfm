object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 509
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 16
    Width = 80
    Height = 25
    Caption = 'PASIEN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 676
    Top = 64
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label3: TLabel
    Left = 676
    Top = 113
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label4: TLabel
    Left = 683
    Top = 171
    Width = 29
    Height = 13
    Caption = 'UMUR'
  end
  object Label5: TLabel
    Left = 680
    Top = 219
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 672
    Top = 267
    Width = 57
    Height = 13
    Caption = 'NOMOR_HP'
  end
  object Label7: TLabel
    Left = 656
    Top = 323
    Width = 89
    Height = 13
    Caption = 'NOMOR_ANTRIAN'
  end
  object Label8: TLabel
    Left = 188
    Top = 47
    Width = 25
    Height = 13
    Caption = 'CARI'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 100
    Width = 553
    Height = 237
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 24
    Top = 342
    Width = 89
    Height = 35
    Caption = 'TAMPILKAN'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 342
    Width = 75
    Height = 35
    Caption = 'TAMBAH'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 240
    Top = 342
    Width = 75
    Height = 35
    Caption = 'UBAH'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 344
    Top = 342
    Width = 75
    Height = 35
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button6: TButton
    Left = 271
    Top = 64
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
  end
  object Button7: TButton
    Left = 568
    Top = 376
    Width = 75
    Height = 25
    Caption = 'NEXT'
    TabOrder = 6
  end
  object Edit1: TEdit
    Left = 144
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 624
    Top = 86
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 624
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Edit4: TEdit
    Left = 624
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 10
  end
  object Edit5: TEdit
    Left = 624
    Top = 240
    Width = 121
    Height = 21
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 624
    Top = 286
    Width = 121
    Height = 21
    TabOrder = 12
  end
  object Edit7: TEdit
    Left = 624
    Top = 349
    Width = 121
    Height = 21
    TabOrder = 13
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=rumah_sakit;Data Source=DESKTOP-8706DAP' +
      '\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 408
    Top = 48
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 472
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 560
    Top = 40
  end
end
