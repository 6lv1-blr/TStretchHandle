unit TestHandlesResize;

interface

uses
  SysUtils,
  WinTypes,
  WinProcs,
  Messages,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StretchHandles,
  StdCtrls,
  ExtCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    Panel1: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;

    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure Memo1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Label1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Button1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Panel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Edit1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure HandleResizerMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    StretchHandle1: TStretchHandle;
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}


procedure TForm1.Button5Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  StretchHandle1.Locked := not StretchHandle1.Locked;
  if StretchHandle1.Locked then
    Button4.Caption := 'Unlock'
  else
    Button4.Caption := 'Lock';
end;

procedure TForm1.HandleResizerMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  i: Integer;
begin
  // if StretchHandle1.ChildCount > 0 then
  // for i := 0 to StretchHandle1.ChildCount - 1 do
  // ShowMessage(StretchHandle1.Children[i].Name);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  StretchHandle1.BringToFront;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  StretchHandle1.SendToBack;
end;

procedure TForm1.FormClick(Sender: TObject);
begin
  StretchHandle1.Detach;
  StretchHandle1.Locked := False;
  Button4.Caption := 'Lock';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  StretchHandle1 := TStretchHandle.Create(self);
end;

procedure TForm1.Memo1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StretchHandle1.Attach(Memo1);
end;

procedure TForm1.Label1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StretchHandle1.Attach(Label1);
end;

procedure TForm1.Button1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StretchHandle1.Attach(Button1);
  StretchHandle1.OnMouseUp := HandleResizerMouseUp;
end;

procedure TForm1.Panel1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StretchHandle1.Attach(Panel1);
end;

procedure TForm1.Edit1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  StretchHandle1.Attach(Edit1);
end;

end.
