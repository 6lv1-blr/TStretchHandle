program DemoTStrechHandles;

uses
  Forms,
  TestHandlesResize in 'TestHandlesResize.pas' {Form1};

{$R *.RES}

begin
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
