unit View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Menus, Vcl.Buttons,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmPrincipal = class(TForm)
    mmnPrincipal: TMainMenu;
    mniEmpresa: TMenuItem;
    mniEndereco: TMenuItem;
    mniFuncionario: TMenuItem;
    procedure mniClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses
  View.Principal.Helper, View.Cadastro.Empresa, View.Cadastro.Endereco, View.Consulta.Funcionario;

procedure InstanciarForm(AFormClass: TFormClass);
var
  LForm: TForm;
begin
  LForm := AFormClass.Create(Application);
  LForm.ShowModal;
  LForm.Free;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  mniEmpresa.FormOpen := TfrmCadastroEmpresa;
  mniEndereco.FormOpen := TfrmCadastroEndereco;
  mniFuncionario.FormOpen := TfrmConsultaFuncionario;
end;

procedure TfrmPrincipal.mniClick(Sender: TObject);
begin
  InstanciarForm((Sender as TMenuItem).FormOpen);
end;

end.
