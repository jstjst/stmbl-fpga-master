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

package PIN_stmblFpgaMaster_SSD12_48 is
	constant ModuleID : ModuleIDType :=( 
		(HM2DPLLTag,			x"00",	ClockLowTag,		x"01",	HM2DPLLBaseRateAddr&PadT,		HM2DPLLNumRegs,			x"00",	HM2DPLLMPBitMask),
		(WatchDogTag,			x"00",	ClockLowTag,		x"01",	WatchDogTimeAddr&PadT,			WatchDogNumRegs,		x"00",	WatchDogMPBitMask),
		(IOPortTag,				x"00",	ClockLowTag,		x"02",	PortAddr&PadT,					IOPortNumRegs,			x"00",	IOPortMPBitMask),
		(SSerialTag,			x"00",	ClockLowTag,		x"02",	SSerialCommandAddr&PadT,		SSerialNumRegs,			x"10",	SSerialMPBitMask),
		(LEDTag,				x"00",	ClockLowTag,		x"01",	LEDAddr&PadT,					LEDNumRegs,				x"00",	LEDMPBitMask),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000"),
		(NullTag,				x"00",	NullTag,			x"00",	NullAddr&PadT,					x"00",					x"00",	x"00000000")
		);
			
	constant PinDesc : PinDescType :=(
	
-- 	Base func  sec unit sec func 	sec pin						 	      
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 00 	 parallel expansion port
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 01   	
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 02   
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 03		
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 04	
		IOPortTag & x"00" & NullTag & x"00",       		 	-- I/O 05		
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 06   
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 07   	
		IOPortTag & x"00" & NullTag & x"00",    			-- I/O 08   
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 09   
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 10   
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 11   
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 12   
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 13		
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 14   	
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 15   	
		IOPortTag & x"00" & NullTag & x"00",       			-- I/O 16  

		IOPortTag & x"00" & SSerialTag & SSerialRX0Pin,
		IOPortTag & x"00" & SSerialTag & SSerialTX0Pin,
        IOPortTag & x"00" & SSerialTag & SSerialRX1Pin,
		IOPortTag & x"00" & SSerialTag & SSerialTX1Pin,
        IOPortTag & x"00" & SSerialTag & SSerialRX2Pin,
		IOPortTag & x"00" & SSerialTag & SSerialTX2Pin,
        IOPortTag & x"00" & SSerialTag & SSerialRX3Pin,
		IOPortTag & x"00" & SSerialTag & SSerialTX3Pin,
        IOPortTag & x"00" & SSerialTag & SSerialRX4Pin,
		IOPortTag & x"00" & SSerialTag & SSerialTX4Pin,
        IOPortTag & x"00" & SSerialTag & SSerialRX5Pin,
		IOPortTag & x"00" & SSerialTag & SSerialTX5Pin,

        IOPortTag & x"00" & SSerialTag & SSerialRX6Pin,
		IOPortTag & x"00" & SSerialTag & SSerialTX6Pin,
        IOPortTag & x"00" & SSerialTag & SSerialRX7Pin,
		IOPortTag & x"00" & SSerialTag & SSerialTX7Pin,
        IOPortTag & x"01" & SSerialTag & SSerialRX0Pin,
		IOPortTag & x"01" & SSerialTag & SSerialTX0Pin,
        IOPortTag & x"01" & SSerialTag & SSerialRX1Pin,
		IOPortTag & x"01" & SSerialTag & SSerialTX1Pin,

        IOPortTag & x"01" & SSerialTag & SSerialRX2Pin,
		IOPortTag & x"01" & SSerialTag & SSerialTX2Pin,
        IOPortTag & x"01" & SSerialTag & SSerialRX3Pin,
		IOPortTag & x"01" & SSerialTag & SSerialTX3Pin,

        IOPortTag & x"00" & NullTag & x"00",			--IOPortTag & x"01" & SSerialTag & SSerialRX4Pin,
		IOPortTag & x"00" & NullTag & x"00",			--IOPortTag & x"01" & SSerialTag & SSerialTX4Pin,
		IOPortTag & x"00" & NullTag & x"00",			--IOPortTag & x"01" & SSerialTag & SSerialTXEn4Pin,
        IOPortTag & x"00" & NullTag & x"00",			--IOPortTag & x"01" & SSerialTag & SSerialRX5Pin,
		IOPortTag & x"00" & NullTag & x"00",			--IOPortTag & x"01" & SSerialTag & SSerialTX5Pin,
        IOPortTag & x"00" & NullTag & x"00",			--IOPortTag & x"01" & SSerialTag & SSerialTXEn5Pin,
        
        IOPortTag & x"01" & NullTag & x"00",	-- EXT-PWR-EN	
	
																							
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin, -- added for IDROM v3
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,
		emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin,emptypin);

end PIN_stmblFpgaMaster_SSD12_48;
