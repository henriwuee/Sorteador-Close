unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    pNome: TPanel;
    lQtd: TLabel;
    eQtd: TEdit;
    lNum: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    lE: TLabel;
    bSortear: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    procedure bSortearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  listar : Tstringlist;
  N, rand : integer;

implementation

{$R *.dfm}

procedure TForm3.bSortearClick(Sender: TObject);
begin


 try
   memo1.clear;
   listar := Tstringlist.Create;
    for N := strtoint(Edit1.Text) to strtoint(edit2.Text) do
     listar.Add(inttostr(N));
     randomize;
     while not (listar.Count = 0) do
       begin
         rand := random (listar.count);
         memo1.Lines.Add(listar[rand]);
         label1.Caption := memo1.lines.Strings [0];
         label2.Caption := memo1.lines.Strings [1];
         label3.Caption := memo1.lines.Strings [2];
         label4.Caption := memo1.lines.Strings [3];
         label5.Caption := memo1.lines.Strings [4];
         label6.Caption := memo1.lines.Strings [5];
         label7.Caption := memo1.lines.Strings [6];
         label8.Caption := memo1.lines.Strings [7];
         label9.Caption := memo1.lines.Strings [8];
         label10.Caption := memo1.lines.Strings [9];
           if memo1.lines.Count = strtoint(eQtd.Text) then exit  ;
           listar.Delete(rand);
       end;

 except

 end;
end;

end.
