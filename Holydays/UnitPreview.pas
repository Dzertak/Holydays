unit UnitPreview;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxExportPDF, frxDBSet,
  frxPreview;

type
  TFormPreview = class(TForm)
    frxprvw1: TfrxPreview;
    frxdbdtst1: TfrxDBDataset;
    frxrprt1: TfrxReport;
    frxpdfxprt1: TfrxPDFExport;
    frxdbdtst2: TfrxDBDataset;
    frxrprt2: TfrxReport;
    frxpdfxprt2: TfrxPDFExport;
    frxdbdtst3: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPreview: TFormPreview;

implementation

{$R *.dfm}

uses UnitDataModule;

end.
