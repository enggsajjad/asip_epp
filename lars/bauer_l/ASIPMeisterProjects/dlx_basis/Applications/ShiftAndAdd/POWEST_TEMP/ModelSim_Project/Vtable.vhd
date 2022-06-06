
----------------------------------------------------------------
-- 
-- Created by the Synopsys Library Compiler 2002.05
-- FILENAME     :    Vtable.vhd
-- FILE CONTENTS:    VITAL Table Package
-- DATE CREATED :    Mon Oct 20 17:30:54 2003
-- 
-- LIBRARY      :    tcb015ghd
-- DATE ENTERED :    Wed Oct  1 15:54:49 CST 2003 
-- REVISION     :    221
-- TECHNOLOGY   :    cmos
-- TIME SCALE   :    1 ns
-- LOGIC SYSTEM :    IEEE-1164
-- NOTES        :    
--                   Copyright TSMC
-- HISTORY      :
-- 
----------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- synopsys translate_off

library IEEE;
use IEEE.VITAL_Timing.all;
use IEEE.VITAL_Primitives.all;
-- synopsys translate_on

package VTABLES is

   CONSTANT L : VitalTableSymbolType := '0';
   CONSTANT H : VitalTableSymbolType := '1';
   CONSTANT x : VitalTableSymbolType := '-';
   CONSTANT S : VitalTableSymbolType := 'S';
   CONSTANT R : VitalTableSymbolType := '/';
   CONSTANT U : VitalTableSymbolType := 'X';
   CONSTANT V : VitalTableSymbolType := 'B'; -- valid clock signal (non-rising)



   CONSTANT CKLNQD1_QD_tab : VitalStateTableType := (
    ( L,  L,  L,  x,  L ),
    ( L,  H,  x,  x,  H ),
    ( L,  x,  H,  x,  H ),
    ( H,  x,  x,  x,  S ));


   CONSTANT DFCND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  L ),
    ( H,  L,  H,  H,  x,  H ),
    ( H,  H,  x,  x,  x,  S ),
    ( H,  x,  x,  L,  x,  S ),
    ( x,  L,  L,  H,  x,  L ));

   CONSTANT DFCSND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  H,  x,  H,  x,  H ),
    ( H,  H,  x,  H,  x,  x,  S ),
    ( H,  x,  x,  L,  x,  x,  H ), 
    ( H,  x,  x,  H,  L,  x,  S ),
    ( x,  L,  L,  H,  H,  x,  L ));

   CONSTANT DFCSND1_QN_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  x,  L,  H,  x,  H ),
    ( H,  H,  H,  x,  x,  x,  S ),
    ( H,  x,  L,  x,  x,  x,  H ),
    ( H,  x,  H,  x,  L,  x,  S ),
    ( x,  L,  H,  H,  H,  x,  L ));


   CONSTANT DFD1_Q_tab : VitalStateTableType := (
    ( L,  L,  H,  x,  L ),
    ( L,  H,  H,  x,  H ),
    ( H,  x,  x,  x,  S ),
    ( x,  x,  L,  x,  S ));


   CONSTANT DFKCND1_Q_tab : VitalStateTableType := (
    ( L,  L,  x,  H,  x,  L ),
    ( L,  H,  H,  H,  x,  H ),
    ( L,  x,  L,  H,  x,  L ),
    ( H,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  L,  x,  S ));


   CONSTANT DFKCSND1_Q_tab : VitalStateTableType := (
    ( L,  L,  x,  x,  H,  x,  L ),
    ( L,  H,  H,  x,  H,  x,  H ),
    ( L,  H,  x,  L,  H,  x,  H ),
    ( L,  x,  L,  H,  H,  x,  L ),
    ( H,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  L,  x,  S ));


   CONSTANT DFKSND1_Q_tab : VitalStateTableType := (
    ( L,  L,  H,  H,  x,  L ),
    ( L,  H,  x,  H,  x,  H ),
    ( L,  x,  L,  H,  x,  H ),
    ( H,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  L,  x,  S ));


   CONSTANT DFNSND1_Q_tab : VitalStateTableType := (
    ( L,  L,  H,  H,  x,  L ),
    ( L,  H,  x,  H,  x,  H ),
    ( H,  x,  H,  x,  x,  S ),
    ( x,  x,  L,  x,  x,  H ),
    ( x,  x,  H,  L,  x,  S ));


   CONSTANT DFXD1_Q_tab : VitalStateTableType := (
    ( L,  L,  L,  x,  H,  x,  L ),
    ( L,  L,  x,  L,  H,  x,  L ),
    ( L,  H,  H,  x,  H,  x,  H ),
    ( L,  H,  x,  L,  H,  x,  H ),
    ( L,  x,  L,  H,  H,  x,  L ),
    ( L,  x,  H,  H,  H,  x,  H ),
    ( H,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  L,  x,  S ));


   CONSTANT EDFCND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  H,  H,  x,  H,  x,  H ),
    ( H,  L,  H,  x,  L,  H,  x,  H ),
    ( H,  L,  x,  H,  H,  H,  x,  H ),
    ( H,  H,  x,  x,  x,  x,  x,  S ),
    ( H,  x,  x,  x,  x,  L,  x,  S ),
    ( x,  L,  L,  L,  x,  H,  x,  L ),
    ( x,  L,  L,  x,  L,  H,  x,  L ),
    ( x,  L,  x,  L,  H,  H,  x,  L ));


   CONSTANT EDFKCND1_Q_tab : VitalStateTableType := (
    ( L,  L,  x,  x,  x,  H,  x,  L ),
    ( L,  H,  H,  H,  x,  H,  x,  H ),
    ( L,  H,  H,  x,  L,  H,  x,  H ),
    ( L,  H,  x,  H,  H,  H,  x,  H ),
    ( L,  x,  L,  L,  x,  H,  x,  L ),
    ( L,  x,  L,  x,  L,  H,  x,  L ),
    ( L,  x,  x,  L,  H,  H,  x,  L ),
    ( H,  x,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  x,  L,  x,  S ));


   CONSTANT LHCND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  L ),
    ( H,  H,  H,  x,  H ),
    ( H,  x,  L,  x,  S ),
    ( x,  L,  H,  x,  L ));


   CONSTANT LHCSND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  H,  x,  L ),
    ( H,  H,  H,  x,  x,  H ),
    ( H,  x,  L,  H,  x,  S ),
    ( x,  L,  H,  H,  x,  L ),
    ( x,  x,  x,  L,  x,  H ));


   CONSTANT LHD1_Q_tab : VitalStateTableType := (
    ( L,  H,  x,  L ),
    ( H,  H,  x,  H ),
    ( x,  L,  x,  S ));


   CONSTANT LHSND1_Q_tab : VitalStateTableType := (
    ( L,  H,  H,  x,  L ),
    ( H,  x,  H,  x,  H ),
    ( x,  L,  x,  x,  H ),
    ( x,  H,  L,  x,  S ));


   CONSTANT LNCND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  L ),
    ( H,  L,  H,  x,  H ),
    ( H,  H,  x,  x,  S ),
    ( x,  L,  L,  x,  L ));


   CONSTANT LNCSND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  H,  x,  L ),
    ( H,  L,  H,  x,  x,  H ),
    ( H,  H,  x,  H,  x,  S ),
    ( x,  L,  L,  H,  x,  L ),
    ( x,  x,  x,  L,  x,  H ));


   CONSTANT LND1_Q_tab : VitalStateTableType := (
    ( L,  L,  x,  L ),
    ( L,  H,  x,  H ),
    ( H,  x,  x,  S ));


   CONSTANT LNSND1_Q_tab : VitalStateTableType := (
    ( L,  L,  H,  x,  L ),
    ( L,  H,  x,  x,  H ),
    ( H,  x,  H,  x,  S ),
    ( x,  x,  L,  x,  H ));


   CONSTANT SDF4CQD1_Q_tab : VitalStateTableType := (
    ( L,  L,  L,  x,  H,  x,  L ),
    ( L,  L,  x,  H,  H,  x,  L ),
    ( L,  H,  H,  x,  H,  x,  H ),
    ( L,  H,  x,  H,  H,  x,  H ),
    ( L,  x,  L,  L,  H,  x,  L ),
    ( L,  x,  H,  L,  H,  x,  H ),
    ( H,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  L,  x,  S ));


   CONSTANT SDFCND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  H,  H,  x,  H,  x,  H ),
    ( H,  L,  H,  x,  H,  H,  x,  H ),
    ( H,  L,  x,  H,  L,  H,  x,  H ),
    ( H,  H,  x,  x,  x,  x,  x,  S ),
    ( H,  x,  x,  x,  x,  L,  x,  S ),
    ( x,  L,  L,  L,  x,  H,  x,  L ),
    ( x,  L,  L,  x,  H,  H,  x,  L ),
    ( x,  L,  x,  L,  L,  H,  x,  L ));


   CONSTANT SDFCSND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  H,  H,  x,  x,  H,  x,  H ),
    ( H,  L,  H,  x,  H,  x,  H,  x,  H ),
    ( H,  L,  x,  H,  L,  x,  H,  x,  H ),
    ( H,  H,  x,  x,  x,  H,  x,  x,  S ),
    ( H,  x,  x,  x,  x,  L,  x,  x,  H ),
    ( H,  x,  x,  x,  x,  H,  L,  x,  S ),
    ( x,  L,  L,  L,  x,  H,  H,  x,  L ),
    ( x,  L,  L,  x,  H,  H,  H,  x,  L ),
    ( x,  L,  x,  L,  L,  H,  H,  x,  L ));


   CONSTANT SDFCSND1_QN_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  L,  x,  L,  x,  H,  x,  H ),
    ( H,  L,  H,  L,  x,  x,  H,  x,  H ),
    ( H,  L,  x,  L,  L,  x,  H,  x,  H ),
    ( H,  H,  x,  x,  x,  H,  x,  x,  S ),
    ( H,  x,  x,  x,  x,  L,  x,  x,  H ),
    ( H,  x,  x,  x,  x,  H,  L,  x,  S ),
    ( x,  L,  L,  x,  H,  H,  H,  x,  L ),
    ( x,  L,  H,  H,  x,  H,  H,  x,  L ),
    ( x,  L,  x,  H,  H,  H,  H,  x,  L ));


   CONSTANT SDFKCND1_Q_tab : VitalStateTableType := (
    ( L,  L,  H,  x,  x,  H,  x,  L ),
    ( L,  L,  x,  L,  x,  H,  x,  L ),
    ( L,  L,  x,  x,  L,  H,  x,  L ),
    ( L,  H,  H,  x,  x,  H,  x,  H ),
    ( L,  H,  x,  H,  H,  H,  x,  H ),
    ( L,  x,  L,  L,  x,  H,  x,  L ),
    ( L,  x,  L,  H,  H,  H,  x,  H ),
    ( L,  x,  L,  x,  L,  H,  x,  L ),
    ( H,  x,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  x,  L,  x,  S ));


   CONSTANT SDFKCSND1_Q_tab : VitalStateTableType := (
    ( L,  L,  L,  x,  x,  x,  H,  x,  L ),
    ( L,  L,  x,  H,  x,  x,  H,  x,  L ),
    ( L,  L,  x,  x,  L,  H,  H,  x,  L ),
    ( L,  H,  H,  x,  H,  x,  H,  x,  H ),
    ( L,  H,  H,  x,  x,  L,  H,  x,  H ),
    ( L,  H,  x,  H,  x,  x,  H,  x,  H ),
    ( L,  x,  L,  L,  x,  x,  H,  x,  L ),
    ( L,  x,  H,  L,  H,  x,  H,  x,  H ),
    ( L,  x,  H,  L,  x,  L,  H,  x,  H ),
    ( L,  x,  x,  L,  L,  H,  H,  x,  L ),
    ( H,  x,  x,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  x,  x,  L,  x,  S ));


   CONSTANT SDFKSND1_Q_tab : VitalStateTableType := (
    ( L,  L,  L,  x,  H,  H,  x,  L ),
    ( L,  L,  x,  H,  x,  H,  x,  L ),
    ( L,  H,  H,  x,  x,  H,  x,  H ),
    ( L,  H,  x,  H,  x,  H,  x,  H ),
    ( L,  H,  x,  x,  L,  H,  x,  H ),
    ( L,  x,  L,  L,  H,  H,  x,  L ),
    ( L,  x,  H,  L,  x,  H,  x,  H ),
    ( L,  x,  x,  L,  L,  H,  x,  H ),
    ( H,  x,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  x,  L,  x,  S ));


   CONSTANT SDFNSND1_Q_tab : VitalStateTableType := (
    ( L,  L,  L,  x,  H,  H,  x,  L ),
    ( L,  L,  x,  H,  H,  H,  x,  L ),
    ( L,  H,  H,  x,  x,  H,  x,  H ),
    ( L,  H,  x,  H,  x,  H,  x,  H ),
    ( L,  x,  L,  L,  H,  H,  x,  L ),
    ( L,  x,  H,  L,  x,  H,  x,  H ),
    ( H,  x,  x,  x,  H,  x,  x,  S ),
    ( x,  x,  x,  x,  L,  x,  x,  H ),
    ( x,  x,  x,  x,  H,  L,  x,  S ));


   CONSTANT SDFXD1_Q_tab : VitalStateTableType := (
    ( L,  L,  L,  L,  x,  x,  H,  x,  L ),
    ( L,  L,  L,  x,  x,  L,  H,  x,  L ),
    ( L,  L,  x,  L,  x,  H,  H,  x,  L ),
    ( L,  L,  x,  x,  H,  x,  H,  x,  L ),
    ( L,  H,  H,  H,  x,  x,  H,  x,  H ),
    ( L,  H,  H,  x,  x,  L,  H,  x,  H ),
    ( L,  H,  x,  H,  x,  H,  H,  x,  H ),
    ( L,  H,  x,  x,  H,  x,  H,  x,  H ),
    ( L,  x,  L,  L,  L,  x,  H,  x,  L ),
    ( L,  x,  L,  x,  L,  L,  H,  x,  L ),
    ( L,  x,  H,  H,  L,  x,  H,  x,  H ),
    ( L,  x,  H,  x,  L,  L,  H,  x,  H ),
    ( L,  x,  x,  L,  L,  H,  H,  x,  L ),
    ( L,  x,  x,  H,  L,  H,  H,  x,  H ),
    ( H,  x,  x,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  x,  x,  L,  x,  S ));


   CONSTANT SEDFCND1_Q_tab : VitalStateTableType := (
    ( L,  x,  x,  x,  x,  x,  x,  x,  x,  L ),
    ( H,  L,  H,  H,  H,  x,  x,  H,  x,  H ),
    ( H,  L,  H,  H,  x,  x,  L,  H,  x,  H ),
    ( H,  L,  H,  x,  H,  x,  H,  H,  x,  H ),
    ( H,  L,  H,  x,  x,  H,  x,  H,  x,  H ),
    ( H,  L,  x,  H,  H,  L,  x,  H,  x,  H ),
    ( H,  L,  x,  H,  x,  L,  L,  H,  x,  H ),
    ( H,  L,  x,  x,  H,  L,  H,  H,  x,  H ),
    ( H,  H,  x,  x,  x,  x,  x,  x,  x,  S ),
    ( H,  x,  x,  x,  x,  x,  x,  L,  x,  S ),
    ( x,  L,  L,  L,  L,  x,  x,  H,  x,  L ),
    ( x,  L,  L,  L,  x,  x,  L,  H,  x,  L ),
    ( x,  L,  L,  x,  L,  x,  H,  H,  x,  L ),
    ( x,  L,  L,  x,  x,  H,  x,  H,  x,  L ),
    ( x,  L,  x,  L,  L,  L,  x,  H,  x,  L ),
    ( x,  L,  x,  L,  x,  L,  L,  H,  x,  L ),
    ( x,  L,  x,  x,  L,  L,  H,  H,  x,  L ));


   CONSTANT SEDFKCND1_Q_tab : VitalStateTableType := (
    ( L,  L,  H,  x,  x,  x,  x,  H,  x,  L ),
    ( L,  L,  x,  L,  x,  x,  x,  H,  x,  L ),
    ( L,  L,  x,  x,  L,  L,  x,  H,  x,  L ),
    ( L,  L,  x,  x,  L,  x,  L,  H,  x,  L ),
    ( L,  L,  x,  x,  x,  L,  H,  H,  x,  L ),
    ( L,  H,  H,  x,  x,  x,  x,  H,  x,  H ),
    ( L,  H,  x,  H,  H,  H,  x,  H,  x,  H ),
    ( L,  H,  x,  H,  H,  x,  L,  H,  x,  H ),
    ( L,  H,  x,  H,  x,  H,  H,  H,  x,  H ),
    ( L,  x,  L,  L,  x,  x,  x,  H,  x,  L ),
    ( L,  x,  L,  H,  H,  H,  x,  H,  x,  H ),
    ( L,  x,  L,  H,  H,  x,  L,  H,  x,  H ),
    ( L,  x,  L,  H,  x,  H,  H,  H,  x,  H ),
    ( L,  x,  L,  x,  L,  L,  x,  H,  x,  L ),
    ( L,  x,  L,  x,  L,  x,  L,  H,  x,  L ),
    ( L,  x,  L,  x,  x,  L,  H,  H,  x,  L ),
    ( H,  x,  x,  x,  x,  x,  x,  x,  x,  S ),
    ( x,  x,  x,  x,  x,  x,  x,  L,  x,  S ));


end VTABLES;

---- end of VITAL tables library ----
