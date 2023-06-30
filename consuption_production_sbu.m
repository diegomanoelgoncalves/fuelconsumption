
% Insert "filename_dep.txt"
% ?=n? 
% ? =mass/ atom
% n = number of atoms/ volume - ADENS
% ? = mass/ volume - MDENS

%Isotopes definitions
%i902320 = 1; iTh232            = 1;
%i902330 = 2; iTh233            = 2;
%i912310 = 3; iPa231            = 3;
%i912320 = 4; iPa232            = 4;
%i912330 = 5; iPa233            = 5;
%i912340 = 6; iPa234            = 6;
%i922320 = 7; iU232             = 7;
%i922330 = 8; iU233             = 8;
%i922340 = 9; iU234             = 9;
%i922350 = 10; iU235             = 10;
%i922360 = 11; iU236             = 11;
%i922380 = 12; iU238             = 12;
%i932370 = 13; iNp237            = 13;
%i942380 = 14; iPu238            = 14;
%i942390 = 15; iPu239            = 15;
%i942400 = 16; iPu240            = 16;
%i942410 = 17; iPu241            = 17;
%i942420 = 18; iPu242            = 18;
%i952410 = 19; iAm241            = 19;
%i952420 = 20; iAm242            = 20;
%i952430 = 21; iAm243            = 21;
%i420990 = 22; iMo99             = 22;
%i430990 = 23; iTc99             = 23;
%i441010 = 24; iRu101            = 24;
%i451030 = 25; iRh103            = 25;
%i471090 = 26; iAg109            = 26;
%i551330 = 27; iCs133            = 27;
%i621470 = 28; iSm147            = 28;
%i621490 = 29; iSm149            = 29;
%i621500 = 30; iSm150            = 30;
%i621510 = 31; iSm151            = 31;
%i621520 = 32; iSm152            = 32;
%i601430 = 33; iNd143            = 33;
%i601450 = 34; iNd145            = 34;
%i631530 = 35; iEu153            = 35;
%i641550 = 36; iGd155            = 36;
%i541260 = 37; iXe126            = 37;
%561330 = 38; iBa133            = 38;
%i541280 = 39; iXe128            = 39;
%i541290 = 40; iXe129            = 40;
%i541300 = 41; iXe130            = 41;
%i541310 = 42; iXe131            = 42;
%i541320 = 43; iXe132            = 43;
%i541330 = 44; iXe133            = 44;
%i541360 = 45; iXe136            = 45;
%i541340 = 46; iXe134            = 46;
%i541350 = 47; iXe135            = 47;
%i481060 = 48; iCd106            = 48;
%i481080 = 49; iCd108            = 49;
%i481100 = 50; iCd110            = 50;
%i481110 = 51; iCd111            = 51;
%i481120 = 52; iCd112            = 52;
%i481130 = 53; iCd113            = 53;
%i481140 = 54; iCd114            = 54;
%i481160 = 55; iCd116            = 55;
%i50100  = 56; iB10              = 56;
%i50110  = 57; iB11              = 57;
%iLOST    = 58;
%iTOT     = 59;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% Run 'filename'_dep
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

k=864/1907
DENS=[10.31341];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%5
% Calculation Material Definitions
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
MAT_blank10_01_MASS=MAT_blank10_01_VOLUME(1)*MAT_blank10_01_MDENS 
MAT_blank10_02_MASS=MAT_blank10_02_VOLUME(1)*MAT_blank10_02_MDENS 
MAT_blank10_03_MASS=MAT_blank10_03_VOLUME(1)*MAT_blank10_03_MDENS 
MAT_blank10_04_MASS=MAT_blank10_04_VOLUME(1)*MAT_blank10_04_MDENS 
MAT_blank10_05_MASS=MAT_blank10_05_VOLUME(1)*MAT_blank10_05_MDENS 

