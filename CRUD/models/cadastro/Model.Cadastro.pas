unit Model.Cadastro;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet;

type
  TdmCadastro = class(TDataModule)
    srcCadastroEndereco: TDataSource;
    qryCadastroEmpresa: TFDQuery;
    srcCadastroEmpresa: TDataSource;
    qryCadastroEmpresaEndereco: TFDQuery;
    srcCadastroEmpresaEndereco: TDataSource;
    upCadastroEmpresa: TFDUpdateSQL;
    qryCadastroEndereco: TFDQuery;
    upCadastroEndereco: TFDUpdateSQL;
    qryUF: TFDQuery;
    srcUF: TDataSource;
    srcCidade: TDataSource;
    srcEmpresa: TDataSource;
    srcTitular: TDataSource;
    qryCidade: TFDQuery;
    qryEmpresa: TFDQuery;
    qryTitular: TFDQuery;
    qryAux: TFDQuery;
    procedure qryCadastroEmpresaAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
  end;

var
  dmCadastro: TdmCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses
  Model.Conexao;

{$R *.dfm}

procedure TdmCadastro.DataModuleCreate(Sender: TObject);
begin
  for var I := 0 to Pred(ComponentCount) do
    if (Components[I] is TFDQuery) and  ((Components[I] as TFDQuery).MasterSource = nil) then
      (Components[I] as TFDQuery).Open;
end;

procedure TdmCadastro.qryCadastroEmpresaAfterScroll(DataSet: TDataSet);
begin
  qryCadastroEmpresaEndereco.Close;
  qryCadastroEmpresaEndereco.Params[0].AsInteger := DataSet.Fields[0].AsInteger;
  qryCadastroEmpresaEndereco.Open;
end;

end.
