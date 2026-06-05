program TS;
// TurboStoic Command Line Interface version
var
  prompt,commandbuffer : string;
  done : boolean;
begin
  Done := False;
  Prompt := 'TurboStoic: ';
  Repeat
    Write(prompt);
    ReadLn(commandbuffer);
    If commandbuffer = 'quit' then
      Done := True;
  until Done;
end.

