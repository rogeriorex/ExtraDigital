unit View.CadastroDetalhe.Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Data.DB, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, View.CadastroDetalhe, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, View.Cadastro.Empresa;

type
  TfrmCadastroEmpresaDetalhe = class(TfrmCadastroDetalhe)
    lblIDEMPRESA: TLabel;
    lblNMEMPRESA: TLabel;
    lblNUCNPJ: TLabel;
    lblNUINSCRICAO: TLabel;
    lblTLCOMERCIAL: TLabel;
    lblTLCELULAR: TLabel;
    lblTXEMAIL: TLabel;
    ID_EMPRESA: TDBEdit;
    NMEMPRESA: TDBEdit;
    NUCNPJ: TDBEdit;
    NUINSCRICAO: TDBEdit;
    TLCOMERCIAL: TDBEdit;
    TLCELULAR: TDBEdit;
    TXEMAIL: TDBEdit;
    STATIVO: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
  end;

var
  frmCadastroEmpresaDetalhe: TfrmCadastroEmpresaDetalhe;

implementation

uses
  Model.Cadastro, View.Cadastro.Consts;

{$R *.dfm}

procedure TfrmCadastroEmpresaDetalhe.FormCreate(Sender: TObject);
begin
  inherited;
  DataSetLocal := dmCadastro.qryCadastroEmpresa;
  DataSetAux := dmCadastro.qryAux;
  LCampoIDTabelaLocal := IDEMPRESA;
  LTabelaLocal := CADEMPRESA;
end;


end.
