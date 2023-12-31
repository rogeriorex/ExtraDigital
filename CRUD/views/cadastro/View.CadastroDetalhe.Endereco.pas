unit View.CadastroDetalhe.Endereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, FireDAC.Comp.Client, Data.DB,
  Vcl.Forms, Vcl.Dialogs, View.CadastroDetalhe, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, View.Cadastro.Endereco;

type
  TfrmCadastroEnderecoDetalhe = class(TfrmCadastroDetalhe)
    lblIDENDERECO: TLabel;
    ID_ENDERECO: TDBEdit;
    lblIDTITULAR: TLabel;
    lblIDEMPRESA: TLabel;
    lblNMENDERECO: TLabel;
    NMENDERECO: TDBEdit;
    lblNUENDERECO: TLabel;
    NUENDERECO: TDBEdit;
    lblNMBAIRRO: TLabel;
    NMBAIRRO: TDBEdit;
    lblIDCIDADE: TLabel;
    lblIDUF: TLabel;
    lblNUCEP: TLabel;
    NUCEP: TDBEdit;
    STATIVO: TDBCheckBox;
    IDTITULAR: TDBLookupComboBox;
    IDEMPRESA: TDBLookupComboBox;
    IDCIDADE: TDBLookupComboBox;
    IDUF: TDBLookupComboBox;
    procedure STATIVOClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    function ChecarEnderecoAtivo: boolean;
  end;

var
  frmCadastroEnderecoDetalhe: TfrmCadastroEnderecoDetalhe;

const
  SQL_ENDERECO_ATIVO = 'SELECT STATIVO FROM CADENDERECOS WHERE STATIVO = ''S'' AND IDEMPRESA = :IDEMPRESA';
  UPDATE_ZERAR_ENDERECO_ATIVO = 'UPDATE CADENDERECOS SET STATIVO = ''N'' WHERE IDEMPRESA = :IDEMPRESA';
  PARAM_IDEMPRESA = ':IDEMPRESA';
  MENSAGEM_ENDERECO_ATIVO = 'Outro endere�o vinculado a esta Empresa est� ativo, deseja substituir?';
  SIM = 'S';

implementation

uses
  Model.Cadastro, View.Cadastro.Consts, System.UITypes;

{$R *.dfm}

function TfrmCadastroEnderecoDetalhe.ChecarEnderecoAtivo: boolean;
var
  LSQL: string;
  LIDEmpresa: string;
begin
  Result := false;

  LIDEmpresa := DataSetLocal.FieldByName('IDEMPRESA').AsString;
  LSQL := StringReplace(SQL_ENDERECO_ATIVO, PARAM_IDEMPRESA, LIDEmpresa, []);

  DataSetAux.Open(LSQL);

  if DataSetAux.Fields[0].AsString <> SIM then
    Exit;
  if MessageDlg(MENSAGEM_ENDERECO_ATIVO, mtConfirmation, mbYesNo, 0) <> mrYes then
    Exit;

  LSQL := StringReplace(UPDATE_ZERAR_ENDERECO_ATIVO, PARAM_IDEMPRESA, LIDEmpresa, []);
  DataSetAux.ExecSQL(LSQL);
end;

procedure TfrmCadastroEnderecoDetalhe.FormCreate(Sender: TObject);
begin
  inherited;
  DataSetLocal := dmCadastro.qryCadastroEndereco;
  DataSetAux := dmCadastro.qryAux;
  LCampoIDTabelaLocal := IDENDERECO;
  LTabelaLocal := CADENDERECOS;
end;

procedure TfrmCadastroEnderecoDetalhe.STATIVOClick(Sender: TObject);
begin
  inherited;
  if not ((Sender as TDBCheckBox).Checked) then
    Exit;
  ChecarEnderecoAtivo;
end;

end.
