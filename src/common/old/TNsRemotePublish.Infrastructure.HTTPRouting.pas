unit TNSRemotePublish.Infrastructure.HTTPRouting;

interface

uses
  SynCommons,
  System.Generics.Collections,
  System.JSON.Serializers,
  System.SysUtils;

type
  [JsonSerialize(TJsonMemberSerialization.&Public)]
  TMVCRoute = class
    private
      fcontrollername: string;
      fneedStaticController: Boolean;
      fstaticfilepath : string;
      frelativepath: string;
      fmethod : TArray<string>;
      fisdefault: Boolean;
      procedure SetStaticFilePath(const Value: string);
    published
      property Name : string read fcontrollername write fcontrollername;
      property IsDefault : Boolean read fisdefault write fisdefault;
      property RelativePath : string read frelativepath write frelativepath;
      property needStaticController : Boolean read fneedStaticController write fneedStaticController;
      property StaticFilePath : string read fstaticfilepath write SetStaticFilePath;
      property Methods : TArray<string> read fmethod write fmethod;
      function isValidMethod(const Method : string) : Boolean;

  end;

implementation

procedure TMVCRoute.SetStaticFilePath(const Value: string);
begin
  fstaticfilepath := IncludeTrailingBackslash(Value);
end;

function TMVCRoute.isValidMethod(const Method: string): Boolean;
var
  str : string;
begin
  for str in Methods do
  begin
    Result := str = Method;
    if Result then Break;
  end;
end;

end.

