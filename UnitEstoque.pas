unit UnitEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons;

type
  TFEstoque = class(TForm)
    BtnEstoqueNovo: TSpeedButton;
    BtnAlterarEstoque: TSpeedButton;
    BtnExcluirEstoque: TSpeedButton;
    DBGridEstoque: TDBGrid;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEstoque: TFEstoque;

implementation

{$R *.dfm}

uses UnitCliente, UnitDataM, UnitMenu;

procedure TFEstoque.FormCreate(Sender: TObject);
begin
udatam.qvendas.close;
udatam.qvendas.active := not udatam.qvendas.active;
end;

end.
