unit View.Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons,
  FireDAC.Comp.Client, View.Cadastro.Consts;

type
  TfrmCadastro = class(TForm)
    grdCadastro: TDBGrid;
    pnlOpcoes: TPanel;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
  public
    FormDetail: TForm;
    FormDetailClass: TFormClass;
    procedure ExecuteDataSetAction(const Value: TDataSetAction);
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses
  Model.Cadastro;

{$R *.dfm}

{ TfrmCadastro }

procedure TfrmCadastro.btnAlterarClick(Sender: TObject);
begin
  ExecuteDataSetAction(daEdit);
end;

procedure TfrmCadastro.btnExcluirClick(Sender: TObject);
begin
  if grdCadastro.DataSource.DataSet.RecordCount = 0 then
    Exit;
  if MessageDlg(MENSAGEM_EXCLUSAO_REGISTRO, mtConfirmation, mbYesNo, 0) <> mrYes then
    Exit;
  grdCadastro.DataSource.DataSet.Delete;
end;

procedure TfrmCadastro.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro.btnInserirClick(Sender: TObject);
begin
  ExecuteDataSetAction(daInsert);
end;

procedure TfrmCadastro.ExecuteDataSetAction(const Value: TDataSetAction);
begin
  if Value = daInsert then
    grdCadastro.DataSource.DataSet.Append
  else if Value = daEdit then
     grdCadastro.DataSource.DataSet.Edit;

  Application.CreateForm(FormDetailClass, FormDetail);
  FormDetail.ShowModal;
  FormDetail.Free;
  grdCadastro.DataSource.DataSet.Refresh;
end;

end.
