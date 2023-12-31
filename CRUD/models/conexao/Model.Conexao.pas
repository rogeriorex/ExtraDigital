unit Model.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client;

type
  TdmConexao = class(TDataModule)
    Connection: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    FBDriverLink: TFDPhysFBDriverLink;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  Connection.Connected := true;
end;

procedure TdmConexao.DataModuleDestroy(Sender: TObject);
begin
  Connection.Connected := false;
end;

end.