MAT_seed11_01_MASS=MAT_seed11_01_VOLUME(1)*MAT_seed11_01_MDENS 
MAT_seed11_02_MASS=MAT_seed11_02_VOLUME(1)*MAT_seed11_02_MDENS 
MAT_seed11_03_MASS=MAT_seed11_03_VOLUME(1)*MAT_seed11_03_MDENS 
MAT_seed11_04_MASS=MAT_seed11_04_VOLUME(1)*MAT_seed11_04_MDENS 
MAT_seed11_05_MASS=MAT_seed11_05_VOLUME(1)*MAT_seed11_05_MDENS 

MAT_seed11_MASS=MAT_seed11_05_MASS+MAT_seed11_04_MASS+MAT_seed11_03_MASS+MAT_seed11_02_MASS+MAT_seed11_01_MASS
MAT_blank10_MASS=MAT_blank10_05_MASS+MAT_blank10_04_MASS+MAT_blank10_03_MASS+MAT_blank10_02_MASS+MAT_blank10_01_MASS
MAT_sbu_01_MASS=(MAT_blank10_01_MASS+MAT_blank10_02_MASS+MAT_blank10_03_MASS+MAT_blank10_04_MASS+MAT_blank10_05_MASS+MAT_seed11_01_MASS+MAT_seed11_02_MASS+MAT_seed11_03_MASS+MAT_seed11_04_MASS+MAT_seed11_05_MASS)

SEED_WASTE=sum(MAT_seed11_05_MASS(1:56,1)+MAT_seed11_04_MASS(1:56,1)+MAT_seed11_03_MASS(1:56,1)+MAT_seed11_02_MASS(1:56,1)+MAT_seed11_01_MASS(1:56,1));
BLANKET_WASTE=sum(MAT_blank10_05_MASS(1:56,1)+MAT_blank10_04_MASS(1:56,1)+MAT_blank10_03_MASS(1:56,1)+MAT_blank10_02_MASS(1:56,1)+MAT_blank10_01_MASS(1:56,1))
REPROCESS_PU=MAT_seed11_MASS(:,end)./SEED_WASTE+MAT_blank10_MASS(:,end)./BLANKET_WASTE

REPROCESS_1=MAT_seed11_01_MASS(:,end)./SEED_WASTE+MAT_blank10_01_MASS(:,end)./BLANKET_WASTE
REPROCESS_2=MAT_seed11_02_MASS(:,end)./SEED_WASTE+MAT_blank10_02_MASS(:,end)./BLANKET_WASTE
REPROCESS_3=MAT_seed11_03_MASS(:,end)./SEED_WASTE+MAT_blank10_03_MASS(:,end)./BLANKET_WASTE
REPROCESS_4=MAT_seed11_04_MASS(:,end)./SEED_WASTE+MAT_blank10_04_MASS(:,end)./BLANKET_WASTE
REPROCESS_5=MAT_seed11_05_MASS(:,end)./SEED_WASTE+MAT_blank10_05_MASS(:,end)./BLANKET_WASTE

WASTE=MAT_sbu_01_MASS(13:57,:);
WASTE=sum(MAT_sbu_01_MASS(13:57,:));
TRU=sum(MAT_sbu_01_MASS(13:45,:));
CONSUME=sum(MAT_sbu_01_MASS(1:57,1));
%Uranium burnup -EOC
U232b=10^3*(MAT_sbu_01_MASS(7,1))/CONSUME;
U233b=10^3*(MAT_sbu_01_MASS(8,1))/CONSUME;
U234b=10^3*(MAT_sbu_01_MASS(9,1))/CONSUME;
U235b=10^3*(MAT_sbu_01_MASS(10,1))/CONSUME;
U236b=10^3*(MAT_sbu_01_MASS(11,1))/CONSUME;
U238b=10^3*(MAT_sbu_01_MASS(12,1))/CONSUME;
Th232b=10^3*(MAT_sbu_01_MASS(1,1))/CONSUME;  

