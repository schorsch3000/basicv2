  �@ \PROTOCOL :
 �@ \FASTFOR:\SHORTIF:\DATATYPE BYTE W �@ \WORD #,I=FAST,X=FAST � �@ \CONSTANT VIC,BACK,PAPER,SPRON,PRIOR,SCOL,XHI,IRQ,OFF,VOL,MEM � �@ \BYTE A,X1,X2,Y1,Y2,XA,XE,YA,YE,CO,CC,SX,SY,V1,H1,V2,H2,Y(,YS(,CO( � �@ \BYTE P2(,SN *	 � SC(24),CO(23),X(7),Y(7),XS(7),YS(7),P2(7) x	 VIC�53248:BACK�VIC�32:PAPER�VIC�33:     SPREN�VIC�21:OFF�VIC�17:IRQ�56333 �	 XHI�VIC�16:SCOL�VIC�39:PRI�VIC�27:      MEM�2040 �	 VOL�54272�24 �	 �13000:� VORBEREITUNG �	 � BACK,0:� PAPER,0:� SPREN,0 
 �"�        *** bASIC-bOSS ***" F
  �"pROGRAMMIEREN IN bASIC MIT DER" t
" �"gESCHWINDIGKEIT VON mASCHINENSPRACHE !" �
( �"�uNMOEGLICH? nEIN!" �
* �"dIESES pROGRAMM WURDE VON VORNE BIS" �
, �"HINTEN IN bASIC PROGRAMMIERT." 2 �"dANN WURDE ES VOM bASIC-bOSS IN REINE" 04 �"mASCHINENSPRACHE UEBERSETZT." ^< �"bITTE UEBERZEUGEN sIE SICH VON SEINER" wF �"gESCHWINDIGKEIT !" �Z �20000 �d �"�  sO SIEHT ES AUS, WENN DIE bILD-" �n �"  SCHIRMFARBE IN SCHNELLER fOLGE" �x �"  VERAENDERT WIRD:":�10020 � � IRQ,127:� INTERRUPT AUS 4� � OFF,0:� BILDSCHIRM AUS E� � I�0 �60000 S� � BACK,14 `� � BACK,3 m� � BACK,3 {� � BACK,14 �� � BACK,6 �� �I �� � IRQ,129:� OFF,27 �� �"� ODER SO:":�10020 �	� IRQ,127:� INTERRUPT AUS �
� OFF,0:� BILDSCHIRM AUS � I�0 � 30000 � BACK,0 (� BACK,2 5� BACK,2 B� BACK,2 O� BACK,8 \� BACK,8 i� BACK,8 v� BACK,7 �� BACK,1 �� BACK,1 �� BACK,7 �� BACK,8 �� BACK,8 �� BACK,8 �� BACK,2 � � BACK,2 �!� BACK,2 �"� BACK,2 #� BACK,0 '� $,� IRQ,129:� OFF,27:� *1: R6�"�  wENN EIN MIT DEM bASIC-bOSS" {@�"  COMPILIERTES bASICPROGRAMM DEN" �J�"  bILDSCHIRM BEARBEITET, SIEHT DAS" �T�"  SO AUS:" �^�10020:X1�10:X2�1:Y1�14:Y2�4 �c�11000 �hI�0 
rX1�X1�33:�X1��40�X1�X1�40 (wX2�X2�17:�X2��40�X2�X2�40 F|Y1�Y1�21:�Y1��25�Y1�Y1�25 d�Y2�Y2�7 :�Y2��25�Y2�Y2�25 u�CO�(CO�1�15) ���12000 ��I�I�1 ��� I�1000 � �(198)�0 �370 ��MU�11:�14000:�" ODER SO:" ���10020 ���11000:H1�1:V1�2:H2�2:V2�1:I�0 �X1�1:Y1�2:X2�37:Y2�22:CC�1 +�� X1 �0  � H1��H1 A�� X2��1  � H2��H2 W�� Y1 �0  � V1��V1 m�� Y2 �0  � V2��V2 ��� X1 �39 � H1��H1 ��� X2��38 � H2��H2 ��� Y1 �24 � V1��V1 ��� Y2 �24 � V2��V2 ��X1�X1�H1:X2�X2�H2 �Y1�Y1�V1:Y2�Y2�V2 CO�CO(CC):CC�CC�1:�CC�23�CC�0 �12000 =I�I�1:�I�1000��(198)�0�430 Q&MU�500:�14000:� W0: �:�"�nUN HUEPFEN EIN PAAR sPRITES UEBER" �D�"DEN bILDSCHIRM. aLLERDINGS ERGIBT SICH" �N�"HIER EIN pROBLEM: dAS pROGRAMM IST" X�"ZU SCHNELL. eS MUSS ALSO GEBREMST" ]�"WERDEN:":�1000 "b: 0l� I�0 � 7 ?v� MEM�I,13 P�� SCOL�I,I�1 o�X(I)�130�I�25:Y(I)�50�I�18 ��XS(I)��I:YS(I)�I ��� I ��� PRI,0:� SPREN,255 ��A�0:C�0 ��: ��� I�0 � 7 ��� X(I)�256 � � XHI,�(XHI) � P2(I):�710 �� XHI,�(XHI)� (255�P2(I)) $�� VIC�I�I,X(I)�255 9�� VIC�1�I�I,Y(I) M�X(I)�X(I)�XS(I) a�Y(I)�Y(I)�YS(I) ��� X(I)�320 � X(I)�640�X(I):XS(I)��XS(I):�950 ��� X(I)�24 � X(I)�48�X(I):XS(I)��XS(I):�950 ��� Y(I)�50 � Y(I)�100�Y(I):YS(I)��YS(I):�950 "� Y(I)�229 � Y(I)�458�Y(I):YS(I)��YS(I):�950 ? � BESCHLEUNIGUNG X UND Y O*� A�3 � 880 o4XS(I)�XS(I)�1:YS(I)�YS(I)�1 wp� I �r�A�3 � A�0 �sA�A�1 �v� AUF RASTERSTRAHL WARTEN �w� B � � (�(53248�17)�128)�0 � 887 �z� �(198)�0 � 670 ���198,0:  � �� VOL,SN:SN�15�SN:� �� �: 0��10600:B�0:�610 X��"JETZT IST ES GEBREMST UND WIRD" ���"MIT DEM rASTERSTRAHL SYNCHRONISIERT." ��10600 �B��1:�610 �B� �': �'TI$�"000000":�10100 �'TI$�"000030":�10100 �$'TI$�"000035":�10100 t'�10600:�10500 )�198,0 3)� A$:�A$�""�TI$�"000040"�10510 9)� [h)�"            - tASTE -":� a�*: {�*�I�1024�2023:�I,160:� �+� ��.: ��.� RECHTECK ZEICHNEN MIT FARBE   (X1,Y1,X2,Y2,CH,CO) ��.� (X1,Y1,X2,Y2,CH,CO) ��.� X2��X1 � XA�X1:XE�X2:�12002 �.XA�X2:XE�X1 -�.� Y2��Y1 � YA�Y1:YE�Y2:�12050 =�.YA�Y2:YE�Y1 Z/� Y�SC(YA) � SC(YE) � 40 n/� X�Y�XA � Y�XE &/� X,CO:� X,Y �:/� ��2: ��2� MULTIPLIKATIONSTABELLE ��2� I�0 � 24:SC(I)�55296�I�40:� ��2� FARBEN EINLESEN ��2� A�0 � 23:� CO(A):� �2MP�0 �2� A�0 � 7:P2(A)�2�A:� 1�2� I�832 � 832�62 C3� A:� I,A:� I I"3� Y�4� FARBDATEN ��4� 0,6,14,3,1,3,14,6,0,2,8,7,1,7,8,2,0,11,5,13,1,13,5,11 �5� SPRITEDATEN � 5�   0,255,  0,  3,255,192, 15 �!5� 255,240, 31,255,248, 63,255 "5� 252,127,255,254,127,255,254 /#5� 255,255,255,255,255,255,255 Q$5� 255,255,255,255,255,255,255 s%5� 255,255,255,255,255,255,255 �&5� 127,255,254,127,255,254, 63 �'5� 255,252, 31,255,248, 15,255 �(5� 240,  3,255,192,  0,255,  0 ��6: ��6� BILDSCHIRM LOESCHEN (MU) �6I�1024:A�21 �6� A�1�5:� A /�6�I,32:I�I�MU E�6�I��2045�I�I�1021 X�6�I��1024�14010 ^�6� d N: {*N�"wAEHLEN sIE:" �4N�"   1...bILDSCHIRMDEMO" �>N�"   2...sPRITEDEMO" �HN�"   3...hINTERGRUNDDEMO" �RN�"   4...nOCH WAS" zN�"(tHILO hERRMANN, 1988)" |N: ~N: +�NTI$�"000000":�10500 U�N� A$��"1" � A$��"4" � MP��(A$):�20130 h�N� A$��""�20100 ��NMP�MP�1:� MP�4 � MP�1 ��N� MP � 310,570,100,21000 ��N�29 �R�"�sIE SOLLTEN ZUM vERGLEICH MAL DIE" �R�"bASIC-vERSION DIESES pROGRAMMSADY." R�"ABLAUFEN LASSEN !" AR�"dAS bASICPROGRAMM ZEIGT AUCH, DASS" n&R�"DER pROGRAMMIERER ALLE mOEGLICHKEITEN" �0R�"VON bASIC AUSREIZEN KANN, OHNE DASS ER" �:R�"UNNOETIG EINGESCHRAENKT WIRD." �DR�"dENN AUSSER SOLCHEN bILDSCHIRM-" NR�"SPIELEREIEN KANN MAN AUCH ERNSTERE" <XR�"aNWENDUNGEN PROGRAMMIEREN, DA DER" cbR�"bASIC-bOSS Z.b. EINE WESENTLICH" �lR�"LEISTUNGSFAEHIGERE sTRINGVERWALTUNG" �vR�"BESITZT ALS DER bASICINTERPRETER. dARUM" ��R�"IST NUN AUCH DIE gARBAGE-cOLLECTION" �R�"UM EINIGES SCHNELLER.":�10000 7�R�"�wAS DAS HEISST, WERDEN sIE MERKEN," c�R�"WENN sIE FOLGENDES pROGRAMM ABLAUFEN" s�R�"LASSEN:" ��R�"10 DIM A$(2000)" ��R�"20 FOR I=1 TO 2000" ��R�"30 A$(I)=CHR$(65):NEXT I" ��R�"40 TI$="000000":PRINT"�(34)"FREI"�(34)"FRE(0);TI/60" +�R�"aLLEIN DER fre-bEFEHL BENOETIGT CA." T�R�"339 sEKUNDEN, DA ER EINE gARBAGE-" p�R�"cOLLECTION AUSLOEST." ��R�"dAS GLEICHE pROGRAMM KOENNEN sIE NUN" �S�"IN DER COMPILIERTEN vERSION STARTEN: ":�10000 �S�"� GESTARTET..." �4S� A$(2000) 	 >S� I�1 � 2000  HSA$(I)��(65):� I @ RSTI$�"000000":�"FREI"�(0);TI�60 j WS�"dAMIT IST DIE gARBAGE-cOLLECTION" � XS�"IN DIESEM fALL ETWA 680 MAL SCHNELLER !" � \S�10010 � �S�"�dIE lEISTUNGSDATEN DES bASIC-bOSS:" � �S�"- KURZE cOMPILATE" !�S�"- OPTIMIERTER UND EFFIZIENTER cODE" <!�S�"- SEHR SCHNELLE vARIABLENTYPEN" b!�S�"- EXTREM KURZE cOMPILIERZEITEN" �!�S�"- EINE HOCHFLEXIBLE cOMPILERARCHITEKTUR" �!�S�"- 62 kbYTE bASICSPEICHER" �!�S�"- EINE SCHNELLE for-next-sCHLEIFE" "�S�"- GEPACKTE UND SCHNELLE dATEN BEI data" ,"�S�"- STARK BESCHLEUNIGTE aRRAYS" S"�S�"- BELIEBIG LANGE vARIABLENNAMEN" |"T�"- GENAUE DEUTSCHE fEHLERMELDUNGEN" �"T�"- eRZEUGUNG ECHTEN mASCHINENCODES" �"T�"- KEIN kOPIERSCHUTZ" �"T�" UND NOCH EINIGES MEHR..." �"$T�10000 #.T�"� iCH BIN JEDEM DANKBAR, DER DIESES" D#8T�" dEMOPROGRAMM WEITERVERBREITET." O#BT�10000   