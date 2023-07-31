unit View.Consulta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.ExtCtrls,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmConsulta = class(TForm)
    pnlOpcoes: TPanel;
    btnFechar: TBitBtn;
    lblConsultar: TLabel;
    lbxConsulta: TDBLookupComboBox;
    grdConsulta: TDBGrid;
    procedure btnFecharClick(Sender: TObject);
  end;

var
  frmConsulta: TfrmConsulta;

implementation

{$R *.dfm}

procedure TfrmConsulta.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