%Uranium burnup -EOC
U232e=10^3*(MAT_sbu_01_MASS(7,end))/CONSUME;
U233e=10^3*(MAT_sbu_01_MASS(8,end))/CONSUME;
U234e=10^3*(MAT_sbu_01_MASS(9,end))/CONSUME;
U235e=10^3*(MAT_sbu_01_MASS(10,end))/CONSUME;
U236e=10^3*(MAT_sbu_01_MASS(11,end))/CONSUME;
U238e=10^3*(MAT_sbu_01_MASS(12,end))/CONSUME;
Th232e=10^3*(MAT_sbu_01_MASS(1,end))/CONSUME;  
%Uranium burnup -EOC
U232=-10^3*(MAT_sbu_01_MASS(7,1)-MAT_sbu_01_MASS(7,1:end))/CONSUME;
U233=-10^3*(MAT_sbu_01_MASS(8,1)-MAT_sbu_01_MASS(8,1:end))/CONSUME;
U234=-10^3*(MAT_sbu_01_MASS(9,1)-MAT_sbu_01_MASS(9,1:end))/CONSUME;
U235=-10^3*(MAT_sbu_01_MASS(10,1)-MAT_sbu_01_MASS(10,1:end))/CONSUME;
U236=-10^3*(MAT_sbu_01_MASS(11,1)-MAT_sbu_01_MASS(11,1:end))/CONSUME;
U238=-10^3*(MAT_sbu_01_MASS(12,1)-MAT_sbu_01_MASS(12,1:end))/CONSUME;
Th232=-10^3*(MAT_sbu_01_MASS(1,1)-MAT_sbu_01_MASS(1,1:end))/CONSUME;   
%Plutonium waste
PU238=-10^3*(MAT_sbu_01_MASS(14,1)-MAT_sbu_01_MASS(14,1:end))/CONSUME;
PU239=-10^3*(MAT_sbu_01_MASS(15,1)-MAT_sbu_01_MASS(15,1:end))/CONSUME;
PU240=-10^3*(MAT_sbu_01_MASS(16,1)-MAT_sbu_01_MASS(16,1:end))/CONSUME;
PU241=-10^3*(MAT_sbu_01_MASS(17,1)-MAT_sbu_01_MASS(17,1:end))/CONSUME;
PU242=-10^3*(MAT_sbu_01_MASS(18,1)-MAT_sbu_01_MASS(18,1:end))/CONSUME;

%High Level Waste
Np237  = -10^3*(MAT_sbu_01_MASS(13,1)-MAT_sbu_01_MASS(13,1:end))/CONSUME;
Am241  = -10^3*(MAT_sbu_01_MASS(19,1)-MAT_sbu_01_MASS(19,1:end))/CONSUME;
Am242  = -10^3*(MAT_sbu_01_MASS(20,1)-MAT_sbu_01_MASS(20,1:end))/CONSUME;
Am243  = -10^3*(MAT_sbu_01_MASS(21,1)-MAT_sbu_01_MASS(21,1:end))/CONSUME;
Mo99   = -10^3*(MAT_sbu_01_MASS(22,1)-MAT_sbu_01_MASS(22,1:end))/CONSUME;
Tc99   = -10^3*(MAT_sbu_01_MASS(23,1)-MAT_sbu_01_MASS(23,1:end))/CONSUME;
Ru101  = -10^3*(MAT_sbu_01_MASS(24,1)-MAT_sbu_01_MASS(24,1:end))/CONSUME;
Rh103  = -10^3*(MAT_sbu_01_MASS(25,1)-MAT_sbu_01_MASS(25,1:end))/CONSUME;
Ag109  = -10^3*(MAT_sbu_01_MASS(26,1)-MAT_sbu_01_MASS(26,1:end))/CONSUME;
Cs133  = -10^3*(MAT_sbu_01_MASS(27,1)-MAT_sbu_01_MASS(27,1:end))/CONSUME;
Sm147  = -10^3*(MAT_sbu_01_MASS(28,1)-MAT_sbu_01_MASS(28,1:end))/CONSUME;
Sm149  = -10^3*(MAT_sbu_01_MASS(29,1)-MAT_sbu_01_MASS(29,1:end))/CONSUME;
Sm150  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(30,1:end))/CONSUME;
Sm151  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(31,1:end))/CONSUME;
Sm152  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(32,1:end))/CONSUME;
Nd143  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(33,1:end))/CONSUME;
Nd145  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(34,1:end))/CONSUME;
Eu153  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(35,1:end))/CONSUME;
Gd155  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(36,1:end))/CONSUME;
Xe126  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(37,1:end))/CONSUME;
Ba133  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(38,1:end))/CONSUME;
Xe128  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(39,1:end))/CONSUME;
Xe129  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(40,1:end))/CONSUME;
Xe130  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(41,1:end))/CONSUME;
Xe131  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(42,1:end))/CONSUME;
Xe132  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(43,1:end))/CONSUME;
Xe133  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(44,1:end))/CONSUME;
Xe136  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(45,1:end))/CONSUME;
Xe134  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(46,1:end))/CONSUME;
Xe135  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(47,1:end))/CONSUME;
Cd106  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(48,1:end))/CONSUME;
Cd108  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(49,1:end))/CONSUME;
Cd110  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(50,1:end))/CONSUME;
Cd111  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(51,1:end))/CONSUME;
Cd112  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(52,1:end))/CONSUME;
Cd113  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(53,1:end))/CONSUME;
Cd114  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(54,1:end))/CONSUME;
Cd116  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(55,1:end))/CONSUME;
B10    = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(45,1:end))/CONSUME;
B11    = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(45,1:end))/CONSUME;
Sm_149  = -10^3*(MAT_sbu_01_MASS(29,1)-MAT_sbu_01_MASS(29,1:end));
Xe_135  = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(47,1:end));

