-- AL unit for the CPU_8 project
-- Version  : 0.1
-- Author   : DoronK

library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is 
generic (
    DataSize    : integer range 3 to 8 := 8;
    OpcodeSize  : integer := 6
);
port (
    clk         :   in  std_logic;
    rstn        :   in  std_logic;

    operandA    :   in  std_logic_vector(DataSize-3 downto 0);
    operandB    :   in  std_logic_vector(DataSize-3 downto 0);
    opcode      :   in  std_logic_vector(OpcodeSize-1 downto 0);
    
    result      :   out  std_logic_vector(DataSize-1 downto 0)
);

end ALU;

architecture beh of ALU is
-- Components

-- Signals
    signal operMSB  : std_logic_vector(OpcodeSize-1 downto 2);
    signal operLSB  : std_logic_vector(1 downto 0);
    signal ALUOut   : std_logic_vector(DataSize-1 downto 0);

    signal compDone : std_logic;

begin 
   

end beh;

-- Opcode   Oper                    Func
-- 0000XX   ALUOut <= A             Pass A
-- 0001XX   ALUOut <= A+B           Add
-- 0010XX   ALUOut <= |A-B|         Abs Sub
-- 0011XX   ALUOut <= A&B           Logical And
-- 0100XX   ALUOut <= A|B           Logical Or
-- 0101XX   ALUOut <= A+1           IncA
-- 0110XX   ALUOut <= A-B           Sub
-- 0111XX   ALUOut <= A*B           Mult
-- 1000XX   ALUOut <= ~(A)          Not(A)
-- 1001XX   ALUOut <= ~(B)          Not(B)
-------------------------------------------
-- XXXX00   result <= ALUOut        Pass
-- XXXX01   result <= SHL(ALUOut)   ShiftLeft
-- XXXX10   result <= SHR(ALUOut)   ShiftRightUnsignedZero
-- XXXX11   result <= 0             Pass 0


