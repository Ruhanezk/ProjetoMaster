object FCliente: TFCliente
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 650
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnCreate = FormCreate
  DesignSize = (
    1024
    650)
  PixelsPerInch = 96
  TextHeight = 13
  object BtnClienteNovo: TSpeedButton
    Left = 31
    Top = 24
    Width = 58
    Height = 57
    Caption = 'Novo - F4'
    OnClick = BtnClienteNovoClick
  end
  object BtnAlterarCliente: TSpeedButton
    Left = 127
    Top = 24
    Width = 58
    Height = 57
    Caption = 'Alterar - F5'
  end
  object BtnExcluirCliente: TSpeedButton
    Left = 223
    Top = 24
    Width = 58
    Height = 57
    Caption = 'Excluir - F6'
  end
  object DBGridClientes: TDBGrid
    Left = 31
    Top = 103
    Width = 960
    Height = 514
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clGradientInactiveCaption
    DataSource = udatam.DTSCliente
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
