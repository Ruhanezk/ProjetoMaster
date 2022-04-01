object FMenu: TFMenu
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Menu SGzinho'
  ClientHeight = 152
  ClientWidth = 1034
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnClientes: TSpeedButton
    Left = 26
    Top = 24
    Width = 81
    Height = 81
    Caption = 'Clientes'
    OnClick = BtnClientesClick
  end
  object BtnEstoque: TSpeedButton
    Left = 130
    Top = 24
    Width = 81
    Height = 81
    Caption = 'Estoque'
    OnClick = BtnEstoqueClick
  end
  object BtnVendas: TSpeedButton
    Left = 234
    Top = 24
    Width = 81
    Height = 81
    Caption = 'Vendas'
    OnClick = BtnVendasClick
  end
  object MainMenu1: TMainMenu
    Left = 776
    Top = 40
    object MenuCadastros: TMenuItem
      Caption = 'Cadastros'
      object MenuEmitente: TMenuItem
        Caption = 'Emitente'
      end
      object MenuCliente: TMenuItem
        Caption = 'Clientes'
        OnClick = MenuClienteClick
      end
      object MenuEstoque: TMenuItem
        Caption = 'Estoque'
        OnClick = MenuEstoqueClick
      end
      object MenuVendas: TMenuItem
        Caption = 'Vendas'
      end
      object MenuGerenciaVenda: TMenuItem
        Caption = 'Ger. de Vendas'
      end
    end
    object MenuUtilitarios: TMenuItem
      Caption = 'Utilit'#225'rios'
    end
    object MenuSair: TMenuItem
      Caption = 'Sair'
    end
  end
end
