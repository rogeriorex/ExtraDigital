unit View.Cadastro.Empresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.DBGrids,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Cadastro, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids;

type
  TfrmCadastroEmpresa = class(TfrmCadastro)
    grdEndereco: TDBGrid;
    procedure FormCreate(Sender: TObject);
  end;

var
  frmCadastroEmpresa: TfrmCadastroEmpresa;

implementation

uses
  Model.Cadastro, View.CadastroDetalhe.Empresa;

{$R *.dfm}

procedure TfrmCadastroEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  FormDetailClass := TfrmCadastroEmpresaDetalhe;
  FormDetail := frmCadastroEmpresaDetalhe;
end;

end.