iTh232            = -10^3*(MAT_sbu_01_MASS(1,1)-MAT_sbu_01_MASS(1,1:end))/CONSUME;
iTh233            = -10^3*(MAT_sbu_01_MASS(2,1)-MAT_sbu_01_MASS(2,1:end))/CONSUME;
iPa231            = -10^3*(MAT_sbu_01_MASS(3,1)-MAT_sbu_01_MASS(3,1:end))/CONSUME;
iPa232            = -10^3*(MAT_sbu_01_MASS(4,1)-MAT_sbu_01_MASS(4,1:end))/CONSUME;
iPa233            = -10^3*(MAT_sbu_01_MASS(5,1)-MAT_sbu_01_MASS(5,1:end))/CONSUME;
iPa234            = -10^3*(MAT_sbu_01_MASS(6,1)-MAT_sbu_01_MASS(6,1:end))/CONSUME;
iU232             = -10^3*(MAT_sbu_01_MASS(7,1)-MAT_sbu_01_MASS(7,1:end))/CONSUME;
iU233             = -10^3*(MAT_sbu_01_MASS(8,1)-MAT_sbu_01_MASS(8,1:end))/CONSUME;
iU234             = -10^3*(MAT_sbu_01_MASS(9,1)-MAT_sbu_01_MASS(9,1:end))/CONSUME;
iU235             = -10^3*(MAT_sbu_01_MASS(10,1)-MAT_sbu_01_MASS(10,1:end))/CONSUME;
iU236             = -10^3*(MAT_sbu_01_MASS(11,1)-MAT_sbu_01_MASS(11,1:end))/CONSUME;
iU238             = -10^3*(MAT_sbu_01_MASS(12,1)-MAT_sbu_01_MASS(12,1:end))/CONSUME;
iNp237            = -10^3*(MAT_sbu_01_MASS(13,1)-MAT_sbu_01_MASS(13,1:end))/CONSUME;
iPu238            = -10^3*(MAT_sbu_01_MASS(14,1)-MAT_sbu_01_MASS(14,1:end))/CONSUME;
iPu239            = -10^3*(MAT_sbu_01_MASS(15,1)-MAT_sbu_01_MASS(15,1:end))/CONSUME;
iPu240            = -10^3*(MAT_sbu_01_MASS(16,1)-MAT_sbu_01_MASS(16,1:end))/CONSUME;
iPu241            = -10^3*(MAT_sbu_01_MASS(17,1)-MAT_sbu_01_MASS(17,1:end))/CONSUME;
iPu242            = -10^3*(MAT_sbu_01_MASS(18,1)-MAT_sbu_01_MASS(18,1:end))/CONSUME;
iAm241            = -10^3*(MAT_sbu_01_MASS(19,1)-MAT_sbu_01_MASS(19,1:end))/CONSUME;
iAm242            = -10^3*(MAT_sbu_01_MASS(20,1)-MAT_sbu_01_MASS(20,1:end))/CONSUME;
iAm243            = -10^3*(MAT_sbu_01_MASS(21,1)-MAT_sbu_01_MASS(21,1:end))/CONSUME;
iMo99             = -10^3*(MAT_sbu_01_MASS(22,1)-MAT_sbu_01_MASS(22,1:end))/CONSUME;
iTc99             = -10^3*(MAT_sbu_01_MASS(23,1)-MAT_sbu_01_MASS(23,1:end))/CONSUME;
iRu101            = -10^3*(MAT_sbu_01_MASS(24,1)-MAT_sbu_01_MASS(24,1:end))/CONSUME;
iRh103            = -10^3*(MAT_sbu_01_MASS(25,1)-MAT_sbu_01_MASS(25,1:end))/CONSUME;
iAg109            = -10^3*(MAT_sbu_01_MASS(26,1)-MAT_sbu_01_MASS(26,1:end))/CONSUME;
iCs133            = -10^3*(MAT_sbu_01_MASS(27,1)-MAT_sbu_01_MASS(27,1:end))/CONSUME;
iSm147            = -10^3*(MAT_sbu_01_MASS(28,1)-MAT_sbu_01_MASS(28,1:end))/CONSUME;
iSm149            = -10^3*(MAT_sbu_01_MASS(29,1)-MAT_sbu_01_MASS(29,1:end))/CONSUME;
iSm150            = -10^3*(MAT_sbu_01_MASS(30,1)-MAT_sbu_01_MASS(30,1:end))/CONSUME;
iSm151            = -10^3*(MAT_sbu_01_MASS(31,1)-MAT_sbu_01_MASS(31,1:end))/CONSUME;
iSm152            = -10^3*(MAT_sbu_01_MASS(32,1)-MAT_sbu_01_MASS(32,1:end))/CONSUME;
iNd143            = -10^3*(MAT_sbu_01_MASS(33,1)-MAT_sbu_01_MASS(33,1:end))/CONSUME;
iNd145            = -10^3*(MAT_sbu_01_MASS(34,1)-MAT_sbu_01_MASS(34,1:end))/CONSUME;
iEu153            = -10^3*(MAT_sbu_01_MASS(35,1)-MAT_sbu_01_MASS(35,1:end))/CONSUME;
iGd155            = -10^3*(MAT_sbu_01_MASS(36,1)-MAT_sbu_01_MASS(36,1:end))/CONSUME;
iXe126            = -10^3*(MAT_sbu_01_MASS(37,1)-MAT_sbu_01_MASS(37,1:end))/CONSUME;
iBa133            = -10^3*(MAT_sbu_01_MASS(38,1)-MAT_sbu_01_MASS(38,1:end))/CONSUME;
iXe128            = -10^3*(MAT_sbu_01_MASS(39,1)-MAT_sbu_01_MASS(39,1:end))/CONSUME;
iXe129            = -10^3*(MAT_sbu_01_MASS(40,1)-MAT_sbu_01_MASS(40,1:end))/CONSUME;
iXe130            = -10^3*(MAT_sbu_01_MASS(41,1)-MAT_sbu_01_MASS(41,1:end))/CONSUME;
iXe131            = -10^3*(MAT_sbu_01_MASS(42,1)-MAT_sbu_01_MASS(42,1:end))/CONSUME;
iXe132            = -10^3*(MAT_sbu_01_MASS(43,1)-MAT_sbu_01_MASS(43,1:end))/CONSUME;
iXe133            = -10^3*(MAT_sbu_01_MASS(44,1)-MAT_sbu_01_MASS(44,1:end))/CONSUME;
iXe136            = -10^3*(MAT_sbu_01_MASS(45,1)-MAT_sbu_01_MASS(45,1:end))/CONSUME;
iXe134            = -10^3*(MAT_sbu_01_MASS(46,1)-MAT_sbu_01_MASS(46,1:end))/CONSUME;
iXe135            = -10^3*(MAT_sbu_01_MASS(47,1)-MAT_sbu_01_MASS(47,1:end))/CONSUME;
iCd106            = -10^3*(MAT_sbu_01_MASS(48,1)-MAT_sbu_01_MASS(48,1:end))/CONSUME;
iCd108            = -10^3*(MAT_sbu_01_MASS(49,1)-MAT_sbu_01_MASS(49,1:end))/CONSUME;
iCd110            = -10^3*(MAT_sbu_01_MASS(50,1)-MAT_sbu_01_MASS(50,1:end))/CONSUME;
iCd111            = -10^3*(MAT_sbu_01_MASS(51,1)-MAT_sbu_01_MASS(51,1:end))/CONSUME;
iCd112            = -10^3*(MAT_sbu_01_MASS(52,1)-MAT_sbu_01_MASS(52,1:end))/CONSUME;
Cd113            = -10^3*(MAT_sbu_01_MASS(53,1)-MAT_sbu_01_MASS(53,1:end))/CONSUME;
iCd114            = -10^3*(MAT_sbu_01_MASS(54,1)-MAT_sbu_01_MASS(54,1:end))/CONSUME;
iCd116            = -10^3*(MAT_sbu_01_MASS(55,1)-MAT_sbu_01_MASS(56,1:end))/CONSUME;
iB10              = -10^3*(MAT_sbu_01_MASS(56,1)-MAT_sbu_01_MASS(57,1:end))/CONSUME;
iB11              = -10^3*(MAT_sbu_01_MASS(57,1)-MAT_sbu_01_MASS(58,1:end))/CONSUME;

