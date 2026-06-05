program TS;
uses
  MyStrings;
// TurboStoic Command Line Interface version
var
  prompt,
  commandbuffer,
  thing : string;
  done : boolean;
begin
  Done := False;
  Prompt := 'TurboStoic: ';
  Repeat
    Write(prompt);
    ReadLn(commandbuffer);
    If commandbuffer = 'quit' then
      Done := True;
    While CommandBuffer <> '' do
    begin
      Thing := Grabstring(CommandBuffer);
      WriteLn('Processing Thing(',Thing,')');
    end;
  until Done;
end.

