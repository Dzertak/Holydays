unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ToolWin, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask;

type
  TFormMain = class(TForm)
    tlb1: TToolBar;
    btn2: TSpeedButton;
    btn1: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    btn5: TSpeedButton;
    btn6: TToolButton;
    pnlExecutors: TPanel;
    pnlSuppliers: TPanel;
    pnlCustomers: TPanel;
    pnlHolydays: TPanel;
    img1: TImage;
    grp1: TGroupBox;
    grp2: TGroupBox;
    img2: TImage;
    grp3: TGroupBox;
    img3: TImage;
    grp4: TGroupBox;
    img4: TImage;
    pnlSettings: TPanel;
    grp5: TGroupBox;
    img5: TImage;
    dbgrd1: TDBGrid;
    dbnvgr1: TDBNavigator;
    grp6: TGroupBox;
    dbgrd2: TDBGrid;
    edtSearchServiceExecutors: TEdit;
    btnAddServiceExecutors: TSpeedButton;
    dbnvgr2: TDBNavigator;
    grp7: TGroupBox;
    btn7: TSpeedButton;
    edtSearchServiceSuppliers: TEdit;
    dbnvgr3: TDBNavigator;
    dbgrd4: TDBGrid;
    dbnvgr4: TDBNavigator;
    btn8: TToolButton;
    dbnvgr5: TDBNavigator;
    edtSearchCustomers: TEdit;
    dbgrd5: TDBGrid;
    dbgrd3: TDBGrid;
    edtSearchSuppliers: TEdit;
    edtSearchExecutors: TEdit;
    dbgrd6: TDBGrid;
    lbl1: TLabel;
    grp8: TGroupBox;
    lbl2: TLabel;
    btn9: TSpeedButton;
    lbl3: TLabel;
    btn10: TSpeedButton;
    dlgOpen1: TOpenDialog;
    Label4: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    pnlHello: TPanel;
    grp9: TGroupBox;
    img6: TImage;
    lblHello: TLabel;
    lbl6: TLabel;
    img7: TImage;
    img8: TImage;
    img9: TImage;
    img10: TImage;
    img11: TImage;
    dbedtExe: TDBEdit;
    edt1: TEdit;
    img12: TImage;
    lbl7: TLabel;
    grp10: TGroupBox;
    lbl8: TLabel;
    btn11: TSpeedButton;
    lbl9: TLabel;
    btn12: TSpeedButton;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    btnAddHolydays: TSpeedButton;
    dbedt_: TDBEdit;
    dbedt_1: TDBEdit;
    dbnvgr6: TDBNavigator;
    btn13: TSpeedButton;
    btnSortYear: TSpeedButton;
    cbb1: TComboBox;
    btnPrint: TSpeedButton;
    grp11: TGroupBox;
    dbgrd8: TDBGrid;
    grp12: TGroupBox;
    dbgrd7: TDBGrid;
    procedure btn1Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn9Click(Sender: TObject);
    procedure btn10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSearchSuppliersChange(Sender: TObject);
    procedure edtSearchServiceSuppliersChange(Sender: TObject);
    procedure edtSearchExecutorsChange(Sender: TObject);
    procedure edtSearchServiceExecutorsChange(Sender: TObject);
    procedure edtSearchCustomersChange(Sender: TObject);
    procedure btnAddServiceExecutorsClick(Sender: TObject);
    procedure dbedtExeChange(Sender: TObject);
    procedure dbedt_Change(Sender: TObject);
    procedure dbedt_1Change(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure btnAddHolydaysClick(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure btnSortYearClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private
    { Private declarations }
  public
  id_executors:string;
  id_suppliers:string;
  year1:string;
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses UnitDataModule, UnitAddServiceExecutors, UnitAddServiceSuppliers,
  UnitCreateHolyday, UnitSortYear, UnitPreview;

procedure TFormMain.btn10Click(Sender: TObject);
var
S,dir:String;
begin
Dir := ExtractFilePath(Application.ExeName);
if Application.MessageBox(PChar('������� ��������� ����� ��?'),'��������� �����������!',Mb_OkCancel)=id_OK then
begin
S:=dir+'backup\' + DateToStr(Date) + ' - '+ StringReplace(TimeToStr(Time), ':', '.', [rfReplaceAll, rfIgnoreCase]) + '.mdb';
CopyFile(PChar(dlgOpen1.FileName),PChar(S),True);
ShowMessage('��������� ����� ������� �������!');
end;

end;

procedure TFormMain.btn11Click(Sender: TObject);
begin
if dlgOpen1.Execute then
lbl12.Caption:=dlgOpen1.FileName;
end;

procedure TFormMain.btn12Click(Sender: TObject);
var S,dir:String;
stringConnecting:AnsiString;
begin
Dir :=  ExtractFilePath(Application.ExeName);
if Application.MessageBox(PChar('����������� ���� ������?'),'�������������� ��!',Mb_OkCancel)=id_OK then
begin
DataModule1.con1.Connected:=False;
Sleep(3000);
S:=dir+'DataBase.mdb';
CopyFile(PChar(dlgOpen1.FileName),PChar(S),True);
ShowMessage('���� ������ ������� ������������!');
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
end;
end;

procedure TFormMain.btn13Click(Sender: TObject);
begin
if Length(dbedt_1.Text)>0 then
begin
DataModule1.cmd1.CommandText:='Delete From ��������� Where ���_���������='+dbedt_1.Text;
DataModule1.cmd1.Execute;
DataModule1.qryHolydays.Active:=False;
DataModule1.qryHolydays.Active:=True;
end;
end;

procedure TFormMain.btn1Click(Sender: TObject);
begin
pnlHolydays.Visible:=True;
pnlSettings.Visible:=False;
pnlExecutors.Visible:=False;
pnlSuppliers.Visible:=False;
pnlCustomers.Visible:=False;
pnlHello.Visible:=False;
end;

procedure TFormMain.btn2Click(Sender: TObject);
begin
pnlHolydays.Visible:=False;
pnlSettings.Visible:=True;
pnlExecutors.Visible:=False;
pnlSuppliers.Visible:=False;
pnlCustomers.Visible:=False;
pnlHello.Visible:=False;
end;

procedure TFormMain.btn3Click(Sender: TObject);
begin
pnlHolydays.Visible:=False;
pnlSettings.Visible:=False;
pnlExecutors.Visible:=True;
pnlSuppliers.Visible:=False;
pnlCustomers.Visible:=False;
pnlHello.Visible:=False;
end;

procedure TFormMain.btn4Click(Sender: TObject);
begin
pnlHolydays.Visible:=False;
pnlSettings.Visible:=False;
pnlExecutors.Visible:=False;
pnlSuppliers.Visible:=True;
pnlCustomers.Visible:=False;
pnlHello.Visible:=False;
end;

procedure TFormMain.btn5Click(Sender: TObject);
begin
pnlHolydays.Visible:=False;
pnlSettings.Visible:=False;
pnlExecutors.Visible:=False;
pnlSuppliers.Visible:=False;
pnlCustomers.Visible:=True;
pnlHello.Visible:=False;
end;

procedure TFormMain.btn7Click(Sender: TObject);
begin
if(Length(dbedtExe.Text)=0) then
ShowMessage('������� �������� �����������')
else
begin
id_suppliers:=dbedt_.Text;
FormAddServiceSuppliers.ShowModal;
end;
end;

procedure TFormMain.btn9Click(Sender: TObject);
begin
if dlgOpen1.Execute then
Label1.Caption:=dlgOpen1.FileName;
end;

procedure TFormMain.btnAddHolydaysClick(Sender: TObject);
begin
FormCreateHolyday.Show;
end;

procedure TFormMain.btnAddServiceExecutorsClick(Sender: TObject);
begin
if(Length(dbedtExe.Text)=0) then
ShowMessage('������� �������� �����������')
else
begin
id_executors:=dbedtExe.Text;
FormAddServiceExecutors.ShowModal;
end;
end;

procedure TFormMain.btnPrintClick(Sender: TObject);
var spec:string;
isspec:Boolean;
begin
if cbb1.Text='�� ����' then
begin
   isspec:=False;
      with DataModule1.qryHolydays do
      begin
        Last;
        spec:=FieldByName('����_����������').AsString;
        First;
   while not Eof do
   begin
     if Copy(DataModule1.qryHolydays.Fieldbyname('����_����������').AsString,Length(DataModule1.qryHolydays.Fieldbyname('����_����������').AsString)-4,4)=Copy(spec,Length(spec)-4,4) then
     isspec:=True
     else Break;
    Next;
   end;
   end;
   if isspec=True then
   begin
        with DataModule1.qrySQL do
        begin
        SQL.Clear;
        SQL.Add('SELECT  SUM(���������) AS ���� From tmp');
        Open;
        end;
        FormPreview.frxrprt1.ShowReport();
        FormPreview.frxrprt1.Export(FormPreview.frxpdfxprt1);
   end
 else ShowMessage('�������� ������ ���� ���');
 end;
 if cbb1.Text='�� ���� ���������' then
 begin
isspec:=False;
      with DataModule1.qryHolydays do
      begin
        Last;
        spec:=FieldByName('���_���������').AsString;
        First;
   while not Eof do
   begin
     if Copy(DataModule1.qryHolydays.Fieldbyname('���_���������').AsString,1,4)=Copy(spec,1,4) then
     isspec:=True
     else Break;
    Next;
   end;
   end;
   if isspec=True then
   begin
        with DataModule1.qrySQL do
        begin
        SQL.Clear;
        SQL.Add('SELECT  SUM(���������) AS ���� From tmp');
        Open;
        end;
        FormPreview.frxrprt2.ShowReport();
        FormPreview.frxrprt2.Export(FormPreview.frxpdfxprt2);
   end
 else ShowMessage('�������� ������ ��� ���������');
 end;

end;

procedure TFormMain.btnSortYearClick(Sender: TObject);
begin
FormSortYear.ShowModal;
end;

procedure TFormMain.dbedtExeChange(Sender: TObject);
begin
if(Length(dbedtExe.Text)>0)then
with DataModule1.qryServiceExecutors do
begin
  SQL.Clear;
  SQL.Add('Select * From ������_������������ Where ���_�����������='+dbedtExe.Text);
  Open;
end;
end;

procedure TFormMain.dbedt_1Change(Sender: TObject);
begin
if(Length(dbedt_1.Text)>0)then
begin
 with DataModule1.qryOrderExecutors do
 begin
   SQL.Clear;
   SQL.Add('Select �.�������� as ��������, �.��������� as ���������');
   SQL.Add('From ������_����������� �, ������_����������� �, ��������� �');
   SQL.Add('Where �.���_���������=�.���_���������');
   SQL.Add('AND �.���_������=�.���_������ AND �.���_���������='+dbedt_1.Text);
   Open;
 end;
with DataModule1.qryOrderSuppliers do
begin
     SQL.Clear;
   SQL.Add('Select �.�������� as ��������, �.��������� as ���������');
   SQL.Add('From ������_������������ �, ������_������������ �, ��������� �');
   SQL.Add('Where �.���_���������=�.���_���������');
   SQL.Add('AND �.���_������=�.���_������ AND �.���_���������='+dbedt_1.Text);
   Open;
end;
end;
end;

procedure TFormMain.dbedt_Change(Sender: TObject);
begin
if(Length(dbedt_.Text)>0)then
 with DataModule1.qryServiceSuppliers do
begin
  SQL.Clear;
  SQL.Add('Select * From ������_����������� Where ���_�����������='+dbedt_.Text);
  Open;
end;
end;

procedure TFormMain.edt1Change(Sender: TObject);
var command:AnsiString;
begin
 year1:='';
 DataModule1.cmd1.CommandText:='Drop Table tmp';
DataModule1.cmd1.Execute;
with DataModule1.qryHolydays do
begin
  SQL.Clear;
  SQL.Add('Select �.���_���������,�.���_����_���������, �.���_���������, �.��������, �.�����_����������,�.����_����������,�.���������, �.�������, ��.�������� as ���_���������, �.��� as �������� From ��������� �, ����_���������� ��, ��������� �');
  SQL.Add('Where �.���_����_���������=��.���_����_��������� AND �.���_���������=�.���_���������');
  SQL.Add('AND (��.�������� LIKE ''%'+edt1.Text+'%'' OR �.��� LIKE ''%'+edt1.Text+'%'' OR ');
  SQL.Add(' �.�������� LIKE ''%'+edt1.Text+'%'' OR  �.�����_���������� LIKE ''%'+edt1.Text+'%'' OR �.��������� LIKE ''%'+edt1.Text+'%'')');
  Open;
  end;
  command:='Select �.���_���������,�.���_����_���������, �.���_���������, �.��������, �.�����_����������,�.����_����������,�.���������, �.�������, ��.�������� as ���_���������, �.��� as �������� '+
'Into tmp From ��������� �, ����_���������� ��, ��������� � '+
'Where �.���_����_���������=��.���_����_��������� AND �.���_���������=�.���_��������� AND (��.�������� LIKE ''%'+edt1.Text+'%'' OR �.��� LIKE ''%'+edt1.Text+'%'' OR �.�������� LIKE ''%'+edt1.Text+'%'' OR  �.�����_���������� LIKE ''%'+edt1.Text+'%'' OR �.��������� LIKE ''%'+edt1.Text+'%'')';
DataModule1.cmd1.CommandText:=command;
DataModule1.cmd1.Execute;
end;

procedure TFormMain.edtSearchCustomersChange(Sender: TObject);
begin
    with DataModule1.qryCustomers do
begin
  SQL.Clear;
  SQL.Add('Select * From ��������� �');
  SQL.Add('Where �.��� LIKE ''%'+edtSearchCustomers.Text+'%'' OR ');
  SQL.Add('�.����������� LIKE ''%'+edtSearchCustomers.Text+'%'' OR ');
   SQL.Add('�.����� LIKE ''%'+edtSearchCustomers.Text+'%'' OR ');
  SQL.Add('�.������� LIKE ''%'+edtSearchCustomers.Text+'%''');
  Open;
end;
end;

procedure TFormMain.edtSearchExecutorsChange(Sender: TObject);
begin
with DataModule1.qryExecutors do
begin
  SQL.Clear;
  SQL.Add('Select * From ����������� �');
  SQL.Add('Where �.�������� LIKE ''%'+edtSearchExecutors.Text+'%'' OR ');
  SQL.Add('�.���_�����������_���� LIKE ''%'+edtSearchExecutors.Text+'%'' OR ');
   SQL.Add('�.����� LIKE ''%'+edtSearchExecutors.Text+'%'' OR ');
  SQL.Add('������� LIKE ''%'+edtSearchExecutors.Text+'%''');
  Open;
end;
end;

procedure TFormMain.edtSearchServiceExecutorsChange(Sender: TObject);
begin
with DataModule1.qryServiceExecutors do
begin
  SQL.Clear;
  SQL.Add('Select * From ������_������������ ��');
  SQL.Add('Where ��.�������� LIKE ''%'+edtSearchServiceExecutors.Text+'%'' OR ');
  SQL.Add('��.��������� LIKE ''%'+edtSearchServiceExecutors.Text+'%''');
  Open;
end;
end;

procedure TFormMain.edtSearchServiceSuppliersChange(Sender: TObject);
begin
with DataModule1.qryServiceSuppliers do
begin
  SQL.Clear;
  SQL.Add('Select * From ������_����������� ��');
  SQL.Add('Where ��.�������� LIKE ''%'+edtSearchServiceSuppliers.Text+'%'' OR ');
  SQL.Add('��.��������� LIKE ''%'+edtSearchServiceSuppliers.Text+'%''');
  Open;
end;
end;

procedure TFormMain.edtSearchSuppliersChange(Sender: TObject);
begin
with DataModule1.qrySuppliers do
begin
  SQL.Clear;
  SQL.Add('Select * From ���������� �');
  SQL.Add('Where �.�������� LIKE ''%'+edtSearchSuppliers.Text+'%'' OR ');
  SQL.Add('�.����� LIKE ''%'+edtSearchSuppliers.Text+'%'' OR ');
  SQL.Add('�.������� LIKE ''%'+edtSearchSuppliers.Text+'%''');
  Open;
end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var dir:string;
command:AnsiString;
begin
 {year1:='';
 DataModule1.cmd1.CommandText:='Drop Table tmp';
DataModule1.cmd1.Execute;
with DataModule1.qryHolydays do
begin
  SQL.Clear;
  SQL.Add('Select �.���_���������,�.���_����_���������, �.���_���������, �.��������, �.�����_����������,�.����_����������,�.���������, �.�������, ��.�������� as ���_���������, �.��� as �������� From ��������� �, ����_���������� ��, ��������� �');
  SQL.Add('Where �.���_����_���������=��.���_����_��������� AND �.���_���������=�.���_���������');
  SQL.Add('AND (��.�������� LIKE ''%'+edt1.Text+'%'' OR �.��� LIKE ''%'+edt1.Text+'%'' OR ');
  SQL.Add(' �.�������� LIKE ''%'+edt1.Text+'%'' OR  �.�����_���������� LIKE ''%'+edt1.Text+'%'' OR �.��������� LIKE ''%'+edt1.Text+'%'')');
  Open;
  end;
  command:='Select �.���_���������,�.���_����_���������, �.���_���������, �.��������, �.�����_����������,�.����_����������,�.���������, �.�������, ��.�������� as ���_���������, �.��� as �������� '+
'Into tmp From ��������� �, ����_���������� ��, ��������� � '+
'Where �.���_����_���������=��.���_����_��������� AND �.���_���������=�.���_��������� AND (��.�������� LIKE ''%'+edt1.Text+'%'' OR �.��� LIKE ''%'+edt1.Text+'%'' OR �.�������� LIKE ''%'+edt1.Text+'%'' OR  �.�����_���������� LIKE ''%'+edt1.Text+'%'' OR �.��������� LIKE ''%'+edt1.Text+'%'')';
DataModule1.cmd1.CommandText:=command;
DataModule1.cmd1.Execute;     }

Dir := ExtractFilePath(Application.ExeName);
Label4.Caption:=dir;
label6.Caption:=dir+'backup\';
Lbl10.Caption:=dir;
lbl11.Caption:=dir+'backup\';
dlgOpen1.InitialDir:=dir+'backup\';

end;

end.
