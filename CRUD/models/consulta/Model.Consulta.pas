unit Model.Consulta;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TdmConsulta = class(TDataModule)
    srcConsultaFuncionario: TDataSource;
    qryConsultaFuncionario: TFDQuery;
    qryEmpresa: TFDQuery;
    srcEmpresa: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
    procedure qryEmpresaAfterScroll(DataSet: TDataSet);
  end;

var
  dmConsulta: TdmConsulta;

implementation

uses
  Model.Conexao;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConsulta.DataModuleCreate(Sender: TObject);
begin
  for var I := 0 to Pred(ComponentCount) do
    if (Components[I] is TFDQuery) and  ((Components[I] as TFDQuery).MasterSource = nil) then
      (Components[I] as TFDQuery).Open;
end;

procedure TdmConsulta.qryEmpresaAfterScroll(DataSet: TDataSet);
begin
  qryConsultaFuncionario.Close;
  qryConsultaFuncionario.Params[0].AsInteger := DataSet.Fields[0].AsInteger;
  qryConsultaFuncionario.Open;
end;

end.
