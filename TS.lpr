program TS;
uses
  MyStrings;
// TurboStoic Command Line Interface version
type
  tsAtomType = (tsInteger, tsFloat, tsString, tsStack, tsDefintion, tsVocabulary);
  tStoicAtom = Record
    kind : tsAtomType;
    I    : Integer;
    F    : Double;
    S    : String;
  end;

var
  prompt,
  commandbuffer : String;
  done : boolean;
  i,j,k : integer;
  FileName : string;
  Src : TextFile;

  Procedure ProcessCommand(S: String);
  var
    thing : string;
  begin
    While NOT Done AND (S<> '') do
    begin
      Thing := Grabstring(S);
      If thing = 'quit' then done := true;
      WriteLn('Processing Thing(',Thing,')');
    end;
  end;

begin
  Done := False;
  for i := 1 to ParamCount do
  begin
    Assign(Src,ParamStr(i));
    Reset(Src);
    While Not Eof(Src) do
    begin
      ReadLn(Src,CommandBuffer);
      ProcessCommand(CommandBuffer);
    end;
    Close(Src);
  end;

  Prompt := 'TurboStoic: ';
  While Not Done do
  begin
    Write(prompt);
    ReadLn(commandbuffer);
    ProcessCommand(CommandBuffer);
  end;
end.

