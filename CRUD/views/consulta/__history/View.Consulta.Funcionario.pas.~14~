unit View.Consulta.Funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Consulta, Data.DB, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmConsultaFuncionario = class(TfrmConsulta)
    procedure FormCreate(Sender: TObject);
  end;

var
  frmConsultaFuncionario: TfrmConsultaFuncionario;

implementation

uses
  Model.Consulta;

{$R *.dfm}

procedure TfrmConsultaFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  lbxConsulta.KeyValue := grdConsulta.DataSource.DataSet.Fields[0].AsInteger;
end;

end.
