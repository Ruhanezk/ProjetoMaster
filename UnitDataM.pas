unit UnitDataM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Phys.IBBase, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  Tudatam = class(TDataModule)
    FDConnection1: TFDConnection;
    qcliente: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qestoque: TFDQuery;
    qvendas: TFDQuery;
    DTSCliente: TDataSource;
    DTSEstoque: TDataSource;
    DTSVendas: TDataSource;
    qestoqueCONTROLE: TIntegerField;
    qestoquePRODUTO: TStringField;
    qestoqueTIPOBARRA: TStringField;
    qestoqueCODBARRAS: TStringField;
    qestoqueUNIDADE: TStringField;
    qestoquePRECOCUSTO: TBCDField;
    qestoquePERCLUCRO: TBCDField;
    qestoquePRECOVENDA: TBCDField;
    qestoqueCODGRUPO: TIntegerField;
    qestoqueGRUPO: TStringField;
    qestoqueOBS: TMemoField;
    qestoqueCODFORNECEDOR: TIntegerField;
    qestoqueFORNECEDOR: TStringField;
    qestoqueTAMANHO: TStringField;
    qestoquePESO: TBCDField;
    qestoqueCUSTOULTIMACOMPRA: TBCDField;
    qestoqueCUSTOMEDIO: TBCDField;
    qestoqueQTDETOTALCOMPRADA: TBCDField;
    qestoqueQTDETOTALVENDIDA: TBCDField;
    qestoqueDATAULTIMACOMPRA: TDateField;
    qestoqueDATAULTIMAVENDA: TDateField;
    qestoqueDATAHORACADASTRO: TSQLTimeStampField;
    qestoqueQTDEMINIMA: TBCDField;
    qestoqueQTDEMAXIMA: TBCDField;
    qestoqueQTDE: TBCDField;
    qestoqueATIVO: TStringField;
    qestoqueNCM: TStringField;
    qestoquePERCREDITOCICMS: TBCDField;
    qestoqueUSAGRADE: TStringField;
    qestoqueUSASERIAL: TStringField;
    qestoqueORIGEM: TStringField;
    qestoqueCODTRIBUTACAOIPI: TStringField;
    qestoqueTRIBUTACAOIPI: TStringField;
    qestoqueCODTRIBUTACAOPIS: TStringField;
    qestoqueCODTRIBUTACAOCOFINS: TStringField;
    qestoqueTRIBUTACAOPIS: TStringField;
    qestoqueTRIBUTACAOCOFINS: TStringField;
    qestoqueTIPOTRIBUTACAO: TStringField;
    qestoquePERCICMSSTINTERNA: TFMTBCDField;
    qestoquePERCMVAORIGINAL: TFMTBCDField;
    qestoquePOSSUIICMSST: TStringField;
    qestoqueISENTO: TStringField;
    qestoquePERCICMSPROPRIOST: TFMTBCDField;
    qestoqueIAT: TStringField;
    qestoqueIPPT: TStringField;
    qestoqueTRIBUTADO: TStringField;
    qestoqueCSOSN: TStringField;
    qestoqueDESCRICAOCSOSN: TStringField;
    qestoquePESADO: TStringField;
    qestoqueBASECALCULOICMSSTRETIDO: TFMTBCDField;
    qestoqueVALORICMSSTRETIDO: TFMTBCDField;
    qestoqueALIQUOTAICMSECF: TFMTBCDField;
    qestoqueFOTO: TBlobField;
    qestoqueMD5: TStringField;
    qestoqueMENSAGEMNFE: TStringField;
    qestoqueCODMENSAGEMNFE: TIntegerField;
    qestoqueCODUNIDADEMEDIDA: TIntegerField;
    qestoqueCODAPLICACAOPRODUTO: TStringField;
    qestoqueAPLICACAOPRODUTO: TStringField;
    qestoqueMD5E2: TStringField;
    qestoqueQTDEINICIAL: TBCDField;
    qestoqueALIQUOTAISS: TBCDField;
    qestoqueCODIMPOSTOMEDIO: TIntegerField;
    qestoquePERCIMPOSTOMEDIO: TCurrencyField;
    qestoqueCODCSTORIGEM: TIntegerField;
    qestoqueCODIGOCSTORIGEM: TIntegerField;
    qestoqueCODEMITENTE: TIntegerField;
    qestoqueDIASVALIDADEPRODUTO: TIntegerField;
    qestoqueFATORCONVERSAO: TStringField;
    qestoqueTRIBUTACAOSERVICO: TStringField;
    qestoqueREDUCAOBASECALCULOSERVICO: TFMTBCDField;
    qestoqueSTATUS: TStringField;
    qestoqueDESCRICAOCOMPLEMENTAR: TStringField;
    qestoqueREFERENCIA: TStringField;
    qestoquePRECOVENDAUSS: TFMTBCDField;
    qestoquePERCMAXIMODESCONTO: TFMTBCDField;
    qestoqueVALORCOMISSAOFIXO: TFMTBCDField;
    qestoquePERCCOMISSAO: TFMTBCDField;
    qestoquePRECOMINIMOUSS: TFMTBCDField;
    qestoquePRECOMINIMO: TFMTBCDField;
    qestoqueCODCOMPRA: TIntegerField;
    qestoqueVALORCONVERSAO: TFMTBCDField;
    qestoqueVALORFRETE: TBCDField;
    qestoqueVALOROUTROS: TBCDField;
    qestoqueVALORICMSST: TBCDField;
    qestoqueVALORIPI: TBCDField;
    qestoqueVALORUNITARIOCOMPRA: TBCDField;
    qestoquePERCPIS: TFMTBCDField;
    qestoquePERCCOFINS: TFMTBCDField;
    qestoqueCAMPO1: TStringField;
    qestoqueCAMPO2: TStringField;
    qestoqueCAMPO3: TStringField;
    qestoqueCAMPO4: TStringField;
    qestoqueCAMPO5: TStringField;
    qestoqueCAMPO6: TStringField;
    qestoqueCAMPO7: TStringField;
    qestoqueCAMPO8: TStringField;
    qestoqueCAMPO9: TStringField;
    qestoqueCAMPO10: TStringField;
    qestoqueMARCA: TStringField;
    qestoquePERCREDUCAOBC: TFMTBCDField;
    qestoquePERCREDUCAOBCST: TFMTBCDField;
    qestoqueCODSUBGRUPO: TIntegerField;
    qestoqueSUBGRUPO: TStringField;
    qestoqueCONTROLARVALIDADE: TStringField;
    qestoqueCODMARCA: TIntegerField;
    qestoquePRECOREVENDA: TFMTBCDField;
    qestoquePERCIPI: TFMTBCDField;
    qestoqueCFOP: TStringField;
    qestoqueUNIDADECONVERSAOVENDA: TStringField;
    qestoqueVALORCONVERSAOVENDA: TFMTBCDField;
    qestoqueCODTABELAPRECO: TIntegerField;
    qestoqueNOMETABELAPRECO: TStringField;
    qestoquePERCIMPOSTOMEDIOESTADUAL: TFMTBCDField;
    qestoquePERCIMPOSTOMEDIOMUNICIPAL: TFMTBCDField;
    qestoqueCODIGOENQUADRAMENTOIPI: TStringField;
    qestoqueCEST: TStringField;
    qestoqueQTDEEMPRODUCAO: TBCDField;
    qestoqueQTDEPEDIDOVENDA: TBCDField;
    qestoqueQTDEPEDIDOCOMPRA: TBCDField;
    qestoqueQTDERESERVADA: TBCDField;
    qestoqueQTDEREAL: TBCDField;
    qestoqueQTDEEMPRODUCAOMP: TBCDField;
    qestoqueUNIDADEMEDIDAETIQUETA: TStringField;
    qestoqueFATORCONVERSAOETIQUETA: TFMTBCDField;
    qestoqueCODIGOANP: TStringField;
    qestoqueDESCRICAOANP: TStringField;
    qestoquePERCGLPCOMB: TBCDField;
    qestoquePERCGNNCOMB: TBCDField;
    qestoquePERCGNICOMB: TBCDField;
    qestoqueVALORPARTIDACOMB: TFMTBCDField;
    qestoqueCNPJFABRICANTE: TStringField;
    qestoqueCODBENEFICIOFISCAL: TStringField;
    qestoqueCODIGOANVISA: TStringField;
    qestoqueSELOIPI: TStringField;
    qestoqueALIQUOTAFCP: TFMTBCDField;
    qestoquePERCFCPST: TFMTBCDField;
    qestoqueCODUNIDADETRIBUTAVEL: TIntegerField;
    qestoqueUNIDADETRIBUTAVEL: TStringField;
    qestoqueQTDETRIBUTAVEL: TBCDField;
    qestoqueDESMONTARNAVENDA: TIntegerField;
    qestoqueALIQUOTAICMSSTRET: TFMTBCDField;
    qestoqueVALORBCICMSSTRET: TFMTBCDField;
    qestoqueVALORICMSSTRET: TFMTBCDField;
    qestoqueALIQUOTAICMSEFET: TBCDField;
    qestoquePERCREDUCAOICMSEFET: TBCDField;
    qestoqueVALORBCICMSEFET: TFMTBCDField;
    qestoqueVALORICMSEFET: TFMTBCDField;
    qestoqueVALORICMSSUBSTITUTO: TFMTBCDField;
    qestoqueCODBARRASCAIXA: TStringField;
    qestoqueENVIARDADOS: TIntegerField;
    qestoqueVALORPMC: TFMTBCDField;
    qestoqueMD5O: TStringField;
    qestoqueMD5S: TStringField;
    qestoqueVALORFCPST: TFMTBCDField;
    qestoqueLOCALIZACAO: TStringField;
    qestoqueVOLUME: TIntegerField;
    qestoqueMOSTRARCOZINHA: TStringField;
    qestoqueCODBARRASINTERNO: TStringField;
    qestoqueCODBARRASTRIB: TStringField;
    qclienteCONTROLE: TIntegerField;
    qclienteCLIENTE: TStringField;
    qclienteENDERECO: TStringField;
    qclienteCOMPLEMENTO: TStringField;
    qclienteBAIRRO: TStringField;
    qclienteCODCIDADE: TIntegerField;
    qclienteCIDADE: TStringField;
    qclienteUF: TStringField;
    qclientePAIS: TStringField;
    qclienteCEP: TStringField;
    qclienteNATURALIDADE: TStringField;
    qclienteTIPOCLIENTE: TStringField;
    qclienteRG: TStringField;
    qclienteCPF: TStringField;
    qclienteCNPJ: TStringField;
    qclienteIE: TStringField;
    qclienteIM: TStringField;
    qclienteDATANASCIMENTO: TDateField;
    qclienteDATAHORACADASTRO: TSQLTimeStampField;
    qclientePAI: TStringField;
    qclienteMAE: TStringField;
    qclienteTELEFONE: TStringField;
    qclienteCELULAR: TStringField;
    qclienteEMAIL: TStringField;
    qclienteESTADOCIVIL: TStringField;
    qclienteATIVO: TStringField;
    qclienteFANTASIA: TStringField;
    qclienteOBS: TMemoField;
    qclienteLIMITECREDITO: TFMTBCDField;
    qclienteNOMECONJUGE: TStringField;
    qclienteDATAULTIMAVENDA: TDateField;
    qclienteDIASSEMCOMPRAR: TIntegerField;
    qclienteCODCONVENIO: TIntegerField;
    qclienteCONVENIO: TStringField;
    qclientePROFISSAO: TStringField;
    qclienteEMPRESAQUETRABALHA: TStringField;
    qclienteFONETRABALHO: TStringField;
    qclienteRENDAMENSAL: TFMTBCDField;
    qclienteTOTALVENDIDO: TFMTBCDField;
    qclienteNACIONALIDADE: TStringField;
    qclienteNUMERO: TStringField;
    qclienteCODCONSULTASPC: TIntegerField;
    qclienteSEXO: TStringField;
    qclienteCODIGOCIDADEIBGE: TStringField;
    qclienteCODEMITENTE: TIntegerField;
    qclienteNOMECONTATOJURIDICA: TStringField;
    qclienteEMAIL2: TStringField;
    qclienteSTATUS: TStringField;
    qclienteMD5L: TStringField;
    qclienteSERIAL: TStringField;
    qclienteCODGRUPO: TIntegerField;
    qclienteGRUPO: TStringField;
    qclienteFOTO: TMemoField;
    qclienteTRIBUTACAO: TStringField;
    qclienteCAMPO1: TStringField;
    qclienteCAMPO2: TStringField;
    qclienteCAMPO3: TStringField;
    qclienteCAMPO4: TStringField;
    qclienteCAMPO5: TStringField;
    qclienteCAMPO6: TStringField;
    qclienteCAMPO7: TStringField;
    qclienteCAMPO8: TStringField;
    qclienteCAMPO9: TStringField;
    qclienteCAMPO10: TStringField;
    qclienteISSMUNICIPIO: TFMTBCDField;
    qclienteDADOSADICIONAIS: TMemoField;
    qclienteSITE: TStringField;
    qclienteCODIGOPAIS: TStringField;
    qclienteCSOSN: TStringField;
    qclientePERCICMSPROPRIOST: TFMTBCDField;
    qclientePERCMVAORIGINAL: TFMTBCDField;
    qclientePERCICMSSTINTERNA: TFMTBCDField;
    qclientePERCREDUCAOBCST: TFMTBCDField;
    qclienteDESCRICAOCSOSN: TStringField;
    qclienteCODIGOCSTORIGEM: TIntegerField;
    qclienteORIGEM: TStringField;
    qclientePOSSUIICMSST: TStringField;
    qclienteISENTO: TStringField;
    qclienteTRIBUTADO: TStringField;
    qclienteCODCSTORIGEM: TIntegerField;
    qclienteMENSAGEMFISCAL: TStringField;
    qclienteCODTABELAPRECO: TIntegerField;
    qclienteTABELAPRECO: TStringField;
    qclienteCODVENDEDOR: TIntegerField;
    qclienteVENDEDOR: TStringField;
    qclienteCODPARCELAPREDEFINIDA: TIntegerField;
    qclientePARCELAPREDEFINIDA: TStringField;
    qclienteCODTRANSPORTADORA: TIntegerField;
    qclienteTRANSPORTADORA: TStringField;
    qclienteVALORFRETE: TFMTBCDField;
    qclienteMD5O: TStringField;
    qclienteSUFRAMA: TStringField;
    qclientePERCFCP: TFMTBCDField;
    qclientePERCREDUCAOBC: TFMTBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  udatam: Tudatam;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitCliente, UnitEstoque, UnitMenu, UnitNovoAlteraCliente;

{$R *.dfm}

end.