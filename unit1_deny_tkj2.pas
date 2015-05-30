unit unit1_deny_tkj2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TTugas_2 }

  TTugas_2 = class(TForm)
    Tentang: TCheckBox;
    Hasil: TLabel;
    Tekan: TButton;
    Reset: TButton;
    Kolom: TEdit;
    kata: TLabel;
    procedure ResetClick(Sender: TObject);
    procedure TekanClick(Sender: TObject);
    procedure TentangChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Tugas_2: TTugas_2;

implementation

{$R *.lfm}

{ TTugas_2 }

procedure TTugas_2.TekanClick(Sender: TObject);
begin
   Hasil.caption:=Kolom.Text;
end;

procedure TTugas_2.TentangChange(Sender: TObject);
begin
  if MessageDlg('Konfirmasi', 'Anda yakin untuk keluar?', mtConfirmation,
   [mbYes, mbNo],0) = mrYes
  then Application.terminate;
  ShowMessage('program ini dibuat oleh deny_tkj2') ;
end;

procedure TTugas_2.ResetClick(Sender: TObject);
begin
  Hasil.caption:='';
  Kolom.clear;
end;

end.

