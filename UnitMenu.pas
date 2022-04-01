unit UnitMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.Menus;

type
  TFMenu = class(TForm)
    BtnClientes: TSpeedButton;
    BtnEstoque: TSpeedButton;
    BtnVendas: TSpeedButton;
    MainMenu1: TMainMenu;
    MenuCadastros: TMenuItem;
    MenuEmitente: TMenuItem;
    MenuCliente: TMenuItem;
    MenuEstoque: TMenuItem;
    MenuVendas: TMenuItem;
    MenuGerenciaVenda: TMenuItem;
    MenuUtilitarios: TMenuItem;
    MenuSair: TMenuItem;
    procedure BtnClientesClick(Sender: TObject);
    procedure BtnEstoqueClick(Sender: TObject);
    procedure BtnVendasClick(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure MenuClienteClick(Sender: TObject);
    procedure MenuEstoqueClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

{$R *.dfm}

uses UnitCliente, UnitDataM, UnitEstoque, UnitNovoAlteraCliente;


procedure TFMenu.BtnClientesClick(Sender: TObject);
begin
  try
    FCliente := TFcliente.create(application);
    FCliente.showmodal;
  finally
    FreeAndNil(FCliente);
  end;

end;

procedure TFMenu.BtnEstoqueClick(Sender: TObject);
begin
try
    FEstoque := TFEstoque.create(application);
    FEstoque.showmodal;
  finally
    FreeAndNil(FCliente);
end;
end;

procedure TFMenu.BtnVendasClick(Sender: TObject);
begin
udatam.qvendas.close;
udatam.qvendas.active := not udatam.qvendas.active;
end;

procedure TFMenu.Clientes1Click(Sender: TObject);
begin
 FCliente := TFcliente.create(application);
end;

procedure TFMenu.MenuEstoqueClick(Sender: TObject);
begin
try
    FEstoque := TFEstoque.create(application);
    FEstoque.showmodal;
  finally
    FreeAndNil(FCliente);
end;
end;

procedure TFMenu.MenuClienteClick(Sender: TObject);
begin
try
    FCliente := TFcliente.create(application);
    FCliente.showmodal;
  finally
    FreeAndNil(FCliente);
end;
end;
end.
