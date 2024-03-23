unit tugas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    ADOConnection1:tADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
        nik,nama,umur,alamat,nomor_hp,nomor_antrian:string;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
     try ADOConnection1.BeginTrans;
    with ADOQuery1 do
    begin
    Close;
    SQL.Clear;
      SQL.Add( 'select*from pasien1' );
         //menampilkan database
      open;
    end;
    ADOConnection1.CommitTrans;
    DataSource1.DataSet:=ADOQuery1;
    DBGrid1.DataSource:=DataSource1;
    except
    ADOConnection1.RollbackTrans;
  end;
end;



procedure TForm1.Button2Click(Sender: TObject);
begin
nik := Edit2.Text;
nama:= Edit3.Text;
umur:= Edit4.Text ;
alamat :=Edit5.Text;
nomor_hp :=Edit6.Text;
nomor_antrian :=Edit7.Text;
   try ADOConnection1.BeginTrans;
    with ADOQuery1 do
    begin
    Active := False;
    //untuk mhs
    SQL.Clear;
      SQL.Add('INSERT INTO pasien1 VALUES ('+
              (nik)+','+                 //mengisi didalam table
               QuotedStr(nama)+','+
              (umur)+','+
              QuotedStr(alamat)+','+
               (nomor_hp)+','+
                (nomor_antrian)+')');
      ExecSQL;
      end;
    ADOConnection1.CommitTrans;
    ShowMessage('Masukkkk');
    except
    ADOConnection1.RollbackTrans;
    ShowMessage('..............');
  end;
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
nik := Edit2.Text;
nama:= Edit3.Text;
umur:= Edit4.Text ;
alamat :=Edit5.Text;
nomor_hp :=Edit6.Text;
nomor_antrian :=Edit7.Text;
   try ADOConnection1.BeginTrans;
    with ADOQuery1 do
    begin
    Active := False;
    SQL.Clear;
      SQL.Add('UPDATE pasien1 SET nama= '+
              QuotedStr(nama)+',umur='+             //mengubah data
               QuotedStr(umur)+',alamat='+
               QuotedStr(alamat)+',nomor_hp='+
               QuotedStr(nomor_hp)+',nomor_antrian='+
                QuotedStr(nomor_antrian)+'WHERE NIK='+
              (nik));
      ExecSQL;
end;
    ADOConnection1.CommitTrans;
    ShowMessage('Masukkkk');
    except
    ADOConnection1.RollbackTrans;
    ShowMessage('..............');
  end;
end;



procedure TForm1.Button4Click(Sender: TObject);
begin
nik := Edit2.Text;
nama:= Edit3.Text;
umur:= Edit4.Text ;
alamat :=Edit5.Text;
nomor_hp :=Edit6.Text;
nomor_antrian :=Edit7.Text;

   try ADOConnection1.BeginTrans;
    with ADOQuery1 do
    begin
    Active := False;
    SQL.Clear;
      SQL.Add('DELETE FROM pasien1 WHERE NIK= '+
              QuotedStr(nik));
      ExecSQL;
    end;
    ADOConnection1.CommitTrans;
    ShowMessage('KE HAPUS AH');
    except
    ADOConnection1.RollbackTrans;
    ShowMessage('..............');
  end;
end;




procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
with ADOQuery1 do
  begin
    Edit2.Text:=FieldValues['NIK'];    //untuk tampilkan data pada edit text .
    Edit3.Text:=FieldValues['nama'];
    Edit4.Text:=FieldValues['umur'];
    Edit5.Text:=FieldValues['alamat'];
    Edit6.Text:=FieldValues['nomor_hp'];
    Edit7.Text:=FieldValues['nomor_antrian']
  end;
end;


end.
