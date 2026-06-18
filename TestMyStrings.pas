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
  end;
end;

procedure TestShortString;
var
  S, Value: String;
begin
  S := '"hello" rest';
  Value := GrabStoicString(S);

  AssertEqual('short value', 'hello', Value);
  AssertEqual('short remainder', ' rest', S);
end;

begin
  TestShortString;
  WriteLn('All tests passed.');
end.
