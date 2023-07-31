program CRUD;

uses
  Vcl.Forms,
  View.Principal in 'views\principal\View.Principal.pas' {frmPrincipal},
  Model.Conexao in 'models\conexao\Model.Conexao.pas' {dmConexao: TDataModule},
  Model.Cadastro in 'models\cadastro\Model.Cadastro.pas' {dmCadastro: TDataModule},
  View.CadastroDetalhe in 'views\cadastro\View.CadastroDetalhe.pas' {frmCadastroDetalhe},
  View.Principal.Helper in 'views\principal\View.Principal.Helper.pas',
  View.Cadastro.Consts in 'views\cadastro\View.Cadastro.Consts.pas',
  View.Cadastro in 'views\cadastro\View.Cadastro.pas' {frmCadastro},
  View.Cadastro.Empresa in 'views\cadastro\View.Cadastro.Empresa.pas' {frmCadastroEmpresa},
  View.Cadastro.Endereco in 'views\cadastro\View.Cadastro.Endereco.pas' {frmCadastroEndereco},
  View.CadastroDetalhe.Empresa in 'views\cadastro\View.CadastroDetalhe.Empresa.pas' {frmCadastroEmpresaDetalhe},
  View.CadastroDetalhe.Endereco in 'views\cadastro\View.CadastroDetalhe.Endereco.pas' {frmCadastroEnderecoDetalhe},
  Model.Consulta in 'models\consulta\Model.Consulta.pas' {dmConsulta: TDataModule},
  View.Consulta in 'views\consulta\View.Consulta.pas' {frmConsulta},
  View.Consulta.Funcionario in 'views\consulta\View.Consulta.Funcionario.pas' {frmConsultaFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmCadastro, dmCadastro);
  Application.CreateForm(TdmConsulta, dmConsulta);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
