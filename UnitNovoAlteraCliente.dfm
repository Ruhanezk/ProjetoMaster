object FNovoAlteraCliente: TFNovoAlteraCliente
  Left = 0
  Top = 0
  Caption = 'Novo / Alterar'
  ClientHeight = 548
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblCNPJ: TLabel
    Left = 16
    Top = 155
    Width = 30
    Height = 13
    Caption = 'CNPJ:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCPF: TLabel
    Left = 16
    Top = 182
    Width = 23
    Height = 13
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTelefone: TLabel
    Left = 16
    Top = 236
    Width = 52
    Height = 13
    Caption = 'Telefone:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 199
    Top = 16
    Width = 134
    Height = 40
    Caption = 'Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblEndereco: TLabel
    Left = 17
    Top = 300
    Width = 58
    Height = 13
    Caption = 'Endere'#231'o: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDataNascimento: TLabel
    Left = 17
    Top = 327
    Width = 116
    Height = 13
    Caption = 'Data de nascimento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblIE: TLabel
    Left = 17
    Top = 209
    Width = 106
    Height = 13
    Caption = 'Inscri'#231#227'o Estadual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 16
    Top = 128
    Width = 35
    Height = 13
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtCNPJ: TEdit
    Left = 139
    Top = 152
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtCPF: TEdit
    Left = 139
    Top = 179
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtTelefone: TEdit
    Left = 139
    Top = 233
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edtEndereco: TEdit
    Left = 139
    Top = 297
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object edtDataNascimento: TEdit
    Left = 139
    Top = 324
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object rbtnPessoafisica: TRadioButton
    Left = 96
    Top = 80
    Width = 113
    Height = 17
    Caption = 'Pessoa F'#237'sica'
    TabOrder = 5
    OnClick = rbtnPessoafisicaClick
  end
  object rbtnPessoaJuridica: TRadioButton
    Left = 352
    Top = 80
    Width = 113
    Height = 17
    Caption = 'Pessoa Jur'#237'dica'
    TabOrder = 6
    OnClick = rbtnPessoaJuridicaClick
  end
  object EdtIE: TEdit
    Left = 139
    Top = 206
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object btnGravarClientes: TButton
    Left = 424
    Top = 496
    Width = 107
    Height = 36
    Caption = 'Gravar - F8'
    TabOrder = 8
    OnClick = btnGravarClientesClick
  end
  object edtNome: TEdit
    Left = 139
    Top = 125
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
end
