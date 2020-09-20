/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7.aml, Sun Sep 20 06:28:02 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000046 (70)
 *     Revision         0x02
 *     Checksum         0xBD
 *     OEM ID           "XMCC"
 *     OEM Table ID     "XMCC1941"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "XMCC", "XMCC1941", 0x00003000)
{
    OperationRegion (MENV, SystemMemory, 0x99A82F98, 0x000C)
    Field (MENV, AnyAcc, Lock, Preserve)
    {
        MERV,   32, 
        PTTB,   64
    }
}

