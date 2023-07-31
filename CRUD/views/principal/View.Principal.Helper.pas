unit View.Principal.Helper;

interface

uses
  Vcl.Menus, Vcl.Forms;

type
  TFormClass = class of TForm;
  TMenuItemHelper = class helper for TMenuItem
  private
    function GetFormOpen: TFormClass;
    procedure SetFormOpen(const Value: TFormClass);
  public
    property FormOpen: TFormClass Read GetFormOpen write SetFormOpen;
  end;

implementation

uses
  System.Generics.Collections, System.Classes;

var
  LFormOpen: TDictionary<TComponent, TFormClass>;

{ TMenuItemHelper }

function TMenuItemHelper.GetFormOpen: TFormClass;
begin
  Result := nil;
  if LFormOpen.ContainsKey(self) then
    Result := LFormOpen.Items[self];
end;

procedure TMenuItemHelper.SetFormOpen(const Value: TFormClass);
begin
  LFormOpen.Add(self, Value);
end;

initialization

  LFormOpen := TDictionary<TComponent, TFormClass>.Create;

finalization

  LFormOpen.free;

end.
