library IEEE;
use IEEE.std_logic_1164.all;  -- defines std_logic types
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Copyright (C) 2007, Peter C. Wallace, Mesa Electronics
-- http://www.mesanet.com
--
-- This program is is licensed under a disjunctive dual license giving you
-- the choice of one of the two following sets of free software/open source
-- licensing terms:
--
--    * GNU General Public License (GPL), version 2.0 or later
--    * 3-clause BSD License
-- 
--
-- The GNU GPL License:
-- 
--     This program is free software; you can redistribute it and/or modify
--     it under the terms of the GNU General Public License as published by
--     the Free Software Foundation; either version 2 of the License, or
--     (at your option) any later version.
-- 
--     This program is distributed in the hope that it will be useful,
--     but WITHOUT ANY WARRANTY; without even the implied warranty of
--     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--     GNU General Public License for more details.
-- 
--     You should have received a copy of the GNU General Public License
--     along with this program; if not, write to the Free Software
--     Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
-- 
-- 
-- The 3-clause BSD License:
-- 
--     Redistribution and use in source and binary forms, with or without
--     modification, are permitted provided that the following conditions
--     are met:
-- 
--   * Redistributions of source code must retain the above copyright
--     notice, this list of conditions and the following disclaimer.
-- 
--   * Redistributions in binary form must reproduce the above
--     copyright notice, this list of conditions and the following
--     disclaimer in the documentation and/or other materials
--     provided with the distribution.
-- 
--   * Neither the name of Mesa Electronics nor the names of its
--     contributors may be used to endorse or promote products
--     derived from this software without specific prior written
--     permission.
-- 
-- 
-- Disclaimer:
-- 
--     THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
--     "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
--     LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
--     FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
--     COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
--     INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
--     BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
--     LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
--     CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
--     LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
--     ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
--     POSSIBILITY OF SUCH DAMAGE.
-- 

use work.IDROMConst.all;

