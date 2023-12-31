unit View.CadastroDetalhe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  FireDAC.Comp.Client;

type
  TfrmCadastroDetalhe = class(TForm)
    pnlOpcoes: TPanel;
    pnlCadastro: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  public
    LCampoIDTabelaLocal: string;
    LTabelaLocal: string;
    DataSetLocal: TFDQuery;
    DataSetAux: TFDQuery;
    procedure IDNovoRegistro(const ATabela: String; const ACampo: String);
  end;

var
  frmCadastroDetalhe: TfrmCadastroDetalhe;

implementation

uses
  Model.Cadastro, Vcl.Dialogs;

const
  SELECT_MAXIMO_VALOR_ID = 'SELECT MAX(';
  FROM_MAXIMO_VALOR_ID = ') FROM ';
  MENSAGEM_NAO_INFORMADA_TABELA_E_ID = 'N�o informados a Tabela e o ID para Incluir novo registro';

{$R *.dfm}

procedure TfrmCadastroDetalhe.btnCancelarClick(Sender: TObject);
begin
  if DataSetLocal.State in [dsEdit, dsInsert] then
    DataSetLocal.Cancel;
  Close;
end;

procedure TfrmCadastroDetalhe.btnSalvarClick(Sender: TObject);
begin
  if DataSetLocal.State in [dsEdit, dsInsert] then
    DataSetLocal.Post;
  Close;
end;

procedure TfrmCadastroDetalhe.FormCreate(Sender: TObject);
begin
  DataSetLocal := TFDQuery.Create(Self);
  DataSetAux := TFDQuery.Create(Self);
end;

procedure TfrmCadastroDetalhe.FormDestroy(Sender: TObject);
begin
  DataSetLocal.FieldByName(LCampoIDTabelaLocal).ReadOnly := false;
  DataSetLocal := nil;
  DataSetAux := nil;
end;

procedure TfrmCadastroDetalhe.FormShow(Sender: TObject);
begin
  if DataSetLocal.State = dsInsert then
    IDNovoRegistro(LTabelaLocal, LCampoIDTabelaLocal);
end;

procedure TfrmCadastroDetalhe.IDNovoRegistro(const ATabela: String; const ACampo: String);
begin
  if (ATabela = EmptyStr) or (ACampo = EmptyStr) then
    Exit;

  try
    DataSetAux.Open(SELECT_MAXIMO_VALOR_ID + ACampo + FROM_MAXIMO_VALOR_ID + ATabela);
    DataSetLocal.FieldByName(ACampo).AsInteger := Succ(DataSetAux.Fields[0].Asinteger);
    DataSetLocal.FieldByName(ACampo).ReadOnly := true;
  except
    MessageDlg(MENSAGEM_NAO_INFORMADA_TABELA_E_ID, mtInformation, [mbOK], 0);
  end;
end;

end.
