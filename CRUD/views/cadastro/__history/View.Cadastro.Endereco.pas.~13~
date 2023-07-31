unit View.Cadastro.Endereco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Grids,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, View.Cadastro, Data.DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBGrids;

type
  TfrmCadastroEndereco = class(TfrmCadastro)
    procedure FormCreate(Sender: TObject);
  end;

var
  frmCadastroEndereco: TfrmCadastroEndereco;

implementation

uses
  Model.Cadastro, View.CadastroDetalhe.Endereco;

{$R *.dfm}

procedure TfrmCadastroEndereco.FormCreate(Sender: TObject);
begin
  inherited;
  FormDetailClass := TfrmCadastroEnderecoDetalhe;
  FormDetail := frmCadastroEnderecoDetalhe;
end;

end.
