unit TNSRemotePublish.Infrastructure.HTTPRequest;

interface

type
  TRequest = class
    protected
       fbruteurl : string;
       fpath : string;
       fextraparams : TArray<string>;
       fparameters : TArray<string>;
       fmethod : string;
    public
      property BruteURL : string read fbruteurl write fbruteurl;
      property Path : string read fpath write fpath;
      property Extraparams : TArray<string> read fextraparams write fextraparams;
      property Parameters : TArray<string> read fparameters write fparameters;
      property Method : string read fmethod write fmethod;
  end;


implementation

end.