HLW=[iTh232(end)           
iTh233(end)           
iPa231(end)           
iPa232(end)           
iPa233(end)      
iPa234(end)     
iU232(end)           
iU233(end)           
iU234(end)          
iU235(end)         
iU236(end)            
iU238(end)          
iNp237(end)        
iPu238(end)         
iPu239(end)            
iPu240(end)        
iPu241(end)          
iPu242(end)      
iAm241(end)       
iAm242(end)     
iAm243(end)            
iMo99(end)            
iTc99(end)             
iRu101(end)            
iRh103(end)         
iAg109(end)       
iCs133(end)          
iSm147(end)            
iSm149(end)         
iSm150(end)           
iSm151(end)           
iSm152(end)           
iNd143(end)            
iNd145(end)           
iEu153(end)          
iGd155(end)            
iXe126(end)           
iBa133(end)            
iXe128(end)         
iXe129(end)           
iXe130(end)           
iXe131(end)            
iXe132(end)           
iXe133(end)            
iXe136(end)            
iXe134(end)            
iXe135(end)          
iCd106(end)            
iCd108(end)            
iCd110(end)           
iCd111(end)           
iCd112(end)           
iCd113(end)          
iCd114(end)            
iCd116(end)           
iB10(end)              
iB11(end)]            
fprintf('*********************** \n');
fprintf('Consume mass Fuel[kg] %d \n',max(CONSUME/1000));
fprintf('Waste mass Fuel[kg]in final step days %d \n',max(WASTE/CONSUME*1000));
fprintf('Seed Fuel[kg] %d \n',max(SEED_WASTE/1000));
fprintf('Blanket Fuel[kg] %d \n',max(BLANKET_WASTE/1000));
fprintf('HLW[kg/THM]in final step days %d \n',sum(HLW));
fprintf('TRU[kg/THM]in final step days %d \n',(TRU/CONSUME*1000));
fprintf('*********************** \n');
fprintf('\n BOC \n')
fprintf('U232[kg/THM] %d \n',max(U232b(1)))
fprintf('U233[kg/THM] %d \n',max(U233b(1)))
fprintf('U234[kg/THM] %d \n',max(U234b(1)))
fprintf('U235[kg/THM] %d \n',max(U235b(1)))
fprintf('U236[kg/THM] %d \n',max(U236b(1)))
fprintf('U238[kg/THM] %d \n',max(U238b(1)))
fprintf('Th232[kg/THM] %d \n',max(Th232b(1)))
fprintf('\n EOC  \n')
fprintf('U232[kg/THM] %d \n',max(U232e(end)))
fprintf('U233[kg/THM] %d \n',max(U233e(end)))
fprintf('U234[kg/THM] %d \n',max(U234e(end)))
fprintf('U235[kg/THM] %d \n',max(U235e(end)))
fprintf('U236[kg/THM] %d \n',max(U236e(end)))
fprintf('U238[kg/THM] %d \n',max(U238e(end)))
fprintf('Th232[kg/THM] %d \n',max(Th232e(end)))
fprintf('\n EOC  \n')
fprintf('Pu238[kg/THM] %d \n',max(PU238))
fprintf('Pu239[kg/THM] %d \n',max(PU239))
fprintf('Pu240[kg/THM] %d \n',max(PU240))
fprintf('Pu241[kg/THM] %d \n',max(PU241))
fprintf('Pu242[kg/THM] %d \n',max(PU242))
fprintf('Xe126[kg/THM] %d \n',Xe126(end))
fprintf('Xe128[kg/THM] %d \n',Xe128(end))
fprintf('Xe129[kg/THM] %d \n',Xe129(end))
fprintf('Xe130[kg/THM] %d \n',Xe130(end))
fprintf('Xe131[kg/THM] %d \n',Xe131(end))
fprintf('Xe132[kg/THM] %d \n',Xe132(end))
fprintf('Xe133[kg/THM] %d \n',Xe133(end))
fprintf('Xe134[kg/THM] %d \n',Xe134(end))
fprintf('Xe135[kg/THM] %d \n',Xe135(end))
 
