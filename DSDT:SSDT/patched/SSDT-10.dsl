/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-10.aml, Sun Sep 20 06:28:14 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00003252 (12882)
 *     Revision         0x01
 *     Checksum         0xB9
 *     OEM ID           "XMCC"
 *     OEM Table ID     "XMCC1941"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 1, "XMCC", "XMCC1941", 0x00001000)
{
    /*
     * iASL Warning: There were 8 external control methods found during
     * disassembly, but only 7 were resolved (1 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_SB_.CPPC, IntObj)    // (from opcode)
    External (_SB_.GGIV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.HWPV, IntObj)    // (from opcode)
    External (_SB_.IETM, DeviceObj)    // (from opcode)
    External (_SB_.OSCO, UnknownObj)    // (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.B0D4, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU.ELCT, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.RAM_, OpRegionObj)    // (from opcode)
    External (_SB_.PCI0.RP05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP05.PXSX._ADR, UnknownObj)    // (from opcode)
    External (_SB_.PCRR, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCRW, MethodObj)    // 3 Arguments (from opcode)
    External (_SB_.PR00, UnknownObj)    // Warning: Unknown object
    External (_SB_.PR00._PPC, IntObj)    // (from opcode)
    External (_SB_.PR00._PSS, BuffObj)    // (from opcode)
    External (_SB_.PR01, UnknownObj)    // Warning: Unknown object
    External (_SB_.PR01._PPC, IntObj)    // (from opcode)
    External (_SB_.PR02, UnknownObj)    // Warning: Unknown object
    External (_SB_.PR02._PPC, IntObj)    // (from opcode)
    External (_SB_.PR03, UnknownObj)    // Warning: Unknown object
    External (_SB_.PR03._PPC, IntObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (_TZ_.TZ01._TMP, UnknownObj)    // (from opcode)
    External (DID1, UnknownObj)    // (from opcode)
    External (DID2, UnknownObj)    // (from opcode)
    External (DID3, UnknownObj)    // (from opcode)
    External (DID4, UnknownObj)    // (from opcode)
    External (DID5, UnknownObj)    // (from opcode)
    External (DID6, UnknownObj)    // (from opcode)
    External (DID7, UnknownObj)    // (from opcode)
    External (DID8, UnknownObj)    // (from opcode)
    External (DLHR, UnknownObj)    // (from opcode)
    External (DLPW, UnknownObj)    // (from opcode)
    External (DPTF, IntObj)    // (from opcode)
    External (HRA0, UnknownObj)    // (from opcode)
    External (HRE0, UnknownObj)    // (from opcode)
    External (HRG0, UnknownObj)    // (from opcode)
    External (IGDS, FieldUnitObj)    // (from opcode)
    External (MMCH, UnknownObj)    // (from opcode)
    External (ODV0, IntObj)    // (from opcode)
    External (OSYS, UnknownObj)    // (from opcode)
    External (P80H, UnknownObj)    // (from opcode)
    External (P8XH, MethodObj)    // 2 Arguments (from opcode)
    External (PNOT, MethodObj)    // 0 Arguments (from opcode)
    External (PWA0, UnknownObj)    // (from opcode)
    External (PWE0, UnknownObj)    // (from opcode)
    External (PWG0, UnknownObj)    // (from opcode)
    External (RAM_, MethodObj)    // Warning: Unknown method, guessing 5 arguments
    External (SGGP, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        OperationRegion (VBOR, SystemMemory, 0x99A20018, 0x00040004)
        Field (VBOR, DWordAcc, Lock, Preserve)
        {
            RVBS,   32, 
            VBS1,   262144, 
            VBS2,   262144, 
            VBS3,   262144, 
            VBS4,   262144, 
            VBS5,   262144, 
            VBS6,   262144, 
            VBS7,   262144, 
            VBS8,   262144
        }
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (HGOP, SystemMemory, 0x98C6DD18, 0x0000001A)
        Field (HGOP, AnyAcc, Lock, Preserve)
        {
            XBAS,   32, 
            DGDA,   32, 
            EECP,   32, 
            DGBA,   32, 
            DSSV,   32, 
            DGPV,   16, 
            OPTF,   8, 
            BOST,   8, 
            NVGE,   8, 
            DISM,   8
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        OperationRegion (NOPR, SystemMemory, 0x99A1D018, 0x00002028)
        Field (NOPR, AnyAcc, Lock, Preserve)
        {
            DHPS,   8, 
            DPCS,   8, 
            GPSS,   8, 
            VENS,   8, 
            NBCS,   8, 
            GC6S,   8, 
            NVSR,   8, 
            NPCS,   8, 
            SLVS,   8, 
            PBCM,   8, 
            GPSP,   8, 
            MXBS,   32, 
            MXMB,   32768, 
            SMXS,   32, 
            SMXB,   32768, 
            FBEN,   32, 
            ENVT,   32, 
            PWGD,   32, 
            DMMP,   32, 
            DLRP,   32, 
            ELRP,   8
        }
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (RPCX, SystemMemory, \_SB.PCI0.DGBA, 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            CMDB,   8, 
            Offset (0x19), 
            PRBN,   8, 
            Offset (0x4A), 
            CEDR,   1, 
            Offset (0x50), 
                ,   4, 
            LKDN,   1, 
            Offset (0x69), 
                ,   2, 
            LREN,   1, 
            Offset (0xA4), 
            D0ST,   2, 
            Offset (0x328), 
                ,   19, 
            LKSN,   4
        }
    }

    Scope (\_SB.PCI0.RP05)
    {
        Device (NXHC)
        {
            Name (_ADR, 0x02)  // _ADR: Address
            Device (NHUB)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Device (SS01)
                {
                    Name (_ADR, One)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (NUPC, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (NUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (NPLD (Zero, One))
                    }
                }

                Device (SS02)
                {
                    Name (_ADR, 0x02)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (NUPC, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (NUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (NPLD (Zero, 0x02))
                    }
                }

                Device (SS03)
                {
                    Name (_ADR, 0x03)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (NUPC, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (NUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (NPLD (Zero, 0x03))
                    }
                }

                Device (SS04)
                {
                    Name (_ADR, 0x04)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (NUPC, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (NUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (NPLD (Zero, 0x04))
                    }
                }

                Device (SS05)
                {
                    Name (_ADR, 0x05)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (NUPC, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (NUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (NPLD (Zero, 0x05))
                    }
                }

                Device (SS06)
                {
                    Name (_ADR, 0x06)  // _ADR: Address
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (NUPC, Package (0x04)
                        {
                            Zero, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Return (NUPC)
                    }

                    Method (_PLD, 0, NotSerialized)  // _PLD: Physical Location of Device
                    {
                        Return (NPLD (Zero, 0x06))
                    }
                }
            }

            Method (NPLD, 2, Serialized)
            {
                Name (PCKG, Package (0x01)
                {
                    Buffer (0x10){}
                })
                CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
                Store (One, REV)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
                Store (Arg0, VISI)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
                Store (Arg1, GPOS)
                Return (PCKG)
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (PCNV, SystemMemory, \_SB.PCI0.DGDA, 0x1000)
        Field (PCNV, DWordAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            VGAR,   2008, 
            Offset (0x488), 
                ,   25, 
            HDAE,   1
        }

        OperationRegion (DGPU, SystemMemory, \_SB.PCI0.DGDA, 0x0100)
        Field (DGPU, DWordAcc, NoLock, Preserve)
        {
            Offset (0x40), 
            SSSV,   32
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        Method (_ROM, 2, Serialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            Name (VROM, Buffer (Local1)
            {
                 0x00                                           
            })
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Arg0, RVBS))
            {
                Return (VROM)
            }

            Add (Arg0, Arg1, Local2)
            If (LGreater (Local2, RVBS))
            {
                Subtract (RVBS, Local0, Local1)
            }

            Divide (Local0, 0x8000, Local3, Local4)
            Switch (Local4)
            {
                Case (Zero)
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS1, Local5)
                }
                Case (One)
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS2, Local5)
                }
                Case (0x02)
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS3, Local5)
                }
                Case (0x03)
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS4, Local5)
                }
                Case (0x04)
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS5, Local5)
                }
                Case (0x05)
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS6, Local5)
                }
                Case (0x06)
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS7, Local5)
                }
                Case (0x07)
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS8, Local5)
                }

            }

            Multiply (0x8000, Local4, Local4)
            Subtract (Local0, Local4, Local0)
            Mid (Local5, Local0, Local1, VROM)
            Return (VROM)
        }

        
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        OperationRegion (PCAP, PCI_Config, \_SB.PCI0.EECP, 0x14)
        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
                ,   4, 
            EMLW,   6, 
            Offset (0x10), 
            LCTL,   16
        }

        Name (VGAB, Buffer (0xFB)
        {
             0x00                                           
        })
        Method (_STA, 0, Serialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (LNotEqual (\_SB.PCI0.RP05.PXSX.DPCS, Zero))
            {
                If (LNotEqual (DGPS, Zero))
                {
                    \_SB.PCI0.RP05.PXSX._ON ()
                    If (LNotEqual (GPRF, One))
                    {
                        Store (VGAB, VGAR)
                    }

                    Store (Zero, DGPS)
                }
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LNotEqual (\_SB.PCI0.RP05.PXSX.DPCS, Zero))
            {
                If (LEqual (OMPR, 0x03))
                {
                    If (LNotEqual (GPRF, One))
                    {
                        Store (VGAR, VGAB)
                    }

                    \_SB.PCI0.RP05.PXSX._OFF ()
                    Store (One, DGPS)
                    Store (0x02, OMPR)
                }
            }
        }

        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00E0 */  0x00, 0x00                                     
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                Return (OPVK)
            }

            Return (Zero)
        }

        Name (DGPS, Zero)
        Name (OMPR, 0x02)
        Name (GPRF, Zero)
        Name (DPST, One)
        Method (NVOP, 4, Serialized)
        {
            Store ("------- NV OPTIMUS DSM --------", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x0C                         
                    })
                }
                Case (0x05)
                {
                    CreateField (Arg3, 0x1F, One, NCSM)
                    Store (Zero, Local0)
                    If (LEqual (ToInteger (NCSM), One))
                    {
                        CreateField (Arg3, 0x19, 0x05, NCIN)
                        Store (ToInteger (NCIN), DPST)
                        Add (DPST, One, DPST)
                        Mod (DPST, 0x12, Local0)
                    }
                    Else
                    {
                        If (LEqual (DPST, Zero))
                        {
                            Add (DPST, One, DPST)
                        }

                        Mod (DPST, 0x12, Local0)
                        ShiftLeft (Local0, 0x08, Local0)
                        Add (DPST, One, DPST)
                    }

                    Return (Local0)
                }
                Case (0x06)
                {
                    Name (TMP6, Package (0x0F)
                    {
                        Ones, 
                        0x2C, 
                        Ones, 
                        0x2C, 
                        Ones, 
                        0x2C, 
                        Ones, 
                        Ones, 
                        0x2C, 
                        Ones, 
                        Ones, 
                        0x2C, 
                        Ones, 
                        Ones, 
                        0x2C
                    })
                    Store (DID2, Index (TMP6, Zero))
                    Store (DID1, Index (TMP6, 0x02))
                    Store (DID4, Index (TMP6, 0x04))
                    Store (DID2, Index (TMP6, 0x06))
                    Store (DID1, Index (TMP6, 0x07))
                    Store (DID2, Index (TMP6, 0x09))
                    Store (DID4, Index (TMP6, 0x0A))
                    Store (DID1, Index (TMP6, 0x0C))
                    Store (DID4, Index (TMP6, 0x0D))
                    Return (TMP6)
                }
                Case (0x10)
                {
                    Return (\_SB.PCI0.RP05.PXSX.GOBT (Arg3))
                }
                Case (0x1A)
                {
                    CreateField (Arg3, Zero, One, FLCH)
                    CreateField (Arg3, One, One, DVSR)
                    CreateField (Arg3, 0x02, One, DVSC)
                    CreateField (Arg3, 0x18, 0x02, OPCE)
                    If (LAnd (ToInteger (FLCH), LNotEqual (ToInteger (OPCE), OMPR)))
                    {
                        Store (ToInteger (OPCE), OMPR)
                    }

                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x08, One, SNSR)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, OHAC)
                    Store (One, OPEN)
                    If (LNotEqual (\_SB.PCI0.RP05.PXSX.DHPS, Zero))
                    {
                        Store (One, SHPC)
                        Store (0x03, OHAC)
                    }

                    If (LNotEqual (\_SB.PCI0.RP05.PXSX.DPCS, Zero))
                    {
                        Store (One, DGPC)
                        If (ToInteger (DVSC))
                        {
                            If (ToInteger (DVSR))
                            {
                                Store (One, GPRF)
                            }
                            Else
                            {
                                Store (Zero, GPRF)
                            }
                        }

                        Store (GPRF, SNSR)
                        If (LEqual (DGPS, Zero))
                        {
                            Store (0x03, CGCS)
                        }
                        Else
                        {
                            Store (Zero, CGCS)
                        }
                    }
                    Else
                    {
                        Store (0x03, CGCS)
                    }

                    Return (Local0)
                }
                Case (0x1B)
                {
                    CreateField (Arg3, Zero, One, OACC)
                    CreateField (Arg3, One, One, UOAC)
                    CreateField (Arg3, 0x02, 0x08, OPDA)
                    CreateField (Arg3, 0x0A, One, OPDE)
                    Store (Zero, Local1)
                    Store (\_SB.PCI0.HDAE, Local1)
                    Return (Local1)
                }
                Default
                {
                    Return (0x80000002)
                }

            }
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        Name (NLIM, Zero)
        Name (PSLS, Zero)
        Name (PTGP, Zero)
        Name (TGPV, 0x2710)
        Name (CTGP, Zero)
        Name (VPSC, One)
        Name (PSAP, Zero)
        Method (GPS, 4, Serialized)
        {
            Store ("------- NV GPS DSM --------", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000002)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Store ("   GPS fun 0", Debug)
                    Return (Buffer (0x08)
                    {
                         0x01, 0x00, 0x08, 0x00, 0x0F, 0x04, 0x00, 0x00 
                    })
                }
                Case (0x13)
                {
                    Name (GB19, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (Arg3, 0x02, One, PPST)
                    CreateBitField (GB19, 0x02, CPST)
                    \_SB.PCI0.ECPL (PPST)
                    Store (One, CPST)
                    Return (GB19)
                }
                Case (0x1C)
                {
                    CreateField (Arg3, Zero, 0x04, RTFS)
                    CreateField (Arg3, 0x08, 0x08, VPS0)
                    CreateField (Arg3, 0x18, 0x08, VPS1)
                    If (LEqual (ToInteger (RTFS), Zero))
                    {
                        Store (0x02, Local0)
                        If (LEqual (VPSC, Zero))
                        {
                            Or (0x0600, Local0, Local0)
                        }
                        Else
                        {
                            Or (Zero, Local0, Local0)
                        }

                        Return (Local0)
                    }
                    ElseIf (LEqual (ToInteger (RTFS), 0x02))
                    {
                        Return (Zero)
                    }
                }
                Case (0x20)
                {
                    Store ("   GPS fun 32", Debug)
                    Name (RET1, Zero)
                    CreateBitField (Arg3, 0x02, SPBI)
                    If (NLIM)
                    {
                        Or (RET1, One, RET1)
                    }

                    If (PSLS)
                    {
                        Or (RET1, 0x02, RET1)
                    }

                    If (PTGP)
                    {
                        Or (RET1, 0x00100000, RET1)
                    }

                    If (CTGP)
                    {
                        Or (RET1, 0x00400000, RET1)
                    }

                    If (CondRefOf (\_SB.HWPV))
                    {
                        If (And (\_SB.HWPV, 0x02))
                        {
                            Or (RET1, 0x00800000, RET1)
                        }
                    }

                    Return (RET1)
                }
                Case (0x21)
                {
                    Return (\_SB.PR00._PSS)
                }
                Case (0x22)
                {
                    CreateDWordField (Arg3, Zero, PCAP)
                    If (CondRefOf (\_SB.CPPC))
                    {
                        Store (PCAP, \_SB.CPPC)
                    }

                    If (CondRefOf (PNOT))
                    {
                        PNOT ()
                    }

                    Store (PCAP, PSAP)
                    Return (PCAP)
                }
                Case (0x23)
                {
                    Return (PSAP)
                }
                Case (0x2A)
                {
                    CreateBitField (Arg3, 0x09, CPUT)
                    Store ("   GPS fun 42", Debug)
                    CreateField (Arg3, Zero, 0x04, PSH0)
                    CreateBitField (Arg3, 0x08, GPUT)
                    Name (GPSP, Buffer (0x24){})
                    CreateDWordField (GPSP, Zero, RETN)
                    CreateDWordField (GPSP, 0x04, VRV1)
                    CreateDWordField (GPSP, 0x08, TGPU)
                    CreateDWordField (GPSP, 0x0C, PDTS)
                    CreateDWordField (GPSP, 0x10, SFAN)
                    CreateDWordField (GPSP, 0x14, SKNT)
                    CreateDWordField (GPSP, 0x18, CPUE)
                    CreateDWordField (GPSP, 0x1C, TMP1)
                    CreateDWordField (GPSP, 0x20, TMP2)
                    Store (0x00010000, VRV1)
                    Switch (ToInteger (PSH0))
                    {
                        Case (Zero)
                        {
                            If (CPUT)
                            {
                                Store (0x0200, RETN)
                                Or (RETN, ToInteger (PSH0), RETN)
                                If (CondRefOf (\_TZ.TZ01._TMP))
                                {
                                    Store (\_TZ.TZ01._TMP, PDTS)
                                    Store (\_TZ.TZ01._TMP, Local0)
                                    If (LLessEqual (Local0, 0x0AAC))
                                    {
                                        Store (Zero, PDTS)
                                    }

                                    If (LGreaterEqual (Local0, 0x0F8E))
                                    {
                                        Store (0x7D, PDTS)
                                    }

                                    If (LAnd (LGreater (Local0, 0x0AAC), LLess (Local0, 0x0F8E)))
                                    {
                                        Store (Divide (Subtract (Local0, 0x0AAC), 0x0A, ), Local1)
                                        Store (Local1, PDTS)
                                    }
                                }
                            }

                            Return (GPSP)
                        }
                        Case (One)
                        {
                            Store (0x0100, RETN)
                            Or (RETN, ToInteger (PSH0), RETN)
                            If (PTGP)
                            {
                                Or (RETN, 0x8000, RETN)
                            }

                            Return (GPSP)
                        }
                        Case (0x02)
                        {
                            Store (0x0102, RETN)
                            Store (Zero, TGPU)
                            Store (\_SB.PCI0.ECTG (), TGPU)
                            If (PTGP)
                            {
                                Or (RETN, 0x8000, RETN)
                            }

                            Return (GPSP)
                        }

                    }
                }
                Default
                {
                    Return (0x80000002)
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (TRPC, Zero)
        Name (TGPC, Buffer (0x04)
        {
             0x00                                           
        })
        Name (TDGC, Zero)
        Name (DGCX, Zero)
        Name (LTRE, Zero)
        Method (GC6I, 0, Serialized)
        {
            \_SB.PCI0.EWGC (One)
            Sleep (0x0A)
            Store (\_SB.PCI0.LREN, \_SB.PCI0.LTRE)
            Store (One, \_SB.PCI0.LKDN)
            While (LNotEqual (\_SB.GGIV (\_SB.PCI0.RP05.PXSX.FBEN), One))
            {
                Sleep (One)
            }

            Sleep (0x64)
        }

        Method (GC6O, 0, Serialized)
        {
            Store (Zero, \_SB.PCI0.LKDN)
            If (LEqual (\_SB.GGIV (\_SB.PCI0.RP05.PXSX.FBEN), One))
            {
                \_SB.SGOV (\_SB.PCI0.RP05.PXSX.ENVT, Zero)
                While (LNotEqual (\_SB.GGIV (\_SB.PCI0.RP05.PXSX.FBEN), Zero))
                {
                    Sleep (One)
                }

                \_SB.SGOV (\_SB.PCI0.RP05.PXSX.ENVT, One)
            }

            While (LLess (\_SB.PCI0.LKSN, 0x07))
            {
                Sleep (One)
            }

            Store (\_SB.PCI0.LTRE, \_SB.PCI0.LREN)
            Store (One, \_SB.PCI0.CEDR)
            \_SB.PCI0.EWGC (Zero)
            Sleep (0x64)
        }

        Method (NINI, 0, NotSerialized)
        {
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        Method (SIOT, 1, Serialized)
        {
            Store (PCRR (0xEF, 0x2750), Local0)
            Store (PCRR (0xEF, 0x2758), Local1)
            Store (PCRR (0xEF, 0x2760), Local2)
            Store (PCRR (0xEF, 0x2768), Local3)
            Store (ShiftRight (And (Local0, 0xFFFC), 0x02), Local0)
            Store (ShiftRight (And (Local1, 0xFFFC), 0x02), Local1)
            Store (ShiftRight (And (Local2, 0xFFFC), 0x02), Local2)
            Store (ShiftRight (And (Local3, 0xFFFC), 0x02), Local3)
            If (LEqual (Arg0, One))
            {
                Store (0x06, CMDR)
                If (LEqual (Local0, 0x03CA))
                {
                    Store (Or (PCRR (0xEF, 0x2750), One), Local4)
                    PCRW (0x89, 0x1E80, Local4)
                    PCRW (0xEF, 0x2750, Local4)
                }

                If (LEqual (Local1, 0x03CA))
                {
                    Store (Or (PCRR (0xEF, 0x2758), One), Local4)
                    PCRW (0x89, 0x1E88, Local4)
                    PCRW (0xEF, 0x2758, Local4)
                }

                If (LEqual (Local2, 0x03CA))
                {
                    Store (Or (PCRR (0xEF, 0x2760), One), Local4)
                    PCRW (0x89, 0x1E90, Local4)
                    PCRW (0xEF, 0x2760, Local4)
                }

                If (LEqual (Local3, 0x03CA))
                {
                    Store (Or (PCRR (0xEF, 0x2768), One), Local4)
                    PCRW (0x89, 0x1E98, Local4)
                    PCRW (0xEF, 0x2768, Local4)
                }
            }
            Else
            {
                If (LEqual (Local0, 0x03CA))
                {
                    Store (And (PCRR (0xEF, 0x2750), 0xFFFFFFFE), Local4)
                    PCRW (0x89, 0x1E80, Local4)
                    PCRW (0xEF, 0x2750, Local4)
                }

                If (LEqual (Local1, 0x03CA))
                {
                    Store (And (PCRR (0xEF, 0x2758), 0xFFFFFFFE), Local4)
                    PCRW (0x89, 0x1E88, Local4)
                    PCRW (0xEF, 0x2758, Local4)
                }

                If (LEqual (Local2, 0x03CA))
                {
                    Store (And (PCRR (0xEF, 0x2760), 0xFFFFFFFE), Local4)
                    PCRW (0x89, 0x1E90, Local4)
                    PCRW (0xEF, 0x2760, Local4)
                }

                If (LEqual (Local3, 0x03CA))
                {
                    Store (And (PCRR (0xEF, 0x2768), 0xFFFFFFFE), Local4)
                    PCRW (0x89, 0x1E98, Local4)
                    PCRW (0xEF, 0x2768, Local4)
                }

                Store (0x07, CMDR)
            }
        }

        Method (NVJT, 4, Serialized)
        {
            Store ("------- NV JT DSM --------", Debug)
            If (LLess (ToInteger (Arg1), 0x0100))
            {
                Return (0x80000001)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Store ("   JT fun0 JT_FUNC_SUPPORT", Debug)
                    Return (Buffer (0x04)
                    {
                         0x7F, 0x00, 0x00, 0x00                         
                    })
                }
                Case (One)
                {
                    Store ("   JT fun1 JT_FUNC_CAPS", Debug)
                    Name (JTCA, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (JTCA, Zero, One, JTEN)
                    CreateField (JTCA, One, 0x02, SREN)
                    CreateField (JTCA, 0x03, 0x02, PLPR)
                    CreateField (JTCA, 0x05, One, SRPR)
                    CreateField (JTCA, 0x06, 0x02, FBPR)
                    CreateField (JTCA, 0x08, 0x02, GUPR)
                    CreateField (JTCA, 0x0A, One, GC6R)
                    CreateField (JTCA, 0x0B, One, PTRH)
                    CreateField (JTCA, 0x0D, One, MHYB)
                    CreateField (JTCA, 0x0E, One, RPCL)
                    CreateField (JTCA, 0x0F, 0x02, GC6V)
                    CreateField (JTCA, 0x11, One, GEIS)
                    CreateField (JTCA, 0x12, One, GSWS)
                    CreateField (JTCA, 0x14, 0x0C, JTRV)
                    Store (One, JTEN)
                    Store (One, GC6R)
                    Store (One, RPCL)
                    Store (Zero, FBPR)
                    Store (Zero, GUPR)
                    Store (Zero, PTRH)
                    Store (One, MHYB)
                    Store (One, SREN)
                    Store (0x02, PLPR)
                    Store (Zero, SRPR)
                    Store (One, GC6V)
                    Store (0x0103, JTRV)
                    Return (JTCA)
                }
                Case (0x02)
                {
                    Store ("   JT fun2 JT_FUNC_POLICYSELECT", Debug)
                    Return (0x80000002)
                }
                Case (0x03)
                {
                    Store ("   JT fun3 JT_FUNC_POWERCONTROL", Debug)
                    CreateField (Arg3, Zero, 0x03, GUPC)
                    CreateField (Arg3, 0x04, One, PLPC)
                    CreateField (Arg3, 0x07, One, ECOC)
                    CreateField (Arg3, 0x0E, 0x02, DFGC)
                    CreateField (Arg3, 0x10, 0x03, GPCX)
                    Store (Arg3, \_SB.PCI0.TGPC)
                    If (LOr (LNotEqual (ToInteger (GUPC), Zero), LNotEqual (ToInteger (DFGC), Zero)))
                    {
                        Store (ToInteger (DFGC), \_SB.PCI0.TDGC)
                        Store (ToInteger (GPCX), \_SB.PCI0.DGCX)
                    }

                    Name (JTPC, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (JTPC, Zero, 0x03, GUPS)
                    CreateField (JTPC, 0x03, One, GPWO)
                    CreateField (JTPC, 0x07, One, PLST)
                    If (LNotEqual (ToInteger (DFGC), Zero))
                    {
                        Store (One, GPWO)
                        Store (One, GUPS)
                        Return (JTPC)
                    }

                    Store ("   JT fun3 GUPC=", Debug)
                    Store (ToInteger (GUPC), Debug)
                    If (LEqual (ToInteger (GUPC), One))
                    {
                        \_SB.PCI0.GC6I ()
                        Store (One, PLST)
                        Store (Zero, GUPS)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        \_SB.PCI0.GC6I ()
                        If (LEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }

                        Store (Zero, GUPS)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x03))
                    {
                        \_SB.PCI0.GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }

                        Store (One, GPWO)
                        Store (One, GUPS)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x04))
                    {
                        \_SB.PCI0.GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }

                        Store (One, GPWO)
                        Store (One, GUPS)
                    }
                    ElseIf (LEqual (\_SB.GGIV (FBEN), Zero))
                    {
                        Store ("   JT GETS() return 0x1", Debug)
                        Store (One, GPWO)
                        Store (One, GUPS)
                    }
                    Else
                    {
                        Store ("   JT GETS() return 0x3", Debug)
                        Store (Zero, GPWO)
                        Store (0x03, GUPS)
                    }

                    Return (JTPC)
                }
                Case (0x04)
                {
                    Store ("   JT fun4 JT_FUNC_PLATPOLICY", Debug)
                    CreateField (Arg3, 0x02, One, PAUD)
                    CreateField (Arg3, 0x03, One, PADM)
                    CreateField (Arg3, 0x04, 0x04, PDGS)
                    Store (Zero, Local0)
                    ShiftLeft (\_SB.PCI0.HDAE, 0x02, Local0)
                    Return (Local0)
                }
                Case (0x05)
                {
                    Store (Zero, Local0)
                    Or (Local0, 0x00100010, Local0)
                    Return (Local0)
                }
                Case (0x06)
                {
                    Name (TMP6, Package (0x0F)
                    {
                        Ones, 
                        0x2C, 
                        Ones, 
                        0x2C, 
                        Ones, 
                        0x2C, 
                        Ones, 
                        Ones, 
                        0x2C, 
                        Ones, 
                        Ones, 
                        0x2C, 
                        Ones, 
                        Ones, 
                        0x2C
                    })
                    Store (DID2, Index (TMP6, Zero))
                    Store (DID1, Index (TMP6, 0x02))
                    Store (DID4, Index (TMP6, 0x04))
                    Store (DID2, Index (TMP6, 0x06))
                    Store (DID1, Index (TMP6, 0x07))
                    Store (DID2, Index (TMP6, 0x09))
                    Store (DID4, Index (TMP6, 0x0A))
                    Store (DID1, Index (TMP6, 0x0C))
                    Store (DID4, Index (TMP6, 0x0D))
                    Return (TMP6)
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.IGPU)
    {
        Method (SSNR, 1, Serialized)
        {
            Switch (ToInteger (Arg0))
            {
                Case (Zero)
                {
                    Name (SBHS, Buffer (0x08){})
                    CreateDWordField (SBHS, Zero, VERV)
                    CreateDWordField (SBHS, 0x04, NUMS)
                    Store (0x00010000, VERV)
                    Store (0x02, NUMS)
                    Return (SBHS)
                }
                Case (One)
                {
                    Name (SCPP, Buffer (0x4C){})
                    CreateDWordField (SCPP, Zero, VRV1)
                    CreateDWordField (SCPP, 0x04, VCAP)
                    CreateDWordField (SCPP, 0x08, VCCP)
                    CreateDWordField (SCPP, 0x0C, VCDP)
                    CreateDWordField (SCPP, 0x10, VCEP)
                    CreateDWordField (SCPP, 0x14, VCGP)
                    CreateDWordField (SCPP, 0x18, VCHP)
                    CreateDWordField (SCPP, 0x1C, VCXP)
                    CreateDWordField (SCPP, 0x20, VCYP)
                    CreateDWordField (SCPP, 0x24, VCZP)
                    CreateDWordField (SCPP, 0x28, VCKP)
                    CreateDWordField (SCPP, 0x2C, VCMP)
                    CreateDWordField (SCPP, 0x30, VCNP)
                    CreateDWordField (SCPP, 0x34, VCAL)
                    CreateDWordField (SCPP, 0x38, VCBE)
                    CreateDWordField (SCPP, 0x3C, VCGA)
                    CreateDWordField (SCPP, 0x40, VCPP)
                    CreateDWordField (SCPP, 0x44, VCDE)
                    Store (0x00010001, VRV1)
                    Store (0x03E8, VCAP)
                    Store (0x0258, VCCP)
                    Store (0x0258, VCDP)
                    Store (0x0258, VCEP)
                    Store (0x02CF, VCGP)
                    Store (0x0311, VCHP)
                    Store (0x0136, VCXP)
                    Store (0x0118, VCYP)
                    Store (0x019A, VCZP)
                    Store (One, VCKP)
                    Store (One, VCMP)
                    Store (One, VCNP)
                    Store (0x036B, VCAL)
                    Store (0x013C, VCBE)
                    Store (0x19, VCGA)
                    Store (Zero, VCPP)
                    Store (One, VCDE)
                    Return (SCPP)
                }
                Case (0x02)
                {
                    Name (SGPP, Buffer (0x28){})
                    CreateDWordField (SGPP, Zero, VRV2)
                    CreateDWordField (SGPP, 0x04, VGWP)
                    CreateDWordField (SGPP, 0x08, VGPP)
                    CreateDWordField (SGPP, 0x0C, VGQP)
                    CreateDWordField (SGPP, 0x10, VGRP)
                    CreateDWordField (SGPP, 0x14, VGAP)
                    CreateDWordField (SGPP, 0x18, VGBP)
                    CreateDWordField (SGPP, 0x1C, VGCP)
                    CreateDWordField (SGPP, 0x20, VGDP)
                    CreateDWordField (SGPP, 0x24, VGDE)
                    Store (0x00010000, VRV2)
                    Store (0x03E8, VGWP)
                    Store (0x02EE, VGPP)
                    Store (0x02EE, VGQP)
                    Store (0x02EE, VGRP)
                    Store (One, VGAP)
                    Store (0x03E8, VGBP)
                    Store (One, VGCP)
                    Store (One, VGDP)
                    Store (Zero, VGDE)
                    Return (SGPP)
                }
                Case (0x03)
                {
                    Name (SSCP, Buffer (0x2C){})
                    CreateDWordField (SSCP, 0x04, CSNT)
                    CreateDWordField (SSCP, 0x08, CPTI)
                    CreateDWordField (SSCP, 0x0C, CICA)
                    CreateDWordField (SSCP, 0x10, CIRC)
                    CreateDWordField (SSCP, 0x14, CICV)
                    CreateDWordField (SSCP, 0x18, CIRA)
                    CreateDWordField (SSCP, 0x1C, CIAV)
                    CreateDWordField (SSCP, 0x20, CIEP)
                    CreateDWordField (SSCP, 0x24, CPPF)
                    CreateDWordField (SSCP, 0x28, CSNR)
                    Name (SSGP, Buffer (0x2C){})
                    CreateDWordField (SSGP, 0x04, GSNT)
                    CreateDWordField (SSGP, 0x08, GPTI)
                    CreateDWordField (SSGP, 0x0C, GICA)
                    CreateDWordField (SSGP, 0x10, GIRC)
                    CreateDWordField (SSGP, 0x14, GICV)
                    CreateDWordField (SSGP, 0x18, GIRA)
                    CreateDWordField (SSGP, 0x1C, GIAV)
                    CreateDWordField (SSGP, 0x20, GIEP)
                    CreateDWordField (SSGP, 0x24, GPPF)
                    CreateDWordField (SSGP, 0x28, GSNR)
                    Store (Zero, Index (SSCP, Zero))
                    Store (Zero, CSNT)
                    Store (One, CPTI)
                    Store (0x80, CICA)
                    Store (Zero, CIRC)
                    Store (0x27FF, CICV)
                    Store (0x05, CIRA)
                    Store (0xA000, CIAV)
                    Store (0x03, CIEP)
                    Store (0x0F, CPPF)
                    Store (0x04, CSNR)
                    Store (One, Index (SSGP, Zero))
                    Store (Zero, GSNT)
                    Store (One, GPTI)
                    Store (0x8A, GICA)
                    Store (Zero, GIRC)
                    Store (0x27FF, GICV)
                    Store (0x05, GIRA)
                    Store (0xA000, GIAV)
                    Store (0x03, GIEP)
                    Store (0x0F, GPPF)
                    Store (0x04, GSNR)
                    Return (Concatenate (SSCP, SSGP))
                }

            }

            Return (0x80000002)
        }

        Name (VSTS, One)
        Name (TBUD, 0x88B8)
        Name (PSCP, Zero)
        Method (SPB, 4, Serialized)
        {
            If (LNotEqual (Arg1, 0x0101))
            {
                Return (0x80000002)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Return (Buffer (0x08)
                    {
                         0x01, 0x00, 0x00, 0x00, 0x0F, 0x04, 0x00, 0x00 
                    })
                }
                Case (0x20)
                {
                    Store (TBUD, Local1)
                    And (Local1, 0x000FFFFF, Local1)
                    If (CondRefOf (\_SB.PCI0.RP05.PXSX.PBCM, Local0))
                    {
                        If (\_SB.PCI0.RP05.PXSX.PBCM)
                        {
                            If (LNotEqual (VSTS, Zero))
                            {
                                Or (Local1, 0x40000000, Local1)
                            }
                        }
                    }

                    Return (Local1)
                }
                Case (0x21)
                {
                    Return (\_SB.PR00._PSS)
                }
                Case (0x22)
                {
                    Name (MCHH, Zero)
                    CreateByteField (Arg3, Zero, PCAP)
                    Store (PCAP, PSCP)
                    If (LNotEqual (PCAP, \_SB.PR00._PPC))
                    {
                        If (LEqual (\_SB.PR00._PPC, Zero))
                        {
                            Store (MMCH, MCHH)
                            Store (One, MMCH)
                        }
                        ElseIf (LEqual (PCAP, Zero))
                        {
                            Store (MCHH, MMCH)
                        }
                    }

                    Store (PCAP, \_SB.PR00._PPC)
                    Notify (\_SB.PR00, 0x80)
                    If (CondRefOf (\_SB.PR01._PPC, Local0))
                    {
                        Store (PCAP, \_SB.PR01._PPC)
                        Notify (\_SB.PR01, 0x80)
                    }

                    If (CondRefOf (\_SB.PR02._PPC, Local0))
                    {
                        Store (PCAP, \_SB.PR02._PPC)
                        Notify (\_SB.PR02, 0x80)
                    }

                    If (CondRefOf (\_SB.PR03._PPC, Local0))
                    {
                        Store (PCAP, \_SB.PR03._PPC)
                        Notify (\_SB.PR03, 0x80)
                    }

                    Return (PCAP)
                }
                Case (0x23)
                {
                    Return (PSCP)
                }
                Case (0x24)
                {
                    CreateField (Arg3, Zero, 0x14, THBG)
                    CreateField (Arg3, 0x1E, One, DDVE)
                    Return (\_SB.PCI0.RP05.PXSX.PBCM)
                }
                Case (0x2A)
                {
                    Return (SSNR (Arg3))
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            Return (Package (0x01)
            {
                0x80087330
            })
        }

        

        Method (MXDS, 1, Serialized)
        {
            If (LEqual (Arg0, Zero)){}
            If (LEqual (Arg0, One)){}
            Return (Zero)
        }

        Method (MXM, 4, Serialized)
        {
            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x01, 0x01                         
                    })
                }
                Case (0x10)
                {
                    If (LEqual (Arg1, 0x0300))
                    {
                        If (LNotEqual (MXBS, Zero))
                        {
                            Name (MXM3, Buffer (MXBS)
                            {
                                 0x00                                           
                            })
                            Store (MXMB, MXM3)
                            Return (MXM3)
                        }
                    }
                }
                Case (0x18)
                {
                    Return (Buffer (0x04)
                    {
                         0x30, 0x00, 0x00, 0x00                         
                    })
                }

            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
        Device (WMI2)
        {
            Name (_HID, "PNP0C14")  // _HID: Hardware ID
            Name (_UID, "OPTM")  // _UID: Unique ID
            Name (_WDG, Buffer (0x28)
            {
                /* 0000 */  0xBF, 0x82, 0x49, 0xCA, 0x30, 0xC2, 0x8E, 0x45,
                /* 0008 */  0xB1, 0x2F, 0x6F, 0x16, 0x47, 0x5F, 0x35, 0x1B,
                /* 0010 */  0x4F, 0x50, 0x01, 0x02, 0xF8, 0xD8, 0x86, 0xA4,
                /* 0018 */  0xDA, 0x0B, 0x1B, 0x47, 0xA7, 0x2B, 0x60, 0x42,
                /* 0020 */  0xA6, 0xB5, 0xBE, 0xE0, 0x53, 0x4D, 0x01, 0x00 
            })
            Method (WMOP, 3, NotSerialized)
            {
                If (LEqual (Arg1, One))
                {
                    \_SB.PCI0.RP05.PXSX._PS0 ()
                    Notify (\_SB.PCI0.RP05, Zero)
                    Return (Zero)
                }

                If (LEqual (Arg1, 0x02))
                {
                    If (LEqual (\_SB.PCI0.RP05.PXSX.DGPS, Zero))
                    {
                        Return (0x10)
                    }
                    Else
                    {
                        Return (0x20)
                    }
                }
            }

            Method (WQSM, 1, NotSerialized)
            {
                Return (ATSM)
            }

            Name (ATSM, Buffer (0xE2)
            {
                /* 0000 */  0x52, 0xAA, 0x89, 0xC5, 0x44, 0xCE, 0xC3, 0x3A,
                /* 0008 */  0x4B, 0x56, 0xE2, 0x00, 0x00, 0x00, 0x01, 0x00,
                /* 0010 */  0x32, 0x37, 0x34, 0x35, 0x39, 0x31, 0x32, 0x35,
                /* 0018 */  0x33, 0x36, 0x38, 0x37, 0x47, 0x65, 0x6E, 0x75,
                /* 0020 */  0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 0028 */  0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69,
                /* 0030 */  0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74,
                /* 0038 */  0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61,
                /* 0040 */  0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65,
                /* 0048 */  0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66,
                /* 0050 */  0x6F, 0x72, 0x20, 0x63, 0x6F, 0x6F, 0x6B, 0x69,
                /* 0058 */  0x65, 0x20, 0x66, 0x6F, 0x72, 0x20, 0x75, 0x6C,
                /* 0060 */  0x35, 0x30, 0x20, 0x75, 0x73, 0x69, 0x6E, 0x20,
                /* 0068 */  0x2D, 0x20, 0x5E, 0x57, 0x3C, 0x4A, 0x3D, 0x41,
                /* 0070 */  0x24, 0x4C, 0x3A, 0x4B, 0x38, 0x32, 0x26, 0x51,
                /* 0078 */  0x48, 0x35, 0x4C, 0x3E, 0x2B, 0x33, 0x52, 0x2B,
                /* 0080 */  0x54, 0x35, 0x2A, 0x52, 0x29, 0x3A, 0x5B, 0x4C,
                /* 0088 */  0x4A, 0x3E, 0x36, 0x48, 0x22, 0x48, 0x41, 0x50,
                /* 0090 */  0x47, 0x39, 0x5A, 0x39, 0x5E, 0x3E, 0x44, 0x53,
                /* 0098 */  0x54, 0x3C, 0x20, 0x2D, 0x20, 0x43, 0x6F, 0x70,
                /* 00A0 */  0x79, 0x72, 0x69, 0x67, 0x68, 0x74, 0x20, 0x32,
                /* 00A8 */  0x30, 0x30, 0x39, 0x20, 0x4E, 0x56, 0x49, 0x44,
                /* 00B0 */  0x49, 0x41, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F,
                /* 00B8 */  0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41,
                /* 00C0 */  0x6C, 0x6C, 0x20, 0x52, 0x69, 0x67, 0x68, 0x74,
                /* 00C8 */  0x73, 0x20, 0x52, 0x65, 0x73, 0x65, 0x72, 0x76,
                /* 00D0 */  0x65, 0x64, 0x2D, 0x32, 0x37, 0x34, 0x35, 0x39,
                /* 00D8 */  0x31, 0x32, 0x35, 0x33, 0x36, 0x38, 0x37, 0x28,
                /* 00E0 */  0x52, 0x29                                     
            })
        }

        
    }

    Scope (\_SB.PCI0.IGPU)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (DID1, Index (TLPK, Zero))
            Store (DID2, Index (TLPK, 0x02))
            Store (DID3, Index (TLPK, 0x04))
            Store (DID4, Index (TLPK, 0x06))
            Store (DID5, Index (TLPK, 0x08))
            Store (DID6, Index (TLPK, 0x0A))
            Store (DID7, Index (TLPK, 0x0C))
            Store (DID2, Index (TLPK, 0x0E))
            Store (DID1, Index (TLPK, 0x0F))
            Store (DID2, Index (TLPK, 0x11))
            Store (DID3, Index (TLPK, 0x12))
            Store (DID2, Index (TLPK, 0x14))
            Store (DID4, Index (TLPK, 0x15))
            Store (DID2, Index (TLPK, 0x17))
            Store (DID5, Index (TLPK, 0x18))
            Store (DID2, Index (TLPK, 0x1A))
            Store (DID6, Index (TLPK, 0x1B))
            Store (DID2, Index (TLPK, 0x1D))
            Store (DID7, Index (TLPK, 0x1E))
        }

        

        Method (MXDS, 1, Serialized)
        {
            If (LEqual (Arg0, Zero)){}
            If (LEqual (Arg0, One)){}
            Return (Zero)
        }

        Name (TLPK, Package (0x20)
        {
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C, 
            Ones, 
            Ones, 
            0x2C
        })
    }

    Scope (\_SB.PCI0)
    {
        Name (STPL, Zero)
        Name (COVT, Zero)
        Mutex (GC6M, 0x00)
        Mutex (GPSM, 0x00)
        Method (EWGC, 1, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.LPCB.EC0))
            {
                Acquire (GC6M, 0xFFFF)
                Store (Arg0, \_SB.PCI0.LPCB.EC0.GCON)
                Release (GC6M)
            }
        }

        Method (ECPL, 1, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.LPCB.EC0))
            {
                Acquire (GPSM, 0xFFFF)
                If (LAnd (ToInteger (Arg0), STPL))
                {
                    Store (One, \_SB.PCI0.LPCB.EC0.PWLT)
                }
                Else
                {
                    Store (Zero, \_SB.PCI0.LPCB.EC0.PWLT)
                }

                Release (GPSM)
            }
        }

        Method (ECTG, 0, NotSerialized)
        {
            Acquire (GPSM, 0xFFFF)
            Store (0x4B, Local0)
            If (LEqual (\ODV0, 0x0B))
            {
                Store (0x4B, Local0)
            }

            If (LEqual (\ODV0, 0x0F))
            {
                Store (0x3C, Local0)
            }

            If (LEqual (\ODV0, 0x10))
            {
                Store (0x4B, Local0)
            }

            If (LEqual (\ODV0, 0x12))
            {
                Store (0x3C, Local0)
            }

            Release (GPSM)
            Return (Local0)
        }

        Method (NVTC, 0, NotSerialized)
        {
            Store (One, \_SB.PCI0.RP05.PXSX.NLIM)
            Notify (\_SB.PCI0.RP05.PXSX, 0xC0)
        }

        Method (GSPS, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03)){}
            If (LEqual (Arg0, 0x04)){}
        }

        Method (GSWK, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x03)){}
            If (LEqual (Arg0, 0x04)){}
        }
    }

    If (CondRefOf (\_SB.PCI0.LPCB.EC0))
    {
        Scope (\_SB.PCI0.LPCB.EC0)
        {
            Field (RAM, ByteAcc, Lock, Preserve)
            {
                Offset (0x6C), 
                PWLT,   1, 
                    ,   3, 
                GCON,   1
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Method (UPDP, 1, NotSerialized)
        {
        }

        Method (DPON, 0, NotSerialized)
        {
        }

        Method (DPOF, 0, NotSerialized)
        {
        }
    }

    Scope (\_SB.PCI0.RP05)
    {
        Name (WKEN, Zero)
        PowerResource (PCRP, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Name (MSD3, Zero)
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LEqual (MSD3, 0x03))
                {
                    If (LEqual (\_SB.PCI0.TDGC, One))
                    {
                        If (LEqual (\_SB.PCI0.DGCX, 0x03))
                        {
                            \_SB.PCI0.GC6O ()
                        }
                        ElseIf (LEqual (\_SB.PCI0.DGCX, 0x04))
                        {
                            \_SB.PCI0.GC6O ()
                        }

                        Store (Zero, \_SB.PCI0.TDGC)
                        Store (Zero, \_SB.PCI0.DGCX)
                        Store (One, _STA)
                    }
                    Else
                    {
                        \_SB.PCI0.RP05.PXSX.HGON ()
                        Store (0x06, \_SB.PCI0.CMDB)
                        Store (Zero, \_SB.PCI0.D0ST)
                        Sleep (0x0A)
                        Store (\_SB.PCI0.DSSV, SSSV)
                        Store (One, _STA)
                    }

                    Store (Zero, MSD3)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LEqual (MSD3, Zero))
                {
                    If (LEqual (\_SB.PCI0.TDGC, One))
                    {
                        CreateField (\_SB.PCI0.TGPC, Zero, 0x03, GUPC)
                        If (LEqual (ToInteger (GUPC), One))
                        {
                            \_SB.PCI0.GC6I ()
                        }
                        ElseIf (LEqual (ToInteger (GUPC), 0x02))
                        {
                            \_SB.PCI0.GC6I ()
                        }

                        Store (Zero, _STA)
                    }
                    Else
                    {
                        \_SB.PCI0.RP05.PXSX.HGOF ()
                        Store (Zero, _STA)
                    }

                    Store (0x03, MSD3)
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PCRP
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PCRP
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PCRP
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (And (\_SB.OSCO, 0x04))
            {
                Return (0x04)
            }
            Else
            {
                Return (0x03)
            }
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN)
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN)
            }
            Else
            {
                Store (Zero, WKEN)
            }
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.RP05.PXSX._ADR)
            \_SB.PCI0.NINI ()
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            HGON ()
            Return (Zero)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            HGOF ()
            Return (Zero)
        }

        Method (HGON, 0, Serialized)
        {
            If (LEqual (CCHK (One), Zero))
            {
                Return (Zero)
            }

            SGPO (PWE0, PWG0, PWA0, One)
            Sleep (DLPW)
            SGPO (HRE0, HRG0, HRA0, Zero)
            Sleep (DLHR)
            Store (Zero, \_SB.PCI0.LKDN)
            Store (Zero, TCNT)
            While (LLess (TCNT, LDLY))
            {
                If (LGreaterEqual (\_SB.PCI0.LKSN, 0x07))
                {
                    Break
                }

                Sleep (0x10)
                Add (TCNT, 0x10, TCNT)
            }

            Store (\_SB.PCI0.LTRE, \_SB.PCI0.LREN)
            Store (One, \_SB.PCI0.CEDR)
            Or (And (ELCT, 0x43), And (LCTL, 0xFFBC), LCTL)
            \_SB.PCI0.DPON ()
            Return (Zero)
        }

        Method (HGOF, 0, Serialized)
        {
            If (LEqual (CCHK (Zero), Zero))
            {
                Return (Zero)
            }

            Store (\_SB.PCI0.LREN, \_SB.PCI0.LTRE)
            Store (LCTL, ELCT)
            Store (One, \_SB.PCI0.LKDN)
            Store (Zero, TCNT)
            While (LLess (TCNT, LDLY))
            {
                If (LGreaterEqual (\_SB.PCI0.LKSN, Zero))
                {
                    Break
                }

                Sleep (0x10)
                Add (TCNT, 0x10, TCNT)
            }

            SGPO (HRE0, HRG0, HRA0, One)
            Sleep (DLHR)
            SGPO (PWE0, PWG0, PWA0, Zero)
            \_SB.PCI0.DPOF ()
            Return (Zero)
        }

        Method (SGPO, 4, Serialized)
        {
            If (LEqual (Arg2, Zero))
            {
                Not (Arg3, Arg3)
                And (Arg3, One, Arg3)
            }

            If (LEqual (SGGP, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }
        }

        Method (SGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Store (\_SB.GGOV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                Not (Local0, Local0)
                And (Local0, One, Local0)
            }

            Return (Local0)
        }

        Method (CCHK, 1, NotSerialized)
        {
            If (LEqual (\_SB.PCI0.PVID, IVID))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (SGPI (SGGP, PWE0, PWG0, PWA0), Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (SGPI (SGGP, PWE0, PWG0, PWA0), One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }
    }
}

