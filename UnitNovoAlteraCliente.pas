unit UnitNovoAlteraCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFNovoAlteraCliente = class(TForm)
    lblCNPJ: TLabel;
    edtCNPJ: TEdit;
    lblCPF: TLabel;
    edtCPF: TEdit;
    lblTelefone: TLabel;
    edtTelefone: TEdit;
    Label5: TLabel;
    lblEndereco: TLabel;
    edtEndereco: TEdit;
    lblDataNascimento: TLabel;
    edtDataNascimento: TEdit;
    rbtnPessoafisica: TRadioButton;
    rbtnPessoaJuridica: TRadioButton;
    lblIE: TLabel;
    EdtIE: TEdit;
    btnGravarClientes: TButton;
    lblNome: TLabel;
    edtNome: TEdit;
    procedure rbtnPessoafisicaClick(Sender: TObject);
    procedure rbtnPessoaJuridicaClick(Sender: TObject);
    procedure btnGravarClientesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNovoAlteraCliente: TFNovoAlteraCliente;

implementation

{$R *.dfm}

uses UnitCliente, UnitDataM, UnitEstoque, UnitMenu;
procedure TFNovoAlteraCliente.btnGravarClientesClick(Sender: TObject);
begin
with udatam do
  begin
  qcliente.open('select * from tclientes where 1 = 2');
  qcliente.append;
  qclienteCLIENTE.AsString := edtNome.text;
  qclienteCNPJ.AsString := edtCNPJ.Text;
  qclienteCPF.AsString := edtCPF.text;
  qclienteIE.AsString := edtIE.text;
  qclienteTELEFONE.AsString := edtTelefone.text;
  qclienteENDERECO.AsString := edtEndereco.text;
  qclienteDATANASCIMENTO.AsString := edtDataNascimento.text;
  qcliente.post;
  end;
end;

procedure TFNovoAlteraCliente.rbtnPessoafisicaClick(Sender: TObject);
begin
if rbtnpessoafisica.Checked = true then
edtIE.enabled := false;
edtCNPJ.Enabled := false;
lblIE.enabled := false;
lblCNPJ.Enabled := false;
end;

procedure TFNovoAlteraCliente.rbtnPessoaJuridicaClick(Sender: TObject);

begin
if rbtnpessoajuridica.Checked = true then
edtIE.enabled := true;
edtCNPJ.Enabled := true;
lblIE.enabled := true;
lblCNPJ.Enabled := true;
end;

end.