fprintf('Np237[kg/THM] %d \n',Np237(end))
fprintf('Am241[kg/THM] %d \n',Am241(end))
fprintf('Am242[kg/THM] %d \n',Am242(end))
fprintf('Am243[kg/THM] %d \n',Am243(end))
fprintf('Mo99[kg/THM] %d \n',Mo99(end))
fprintf('Tc99[kg/THM] %d \n',Tc99(end))
fprintf('Ru101[kg/THM] %d \n',Ru101(end))
fprintf('Rh103[kg/THM] %d \n',Rh103(end))
fprintf('Ag109[kg/THM] %d \n',Ag109(end))
fprintf('Cs133[kg/THM] %d \n',Cs133(end))
fprintf('Sm147[kg/THM] %d \n',Sm147(end))
fprintf('Sm147[kg/THM] %d \n',Sm147(end))
fprintf('Sm150[kg/THM] %d \n',Sm150(end))
fprintf('Sm151[kg/THM] %d \n',Sm151(end))
fprintf('Sm152[kg/THM] %d \n',Sm152(end))
fprintf('Nd143[kg/THM] %d \n',Nd143(end))
fprintf('Nd145[kg/THM] %d \n',Nd145(end))
fprintf('Eu153[kg/THM] %d \n',Eu153(end))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plotting graphs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        figure(1)
        hold on
        title('U-233')
        plot(BU,U233)
        xlabel('Queima[MWd/kgHM]')
        ylabel('Massa[kg/THM]')    
        grid on
        
        figure(2)
        hold on
        title('Total Burnup')
        plot(BU,U233,BU,U235)
        xlabel('Burn[MWd/kgHM]')
        ylabel('Mass[kg/THM]')
        grid on        
    
        figure(3)
        hold on
        title('Pu-238')
        plot(BU,PU238)
        xlabel('Queima[MWd/kgHM]')
        ylabel('Massa[kg/THM]')
        grid on
        
        figure(4)
        hold on
        title('Pu-239')
        plot(BU,PU239)
        xlabel('Queima[MWd/kgHM]')
        ylabel('Massa[kg/THM]')   
        grid on 
          
        figure(5)
        hold on
        title('Pu-240')
        plot(BU,PU240)
        xlabel('Queima[MWd/kgHM]')
        ylabel('Massa[kg/THM]')   
        grid on 
        
        figure(6)
        hold on
        title('Pu-241')
        plot(BU,PU241)
        xlabel('Queima[MWd/kgHM]')
        ylabel('Massa[kg/THM]')   
        grid on 

