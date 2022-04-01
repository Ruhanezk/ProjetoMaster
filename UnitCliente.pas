unit UnitCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  TFCliente = class(TForm)
    DBGridClientes: TDBGrid;
    BtnClienteNovo: TSpeedButton;
    BtnAlterarCliente: TSpeedButton;
    BtnExcluirCliente: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure BtnClienteNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliente: TFCliente;

implementation

{$R *.dfm}

uses  UnitDataM, UnitMenu, UnitEstoque, UnitNovoAlteraCliente;

procedure TFCliente.BtnClienteNovoClick(Sender: TObject);
begin
  try
    FNovoAlteraCliente := TFNovoAlteraCliente.create(application);
    FNovoAlteraCliente.showmodal;
  finally
    FreeAndNil(FNovoAlteraCliente);
end;
end;

procedure TFCliente.FormCreate(Sender: TObject);
begin
udatam.qcliente.close;
udatam.qcliente.active := not udatam.qcliente.active;
end;

end.
