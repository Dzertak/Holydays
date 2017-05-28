unit UnitStart;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TFormStart = class(TForm)
    Timer1: TTimer;
    grp1: TGroupBox;
    img6: TImage;
    lblHello: TLabel;
    lbl6: TLabel;
    lbl1: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStart: TFormStart;

implementation

{$R *.dfm}

uses UnitMain, UnitDataModule;

procedure TFormStart.Timer1Timer(Sender: TObject);
var g:Pointer;
stringConnecting:AnsiString;
begin
Timer1.Enabled:=false;
DataModule1.con1.Connected:=False;
stringConnecting:='Provider=Microsoft.Jet.OLEDB.4.0;Password="";User ID=Admin;'+
'Data Source='+GetCurrentDir+'\DateBase.mdb;Mode=Share Deny None;Extended Properties="";Jet OLEDB:System database="";'+
'Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;'+
'Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'+
'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False;'+
'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''t Copy Locale on Compact=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False' ;
DataModule1.con1.ConnectionString:=stringConnecting;
DataModule1.con1.Connected:=True;
DataModule1.qryExecutors.Active:=True;
DataModule1.qryServiceExecutors.Active:=True;
DataModule1.qrySuppliers.Active:=True;
DataModule1.qryServiceSuppliers.Active:=True;
DataModule1.qryCustomers.Active:=True;
DataModule1.qryHolydays.Active:=True;
DataModule1.qryOrderExecutors.Active:=True;
DataModule1.qryOrderSuppliers.Active:=True;


Application.CreateForm(TFormMain,FormMain);
g:=@Application.MainForm;
Pointer(G^):=FormMain;
FormMain.show;
FormStart.Close;

end;

end.
