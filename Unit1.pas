unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormPaint(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  self.DoubleBuffered:=true; //∑¿÷πÕº–Œ…¡À∏
end;

procedure TForm1.FormPaint(Sender: TObject);
var
  x: Integer;
  y, a: Double;
begin
  Canvas.Pen.Width := 3;
  Canvas.MoveTo(0, Trunc(self.ClientHeight / 2));
  for x := 0 to self.ClientWidth do
    begin a := (x / self.ClientWidth) * 2 * Pi;
  y := Sin(a);
  y := (1 - y) * self.ClientHeight / 2;
  Canvas.LineTo(Trunc(x), Trunc(y));
end;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  self.Invalidate;
end;
end.
