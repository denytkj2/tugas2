program project1_deny_tkj2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, unit1_deny_tkj2
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='tugaspd2_deny_tkj2';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TTugas_2, Tugas_2);
  Application.Run;
end.

