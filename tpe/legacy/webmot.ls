/PROG  WEBMOT
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "v2";
PROG_SIZE	= 1768;
CREATE		= DATE 17-06-26  TIME 17:33:34;
MODIFIED	= DATE 18-03-10  TIME 13:12:10;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 91;
MEMORY_SIZE	= 2144;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
/MN
   1:  JMP LBL[999] ;
   2:   ;
   3:  LBL[7] ;
   4:  WAIT R[87]=87    ;
   5:  R[42]=0    ;
   6:  IF R[81]=81,JMP LBL[1] ;
   7:  IF R[82]=82,JMP LBL[2] ;
   8:  IF R[83]=83,JMP LBL[3] ;
   9:  IF R[84]=84,JMP LBL[4] ;
  10:  IF R[85]=85,JMP LBL[5] ;
  11:  IF R[86]=86,JMP LBL[6] ;
  12:   ;
  13:  LBL[1] ;
  14:  CALL WEBCHECK    ;
  15:  IF R[88]<>88,JMP LBL[999] ;
  16:J PR[40] 10% CNT100    ;
  17:  R[42]=R[42]+1    ;
  18:  JMP LBL[1] ;
  19:   ;
  20:  LBL[2] ;
  21:  R[50]=0    ;
  22:  LBL[21] ;
  23:  IF R[50]=R[49],JMP LBL[22] ;
  24:  R[50]=R[50]+1    ;
  25:  R[60]=50+R[50]    ;
  26:  PR[40,R[50]]=PR[40,R[50]]+R[R[60]]    ;
  27:  JMP LBL[21] ;
  28:  LBL[22] ;
  29:  CALL WEBCHECK    ;
  30:  IF R[88]<>88,JMP LBL[999] ;
  31:J PR[40] 5% CNT100    ;
  32:  R[42]=R[42]+1    ;
  33:  JMP LBL[2] ;
  34:   ;
  35:  LBL[3] ;
  36:  CALL WEBCHECK    ;
  37:  IF R[88]<>88,JMP LBL[999] ;
  38:L PR[41] 50mm/sec CNT100    ;
  39:  R[42]=R[42]+1    ;
  40:  JMP LBL[3] ;
  41:   ;
  42:  LBL[4] ;
  43:  CALL WEBCHECK    ;
  44:  IF R[88]<>88,JMP LBL[999] ;
  45:J PR[41] 5% CNT100    ;
  46:  R[42]=R[42]+1    ;
  47:  JMP LBL[4] ;
  48:   ;
  49:  LBL[5] ;
  50:  PR[41,1]=PR[41,1]+R[51]    ;
  51:  PR[41,2]=PR[41,2]+R[52]    ;
  52:  PR[41,3]=PR[41,3]+R[53]    ;
  53:  PR[41,4]=PR[41,4]+R[54]    ;
  54:  PR[41,5]=PR[41,5]+R[55]    ;
  55:  PR[41,6]=PR[41,6]+R[56]    ;
  56:  CALL WEBCHECK    ;
  57:  IF R[88]<>88,JMP LBL[999] ;
  58:L PR[41] 50mm/sec CNT100    ;
  59:  R[42]=R[42]+1    ;
  60:  JMP LBL[5] ;
  61:   ;
  62:  LBL[6] ;
  63:  PR[41,1]=PR[41,1]+R[51]    ;
  64:  PR[41,2]=PR[41,2]+R[52]    ;
  65:  PR[41,3]=PR[41,3]+R[53]    ;
  66:  PR[41,4]=PR[41,4]+R[54]    ;
  67:  PR[41,5]=PR[41,5]+R[55]    ;
  68:  PR[41,6]=PR[41,6]+R[56]    ;
  69:  CALL WEBCHECK    ;
  70:  IF R[88]<>88,JMP LBL[999] ;
  71:J PR[41] 5% CNT100    ;
  72:  R[42]=R[42]+1    ;
  73:  JMP LBL[6] ;
  74:   ;
  75:  LBL[999] ;
  76:  R[42]=999    ;
  77:  R[51]=0    ;
  78:  R[52]=0    ;
  79:  R[53]=0    ;
  80:  R[54]=0    ;
  81:  R[55]=0    ;
  82:  R[56]=0    ;
  83:  R[81]=0    ;
  84:  R[82]=0    ;
  85:  R[83]=0    ;
  86:  R[84]=0    ;
  87:  R[85]=0    ;
  88:  R[86]=0    ;
  89:  R[87]=0    ;
  90:  R[88]=0    ;
  91:  JMP LBL[7] ;
/POS
/END
