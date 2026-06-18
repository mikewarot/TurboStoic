program TestMyStrings;

uses
  SysUtils, MyStrings;

procedure AssertEqual(Name, Expected, Actual: String);
begin
  if Expected <> Actual then
  begin
    WriteLn('FAIL: ', Name);
    WriteLn('  Expected: ', Expected);
    WriteLn('  Actual:   ', Actual);
    Halt(1);
  end
(*
  else
    WriteLn('Passed:(',Name,') ',Expected,'=',Actual);
*)
end;

procedure TestShortString;
var
  S, Value: String;
begin
  S := '"hello" rest';
  Value := GrabStoicString(S);

  AssertEqual('short value', 'hello', Value);
  AssertEqual('short remainder', ' rest', S);

  S := '"hello world" rest';
  Value := GrabStoicString(S);
  AssertEqual('short value','hello world',Value);
  AssertEqual('short remainder',' rest', S);

  S := '""  rest';
  Value := GrabStoicString(S);
  AssertEqual('short value','',Value);
  AssertEqual('short remainder','  rest',S);

  S := '"quote: \"" rest';
  Value := GrabStoicString(S);
  AssertEqual('short value','quote: "',Value);
  AssertEqual('short remainder',' rest',S);
end;

begin
  TestShortString;
  WriteLn('All tests passed.');
end.