package PIN_4x7I65_96 is
	constant ModuleID : ModuleIDType :=( 
		(WatchDogTag,	 		x"00",	ClockLowTag,	x"01",	WatchDogTimeAddr&PadT,		WatchDogNumRegs,			x"00",	WatchDogMPBitMask),
		(IOPortTag,				x"00",	ClockLowTag,	x"04",	PortAddr&PadT,					IOPortNumRegs,				x"00",	IOPortMPBitMask),
		(MuxedQcountTag,		MQCRev,	ClockLowTag,	x"20",	MuxedQcounterAddr&PadT,		MuxedQCounterNumRegs,	x"00",	MuxedQCounterMPBitMask),
		(MuxedQCountSelTag,	x"00",	ClockLowTag,	x"01",	NullAddr&PadT,					x"00",						x"00",	x"00000000"),
		(BSPITag,				x"00",	ClockLowTag,	x"04",	BSPIDataAddr&PadT,			BSPINumRegs,				x"11",	BSPIMPBitMask),
		(LEDTag,					x"00",	ClockLowTag,	x"01",	LEDAddr&PadT,					LEDNumRegs,					x"00",	LEDMPBitMask),	
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,		x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000")
		);

		
	constant PinDesc : PinDescType :=(
-- 	Base func  sec unit sec func 	 sec pin		
		IOPortTag & x"00" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 00
		IOPortTag & x"00" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 01	
		IOPortTag & x"00" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 02		
		IOPortTag & x"01" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 03		
		IOPortTag & x"01" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 04		
		IOPortTag & x"01" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 05		
		IOPortTag & x"02" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 06			
		IOPortTag & x"02" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 07		
		IOPortTag & x"02" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 08		
		IOPortTag & x"03" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 09
		IOPortTag & x"03" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 10
		IOPortTag & x"03" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 11
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 12		
		IOPortTag & x"00" & MuxedQCountSelTag & MuxedQCountSel0Pin,	-- I/O 37
		IOPortTag & x"00" & BSPITag & BSPIFramePin,						-- I/O 14	
		IOPortTag & x"00" & BSPITag & BSPIOutPin,							-- I/O 15
		IOPortTag & x"00" & BSPITag & BSPIClkPin,							-- I/O 16			
		IOPortTag & x"00" & BSPITag & BSPIInPin,							-- I/O 17
		IOPortTag & x"00" & BSPITag & BSPICS2Pin,							-- I/O 18			
		IOPortTag & x"00" & BSPITag & BSPICS1Pin,							-- I/O 19
		IOPortTag & x"00" & BSPITag & BSPICS0Pin,							-- I/O 20			
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 21
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 22			
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 23
					
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 24
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 25
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 26
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 27
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 28
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 29
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 30
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 31
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 32
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 33
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 34
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 35
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 36
		IOPortTag & x"08" & MuxedQCountSelTag & MuxedQCountSel0Pin,	-- I/O 37
		IOPortTag & x"01" & BSPITag & BSPIFramePin,						-- I/O 38
		IOPortTag & x"01" & BSPITag & BSPIOutPin,							-- I/O 39
		IOPortTag & x"01" & BSPITag & BSPIClkPin,							-- I/O 40
		IOPortTag & x"01" & BSPITag & BSPIInPin,							-- I/O 41
		IOPortTag & x"01" & BSPITag & BSPICS2Pin,							-- I/O 42
		IOPortTag & x"01" & BSPITag & BSPICS1Pin,							-- I/O 43
		IOPortTag & x"01" & BSPITag & BSPICS0Pin,							-- I/O 44
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 45
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 46
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 47
		
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 48
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 49
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 50
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 51
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 52
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 53
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 54
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 55
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 56
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 57
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 58
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 59
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 60
		IOPortTag & x"10" & MuxedQCountSelTag & MuxedQCountSel0Pin,	-- I/O 61
		IOPortTag & x"02" & BSPITag & BSPIFramePin,						-- I/O 62
		IOPortTag & x"02" & BSPITag & BSPIOutPin,							-- I/O 63
		IOPortTag & x"02" & BSPITag & BSPIClkPin,							-- I/O 64
		IOPortTag & x"02" & BSPITag & BSPIInPin,							-- I/O 65
		IOPortTag & x"02" & BSPITag & BSPICS2Pin,							-- I/O 66
		IOPortTag & x"02" & BSPITag & BSPICS1Pin,							-- I/O 67
		IOPortTag & x"02" & BSPITag & BSPICS0Pin,							-- I/O 68
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 69
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 70
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 71
		
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 72
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 73
		IOPortTag & x"04" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 74
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 75
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 76
		IOPortTag & x"05" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 77
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 78
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 79
		IOPortTag & x"06" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 80
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountQAPin,		-- I/O 81
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountQBPin,		-- I/O 82
		IOPortTag & x"07" & MuxedQCountTag & MuxedQCountIDXPin,		-- I/O 83
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 84
		IOPortTag & x"18" & MuxedQCountSelTag & MuxedQCountSel0Pin,	-- I/O 85
		IOPortTag & x"03" & BSPITag & BSPIFramePin,						-- I/O 86
		IOPortTag & x"03" & BSPITag & BSPIOutPin,							-- I/O 87
		IOPortTag & x"03" & BSPITag & BSPIClkPin,							-- I/O 88
		IOPortTag & x"03" & BSPITag & BSPIInPin,							-- I/O 89
		IOPortTag & x"03" & BSPITag & BSPICS2Pin,							-- I/O 90
		IOPortTag & x"03" & BSPITag & BSPICS1Pin,							-- I/O 91
		IOPortTag & x"03" & BSPITag & BSPICS0Pin,							-- I/O 92
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 93
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 94
		IOPortTag & x"00" & NullTag & x"00",								-- I/O 95

		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin, -- added for IDROM v3
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin);					

end package PIN_4x7I65_96;
