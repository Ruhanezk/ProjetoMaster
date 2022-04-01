program Menu;

uses
  Vcl.Forms,
  UnitMenu in 'UnitMenu.pas' {FMenu},
  UnitDataM in 'UnitDataM.pas' {udatam: TDataModule},
  UnitCliente in 'UnitCliente.pas' {FCliente},
  Vcl.Themes,
  Vcl.Styles,
  UnitEstoque in 'UnitEstoque.pas' {FEstoque},
  UnitNovoAlteraCliente in 'UnitNovoAlteraCliente.pas' {FNovoAlteraCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tudatam, udatam);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFCliente, FCliente);
  Application.CreateForm(TFEstoque, FEstoque);
  Application.CreateForm(TFNovoAlteraCliente, FNovoAlteraCliente);
  TStyleManager.TrySetStyle('Iceberg Classico');
  Application.Run;
end.
