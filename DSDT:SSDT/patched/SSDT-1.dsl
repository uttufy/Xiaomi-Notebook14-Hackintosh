/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1.aml, Sun Sep 20 06:27:22 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00003E19 (15897)
 *     Revision         0x02
 *     Checksum         0xB4
 *     OEM ID           "XMCC"
 *     OEM Table ID     "XMCC1941"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "XMCC", "XMCC1941", 0x00000000)
{
    External (_SB_.GNUM, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.IETM, DeviceObj)    // (from opcode)
    External (_SB_.INUM, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.B0D4, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU.CLID, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.IGPU.DD1F, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.IGPU.GHDS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.IGPU.GLID, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.I2C1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.NVTC, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG0.PEGP.LCD0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.WMID, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.WMID.CLBU, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.WMID.EVBU, BuffObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS11, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS12, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS13, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS14, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS07, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS08, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS09, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS10, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.USR1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.USR2, DeviceObj)    // (from opcode)
    External (_SB_.PR00, ProcessorObj)    // (from opcode)
    External (_SB_.PR01, ProcessorObj)    // (from opcode)
    External (_SB_.PR02, ProcessorObj)    // (from opcode)
    External (_SB_.PR03, ProcessorObj)    // (from opcode)
    External (_SB_.PR04, ProcessorObj)    // (from opcode)
    External (_SB_.PR05, ProcessorObj)    // (from opcode)
    External (_SB_.PR06, ProcessorObj)    // (from opcode)
    External (_SB_.PR07, ProcessorObj)    // (from opcode)
    External (_SB_.PR08, ProcessorObj)    // (from opcode)
    External (_SB_.PR09, ProcessorObj)    // (from opcode)
    External (_SB_.PR10, ProcessorObj)    // (from opcode)
    External (_SB_.PR11, ProcessorObj)    // (from opcode)
    External (_SB_.PR12, ProcessorObj)    // (from opcode)
    External (_SB_.PR13, ProcessorObj)    // (from opcode)
    External (_SB_.PR14, ProcessorObj)    // (from opcode)
    External (_SB_.PR15, ProcessorObj)    // (from opcode)
    External (_SB_.SHPO, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.SRXO, MethodObj)    // 2 Arguments (from opcode)
    External (IGDS, UnknownObj)    // (from opcode)
    External (LIDS, UnknownObj)    // (from opcode)
    External (ODV0, IntObj)    // (from opcode)
    External (OSYS, UnknownObj)    // (from opcode)
    External (PNOT, MethodObj)    // 0 Arguments (from opcode)
    External (SDM1, FieldUnitObj)    // (from opcode)
    External (SSMP, UnknownObj)    // (from opcode)
    External (TCNT, IntObj)    // (from opcode)

    Scope (\)
    {
        OperationRegion (CNVS, SystemMemory, 0x99ACD018, 0x00000800)
        Field (CNVS, AnyAcc, Lock, Preserve)
        {
            SFUN,   8, 
            SPR0,   8, 
            SPR1,   8, 
            SPR2,   8, 
            WNVA,   32, 
            WNVB,   32, 
            WNVC,   32, 
            WNVD,   32, 
            WFLG,   32, 
            WNVS,   32, 
            WNVI,   32, 
            TSMI,   8, 
            Offset (0x400), 
            SKUN,   8, 
            Offset (0x402), 
            TPMD,   8, 
            Offset (0x404), 
            Offset (0x405), 
            Offset (0x406), 
            TPID,   8, 
            Offset (0x408), 
            Offset (0x40C), 
            Offset (0x410), 
            FAMD,   8, 
            FANF,   8, 
            Offset (0x413), 
            Offset (0x420), 
            Offset (0x430), 
            UCBA,   32, 
            Offset (0x600), 
            COSI,   16
        }

        Method (TRPS, 2, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            Store (Arg1, SPR0)
            Store (Arg0, SFUN)
            Store (TSMI, SSMP)
            Store (SPR0, Local0)
            Release (MSMI)
            Return (Local0)
        }
    }

    Scope (\)
    {
        Mutex (MSMI, 0x00)
        Method (WSMI, 1, NotSerialized)
        {
            Store (Arg0, SFUN)
            Store (TSMI, SSMP)
        }

        Method (RBEC, 1, NotSerialized)
        {
            Return (TRPS (0x10, Arg0))
        }

        Method (WBEC, 2, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            Store (Arg1, SPR1)
            Store (Arg0, SPR0)
            Store (0x11, SFUN)
            Store (TSMI, SSMP)
            Release (MSMI)
        }

        Method (MBEC, 3, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            Store (Arg2, SPR2)
            Store (Arg1, SPR1)
            Store (Arg0, SPR0)
            Store (0x12, SFUN)
            Store (TSMI, SSMP)
            Release (MSMI)
        }
    }

    Scope (\)
    {
        Name (EMBA, 0xFE800000)
    }

    Scope (\)
    {
        OperationRegion (PRT1, SystemIO, 0x80, 0x02)
        Field (PRT1, WordAcc, Lock, Preserve)
        {
            P80H,   16
        }
    }

    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC0)
        {
            Name (_HID, EisaId ("PNP0C09"))  // _HID: Hardware ID
            Name (_GPE, 0x50)  // _GPE: General Purpose Events
            Name (\ECOK, Zero)
            Name (WOMB, Zero)
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BFFR, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0062,             // Range Minimum
                        0x0062,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                    IO (Decode16,
                        0x0066,             // Range Minimum
                        0x0066,             // Range Maximum
                        0x00,               // Alignment
                        0x01,               // Length
                        )
                })
                Return (BFFR)
            }

            OperationRegion (ECMB, SystemMemory, 0xFE800000, 0x0200)
            OperationRegion (RAM, EmbeddedControl, Zero, 0xFF)
            Field (RAM, ByteAcc, Lock, Preserve)
            {
                CMDB,   8, 
                Offset (0x06), 
                CMD2,   8, 
                CMD1,   8, 
                CMD0,   8, 
                Offset (0x76), 
                ECSS,   4, 
                EOSS,   4
            }

            Method (_REG, 2, NotSerialized)  // _REG: Region Availability
            {
                If (LAnd (LEqual (Arg0, 0x03), LEqual (Arg1, One)))
                {
                    Store (Arg1, \ECOK)
                    Store (OSYS, COSI)
                    TRPS (0x82, 0x05)
                    DTPJ (Zero)
                    If (LNotEqual (\LIDE, Zero))
                    {
                        Store (MLID, LIDS)
                        If (LEqual (LIDS, Zero))
                        {
                            Store (Zero, \_SB.PCI0.IGPU.CLID)
                        }

                        If (LEqual (LIDS, One))
                        {
                            Store (0x03, \_SB.PCI0.IGPU.CLID)
                        }
                    }

                    PNOT ()
                }
            }

            Method (ECPS, 1, NotSerialized)
            {
            }

            Method (ECWK, 1, NotSerialized)
            {
                Notify (BAT0, 0x81)
                If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04))){}
            }

            Method (ECPE, 1, NotSerialized)
            {
                If (LEqual (Arg0, 0x03))
                {
                    TRPS (0x83, One)
                    Store (One, ECSS)
                }

                If (LEqual (Arg0, 0x04))
                {
                    Store (One, EOSS)
                    TRPS (0x83, 0x02)
                }

                If (LEqual (Arg0, 0x05))
                {
                    TRPS (0x83, 0x03)
                    Store (0x08, ECSS)
                }

                If (LEqual (Arg0, 0x06))
                {
                    Store (0x08, EOSS)
                    TRPS (0x83, 0x04)
                }
            }
        }
    }

    Scope (\_SB)
    {
        Method (SBPS, 1, NotSerialized)
        {
            Store (OSYS, COSI)
            Store (Arg0, SPR1)
            TRPS (0x82, 0x02)
            \_SB.PCI0.LPCB.EC0.ECPS (Arg0)
            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04))){}
            If (LEqual (Arg0, 0x03)){}
            If (LEqual (Arg0, 0x04)){}
        }

        Method (SBWK, 1, NotSerialized)
        {
            Store (OSYS, COSI)
            Store (Arg0, SPR1)
            TRPS (0x82, 0x03)
            \_SB.PCI0.LPCB.EC0.ECWK (Arg0)
            \_SB.PCI0.LPCB.EC0.DTPJ (Zero)
            If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
            {
                If (LNotEqual (\LIDE, Zero))
                {
                    If (IGDS)
                    {
                        Store (\_SB.PCI0.LPCB.EC0.MLID, LIDS)
                        If (LEqual (LIDS, Zero))
                        {
                            Store (0x80000000, \_SB.PCI0.IGPU.CLID)
                        }

                        If (LEqual (LIDS, One))
                        {
                            Store (0x80000003, \_SB.PCI0.IGPU.CLID)
                        }
                    }

                    Notify (\_SB.LID0, 0x80)
                }

                PNOT ()
                Notify (\_SB.SLPB, 0x02)
            }

            If (LEqual (Arg0, 0x03)){}
            If (LEqual (Arg0, 0x04)){}
            If (LOr (LEqual (Arg0, 0x04), LEqual (Arg0, 0x05))){}
        }

        Method (OSIN, 0, NotSerialized)
        {
            Store (OSYS, COSI)
            TRPS (0x82, One)
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x02), 
                ,   5, 
            MACS,   1
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x70), 
                ,   5, 
            EACS,   1
        }

        Name (ACIN, One)
        Device (ADP1)
        {
            Name (_HID, "ACPI0003")  // _HID: Hardware ID
            Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
            {
                If (WOMB)
                {
                    If (\ECOK)
                    {
                        Store (EACS, Local0)
                    }
                    Else
                    {
                        Store (RBEC (0x70), Local1)
                        And (Local1, 0x20, Local0)
                    }
                }
                Else
                {
                    Store (MACS, Local0)
                }

                If (Local0)
                {
                    Store (One, ACIN)
                }
                Else
                {
                    Store (Zero, ACIN)
                }

                Return (ACIN)
            }

            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (Package (0x01)
                {
                    _SB
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x08), 
            MB0S,   8, 
            MB1S,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x02), 
            EBID,   8, 
            Offset (0x17), 
                ,   5, 
            ES0F,   1, 
                ,   1, 
            ES1F,   1, 
            Offset (0x88), 
            EB0A,   1, 
                ,   2, 
            EB0R,   1, 
            EB0L,   1, 
            EB0F,   1, 
            EB0N,   1, 
            Offset (0x89), 
            EB1A,   1, 
                ,   2, 
            EB1R,   1, 
            EB1L,   1, 
            EB1F,   1, 
            EB1N,   1
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x88), 
            EB0S,   8, 
            EB1S,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0xE0), 
            EBRC,   16, 
            EBFC,   16, 
            EBPE,   16, 
            EBAC,   16, 
            EBVO,   16, 
                ,   15, 
            EBCM,   1, 
            EBCU,   16, 
            EBTV,   16
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0xE0), 
            EBDC,   16, 
            EBDV,   16, 
            EBSN,   16
        }

        Field (RAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            EBMN,   128
        }

        Field (RAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            EBDN,   128
        }

        Field (RAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            EBCH,   128
        }

        Mutex (BATM, 0x00)
        Method (GBIF, 4, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (Arg2)
            {
                Store (0xFFFFFFFF, Index (Arg1, One))
                Store (0xFFFFFFFF, Index (Arg1, 0x02))
                Store (0xFFFFFFFF, Index (Arg1, 0x04))
                Store (Zero, Index (Arg1, 0x05))
                Store (Zero, Index (Arg1, 0x06))
            }
            Else
            {
                OperationRegion (ECMR, SystemMemory, Arg3, 0xC0)
                Field (ECMR, ByteAcc, Lock, Preserve)
                {
                    MBRC,   16, 
                    MBFC,   16, 
                    MBPE,   16, 
                    MBAC,   16, 
                    MBVO,   16, 
                        ,   15, 
                    MBCM,   1, 
                    MBCU,   16, 
                    MBTV,   16, 
                    MBDC,   16, 
                    MBDV,   16, 
                    MBSN,   16, 
                    Offset (0x40), 
                    MBMN,   128, 
                    MBDN,   256, 
                    MBCH,   128, 
                    Offset (0xAC), 
                    MBS0,   160
                }

                If (WOMB)
                {
                    And (Arg0, 0xF0, EBID)
                    Store (EBCM, Local0)
                }
                Else
                {
                    Store (MBCM, Local0)
                }

                XOr (Local0, One, Index (Arg1, Zero))
                If (WOMB)
                {
                    Or (Arg0, One, EBID)
                    If (Local0)
                    {
                        Multiply (EBDC, 0x0A, Local1)
                    }
                    Else
                    {
                        Store (EBDC, Local1)
                    }
                }
                ElseIf (Local0)
                {
                    Multiply (MBDC, 0x0A, Local1)
                }
                Else
                {
                    Store (MBDC, Local1)
                }

                Store (Local1, Index (Arg1, One))
                If (WOMB)
                {
                    And (Arg0, 0xF0, EBID)
                    If (Local0)
                    {
                        Multiply (EBFC, 0x0A, Local2)
                    }
                    Else
                    {
                        Store (EBFC, Local2)
                    }
                }
                ElseIf (Local0)
                {
                    Multiply (MBFC, 0x0A, Local2)
                }
                Else
                {
                    Store (MBFC, Local2)
                }

                Store (Local2, Index (Arg1, 0x02))
                If (WOMB)
                {
                    Or (Arg0, One, EBID)
                    Store (EBDV, Index (Arg1, 0x04))
                }
                Else
                {
                    Store (MBDV, Index (Arg1, 0x04))
                }

                Divide (Local2, 0x64, Local7, Local6)
                Multiply (Local6, 0x07, Local3)
                Store (Local3, Index (Arg1, 0x05))
                Store (0x0A, Local4)
                Add (Local4, One, Local4)
                Multiply (Local6, Local4, Local4)
                Divide (Local4, 0x02, Local7, Local4)
                Store (Local4, Index (Arg1, 0x06))
                If (WOMB)
                {
                    Store (EBSN, Local7)
                }
                Else
                {
                    Store (MBSN, Local7)
                }

                Name (SERN, Buffer (0x06)
                {
                    "     "
                })
                Store (0x04, Local6)
                While (Local7)
                {
                    Divide (Local7, 0x0A, Local5, Local7)
                    Add (Local5, 0x30, Index (SERN, Local6))
                    Decrement (Local6)
                }

                Store (SERN, Index (Arg1, 0x0A))
                If (WOMB){}
                Else
                {
                    Store (MBS0, Index (Arg1, 0x0A))
                }

                If (WOMB)
                {
                    Or (Arg0, 0x03, EBID)
                    Store (EBDN, Index (Arg1, 0x09))
                }
                Else
                {
                    Store (MBDN, Index (Arg1, 0x09))
                }

                If (WOMB)
                {
                    Or (Arg0, 0x04, EBID)
                    Store (EBCH, Index (Arg1, 0x0B))
                }
                Else
                {
                    Store (MBCH, Index (Arg1, 0x0B))
                }

                If (WOMB)
                {
                    Or (Arg0, 0x02, EBID)
                    Store (EBMN, Index (Arg1, 0x0C))
                }
                Else
                {
                    Store (MBMN, Index (Arg1, 0x0C))
                }
            }

            Release (BATM)
            Return (Arg1)
        }

        Method (GBST, 5, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            OperationRegion (ECMR, SystemMemory, Arg4, 0x10)
            Field (ECMR, ByteAcc, Lock, Preserve)
            {
                MBRC,   16, 
                MBFC,   16, 
                MBPE,   16, 
                MBAC,   16, 
                MBVO,   16, 
                    ,   15, 
                MBCM,   1, 
                MBCU,   16, 
                MBTV,   16
            }

            If (And (Arg1, 0x02))
            {
                Store (0x02, Local0)
                If (And (Arg1, 0x20))
                {
                    Store (Zero, Local0)
                }
            }
            ElseIf (And (Arg1, 0x04))
            {
                Store (One, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            If (And (Arg1, 0x10))
            {
                Or (Local0, 0x04, Local0)
            }

            If (And (Arg1, One))
            {
                If (WOMB)
                {
                    And (Arg0, 0xF0, EBID)
                    Store (EBAC, Local1)
                }
                Else
                {
                    Store (MBAC, Local1)
                }

                If (WOMB)
                {
                    Store (EBRC, Local2)
                }
                Else
                {
                    Store (MBRC, Local2)
                }

                If (ACIN)
                {
                    If (And (Arg1, 0x20))
                    {
                        If (WOMB)
                        {
                            Store (EBFC, Local2)
                        }
                        Else
                        {
                            Store (MBFC, Local2)
                        }
                    }
                }

                If (Arg2)
                {
                    Multiply (Local2, 0x0A, Local2)
                }

                If (WOMB)
                {
                    Store (EBVO, Local3)
                }
                Else
                {
                    Store (MBVO, Local3)
                }

                If (LGreaterEqual (Local1, 0x8000))
                {
                    If (And (Local0, One))
                    {
                        Subtract (0x00010000, Local1, Local1)
                    }
                    Else
                    {
                        Store (Zero, Local1)
                    }
                }
                ElseIf (LEqual (And (Local0, 0x02), Zero))
                {
                    Store (Zero, Local1)
                }

                If (Arg2)
                {
                    Multiply (Local3, Local1, Local1)
                    Divide (Local1, 0x03E8, Local7, Local1)
                }
            }
            Else
            {
                Store (Zero, Local0)
                Store (0xFFFFFFFF, Local1)
                Store (0xFFFFFFFF, Local2)
                Store (0xFFFFFFFF, Local3)
            }

            Store (Local0, Index (Arg3, Zero))
            Store (Local1, Index (Arg3, One))
            Store (Local2, Index (Arg3, 0x02))
            Store (Local3, Index (Arg3, 0x03))
            Release (BATM)
            Return (Arg3)
        }

        Name (B0ST, Zero)
        Device (BAT0)
        {
            Name (_HID, EisaId ("PNP0C0A"))  // _HID: Hardware ID
            Name (_UID, Zero)  // _UID: Unique ID
            Name (_DDN, "0")  // _DDN: DOS Device Name
            Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
            {
                Return (Package (0x01)
                {
                    _SB
                })
            }

            Name (B0IP, Package (0x0D)
            {
                One, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                One, 
                0xFFFFFFFF, 
                Zero, 
                Zero, 
                One, 
                One, 
                "", 
                "100", 
                "Lion", 
                Zero
            })
            Name (B0SP, Package (0x04)
            {
                Zero, 
                0xFFFFFFFF, 
                0xFFFFFFFF, 
                0xFFFFFFFF
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (WOMB)
                {
                    If (\ECOK)
                    {
                        Store (EB0A, Local1)
                        If (EB0N)
                        {
                            Store (Zero, Local1)
                        }
                    }
                    Else
                    {
                        Store (RBEC (0x88), Local0)
                        ShiftRight (Local0, Zero, Local1)
                        And (Local1, One, Local1)
                        If (And (Local0, 0x40))
                        {
                            Store (Zero, Local1)
                        }
                    }
                }
                Else
                {
                    Store (MB0S, Local0)
                    And (Local0, One, Local1)
                    If (And (Local0, 0x40))
                    {
                        Store (Zero, Local1)
                    }
                }

                Store (Local1, B0ST)
                If (Local1)
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
            {
                Store (B0ST, Local6)
                Store (0x14, Local7)
                While (LAnd (Local6, Local7))
                {
                    If (WOMB)
                    {
                        If (\ECOK)
                        {
                            Store (EB0S, Local1)
                        }
                        Else
                        {
                            Store (RBEC (0x88), Local1)
                        }
                    }
                    Else
                    {
                        Store (MB0S, Local1)
                    }

                    If (And (Local1, 0x08))
                    {
                        Store (Zero, Local6)
                    }
                    Else
                    {
                        Sleep (0x01F4)
                        Decrement (Local7)
                    }
                }

                Return (GBIF (Zero, B0IP, Local6, Add (EMBA, 0x80)))
            }

            Method (_BST, 0, NotSerialized)  // _BST: Battery Status
            {
                XOr (DerefOf (Index (B0IP, Zero)), One, Local0)
                If (WOMB)
                {
                    If (\ECOK)
                    {
                        Store (EB0S, Local1)
                    }
                    Else
                    {
                        Store (RBEC (0x88), Local1)
                    }
                }
                Else
                {
                    Store (MB0S, Local1)
                }

                Return (GBST (Zero, Local1, Local0, B0SP, Add (EMBA, 0x80)))
            }
        }
    }

    Scope (\)
    {
        Mutex (MSGF, 0x00)
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x19, P80H)
            \_SB.PCI0.IGPU.GHDS (0x03)
        }

        Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x1C, P80H)
            Notify (\_SB.PCI0.IGPU.DD1F, 0x86)
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP.LCD0))
            {
                Notify (\_SB.PCI0.PEG0.PEGP.LCD0, 0x86)
            }
        }

        Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x1D, P80H)
            Notify (\_SB.PCI0.IGPU.DD1F, 0x87)
            If (CondRefOf (\_SB.PCI0.PEG0.PEGP.LCD0))
            {
                Notify (\_SB.PCI0.PEG0.PEGP.LCD0, 0x87)
            }
        }

        Method (_Q36, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x36, P80H)
            If (\ECOK)
            {
                Store (One, EOSD)
            }
            Else
            {
                MBEC (0x92, 0xF7, 0x08)
            }

            Sleep (0x01F4)
            Notify (\_TZ.TZ01, 0x80)
            Notify (\_TZ.TZ00, 0x80)
        }

        Method (_Q3E, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x3E, P80H)
            If (LGreaterEqual (OSYS, 0x07DF))
            {
                Notify (\_SB.RBTN, 0x80)
            }

            AOSD ()
        }

        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x40, P80H)
            Notify (BAT0, 0x81)
            PNOT ()
        }

        Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x41, P80H)
            Notify (BAT0, 0x81)
            PNOT ()
        }

        Method (_Q48, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x48, P80H)
            Notify (BAT0, 0x80)
            PNOT ()
        }

        Method (_Q4C, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x4C, P80H)
            If (B0ST)
            {
                Notify (BAT0, 0x80)
            }
        }

        Method (_Q50, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x50, P80H)
            Notify (ADP1, 0x80)
            PNOT ()
        }

        Method (_Q51, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x51, P80H)
            Notify (ADP1, 0x80)
            PNOT ()
        }

        Method (_Q52, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x52, P80H)
            If (LNotEqual (\LIDE, Zero))
            {
                \_SB.PCI0.IGPU.GLID (One)
            }

            Notify (\_SB.LID0, 0x80)
        }

        Method (_Q53, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x53, P80H)
            If (LNotEqual (\LIDE, Zero))
            {
                \_SB.PCI0.IGPU.GLID (Zero)
            }

            Notify (\_SB.LID0, 0x80)
        }
    }

    Scope (\)
    {
        Name (PS2E, One)
        Name (I2CD, One)
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x06), 
            MBTP,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x4F), 
            ECTP,   8
        }
    }

    Scope (\_SB)
    {
        Method (TPTP, 0, NotSerialized)
        {
            Store (\_SB.PCI0.LPCB.EC0.MBTP, Local0)
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPCB)
    {
        Device (KBD0)
        {
            Name (_HID, "TIMI1601")  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0303"))  // _CID: Compatible ID
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0060,             // Range Minimum
                    0x0060,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IO (Decode16,
                    0x0064,             // Range Minimum
                    0x0064,             // Range Maximum
                    0x01,               // Alignment
                    0x01,               // Length
                    )
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {1}
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\PS2E, Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }
        }

        Device (PS2M)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\PS2E, Zero))
                {
                    Return (Zero)
                }

                If (LEqual (\I2CD, One))
                {
                    If (LGreaterEqual (OSYS, 0x07DD))
                    {
                        If (LEqual (TPMD, One))
                        {
                            If (LNotEqual (\_SB.TPTP (), Zero))
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                If (LEqual (\_SB.TPTP (), Zero))
                {
                    Return (Zero)
                }

                Return (0x0F)
            }

            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Store (\_SB.TPTP (), Local0)
                If (LEqual (Local0, 0x02))
                {
                    Return (0x04058416)
                }

                If (LEqual (Local0, 0x04))
                {
                    Return (0x6378981C)
                }

                Return (0x04058416)
            }

            Method (_CID, 0, NotSerialized)  // _CID: Compatible ID
            {
                Store (\_SB.TPTP (), Local0)
                If (LEqual (Local0, 0x02))
                {
                    Return (Package (0x02)
                    {
                        0x130FD041, 
                        0x8416
                    })
                }

                If (LEqual (Local0, 0x04))
                {
                    Return (Package (0x01)
                    {
                        0x130FD041
                    })
                }

                Return (Package (0x02)
                {
                    0x130FD041, 
                    0x8416
                })
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IRQ (Edge, ActiveHigh, Exclusive, )
                    {12}
            })
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x20), 
            MS0T,   8, 
            MS1T,   8, 
            MS2T,   8, 
            MS3T,   8, 
            MS4T,   8, 
            MS5T,   8, 
            Offset (0x53), 
            MCSS,   1, 
            MCTT,   1, 
            MDTT,   1, 
            MOSD,   1, 
            MVTP,   1, 
            Offset (0x54), 
            MSP0,   8, 
            MSC0,   8, 
            MCC0,   8, 
            MSC1,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x6A), 
            DCCC,   8, 
            Offset (0x90), 
            SCPM,   1, 
            Offset (0x92), 
            ESSF,   1, 
            ECTT,   1, 
            EDTT,   1, 
            EOSD,   1, 
            EVTP,   1, 
            ECP1,   1, 
                ,   1, 
            ECP2,   1, 
            Offset (0xA8), 
            ES0T,   8, 
            ES1T,   8, 
            ES2T,   8, 
            ES3T,   8, 
            ES4T,   8, 
            ES5T,   8
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x01), 
            ETID,   8, 
            Offset (0xD0), 
            ESP0,   8, 
            ESC0,   8, 
            ESP1,   8, 
            ESC1,   8
        }

        Method (TMP1, 0, Serialized)
        {
            If (WOMB)
            {
                If (\ECOK)
                {
                    Store (ES1T, Local0)
                }
                Else
                {
                    Store (RBEC (0xA9), Local0)
                }
            }
            Else
            {
                Store (MS1T, Local0)
            }

            Return (Add (Multiply (Local0, 0x0A), 0x0AAC))
        }

        Method (TMP2, 0, Serialized)
        {
            If (WOMB)
            {
                If (\ECOK)
                {
                    Store (ES2T, Local0)
                }
                Else
                {
                    Store (RBEC (0xAA), Local0)
                }
            }
            Else
            {
                Store (MS2T, Local0)
            }

            Return (Add (Multiply (Local0, 0x0A), 0x0AAC))
        }

        Method (TMP3, 0, Serialized)
        {
            If (WOMB)
            {
                If (\ECOK)
                {
                    Store (ES3T, Local0)
                }
                Else
                {
                    Store (RBEC (0xAB), Local0)
                }
            }
            Else
            {
                Store (MS3T, Local0)
            }

            Return (Add (Multiply (Local0, 0x0A), 0x0AAC))
        }

        Method (TMP4, 0, Serialized)
        {
            If (WOMB)
            {
                If (\ECOK)
                {
                    Store (ES4T, Local0)
                }
                Else
                {
                    Store (RBEC (0xAC), Local0)
                }
            }
            Else
            {
                Store (MS4T, Local0)
            }

            Return (Add (Multiply (Local0, 0x0A), 0x0AAC))
        }

        Method (TMP5, 0, Serialized)
        {
            If (WOMB)
            {
                If (\ECOK)
                {
                    Store (ES5T, Local0)
                }
                Else
                {
                    Store (RBEC (0xAD), Local0)
                }
            }
            Else
            {
                Store (MS5T, Local0)
            }

            Return (Add (Multiply (Local0, 0x0A), 0x0AAC))
        }
    }

    Scope (\_TZ)
    {
        Name (TBSE, 0x0AAC)
        Name (CRT0, Zero)
        Name (PSV0, Zero)
        ThermalZone (TZ01)
        {
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPCB.EC0.WOMB)
                {
                    If (\ECOK)
                    {
                        Store (\_SB.PCI0.LPCB.EC0.ES0T, Local0)
                        Store (\_SB.PCI0.LPCB.EC0.ESSF, Local1)
                        Store (\_SB.PCI0.LPCB.EC0.EOSD, Local2)
                    }
                    Else
                    {
                        Store (RBEC (0x92), Local0)
                        And (Local0, One, Local1)
                        And (Local0, 0x08, Local2)
                        Store (RBEC (0xA8), Local0)
                    }
                }
                Else
                {
                    Store (\_SB.PCI0.LPCB.EC0.MS0T, Local0)
                    Store (\_SB.PCI0.LPCB.EC0.MCSS, Local1)
                    Store (\_SB.PCI0.LPCB.EC0.MOSD, Local2)
                }

                If (Local2)
                {
                    If (LLessEqual (Local0, CRT0))
                    {
                        Add (CRT0, 0x02, Local0)
                    }
                }

                Return (C2K (Local0))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (\_SB.PCI0.LPCB.EC0.WOMB)
                {
                    If (\ECOK)
                    {
                        Store (0x20, \_SB.PCI0.LPCB.EC0.ETID)
                        Store (\_SB.PCI0.LPCB.EC0.ESC0, Local0)
                    }
                    Else
                    {
                        WBEC (One, 0x20)
                        Store (RBEC (0xD1), Local0)
                    }
                }
                Else
                {
                    Store (\_SB.PCI0.LPCB.EC0.MSC0, Local0)
                }

                If (LOr (LGreaterEqual (Local0, 0x80), LLess (Local0, 0x1E)))
                {
                    Store (0x78, Local0)
                }

                Store (Local0, CRT0)
                Return (C2K (Local0))
            }

            Method (_SCP, 1, Serialized)  // _SCP: Set Cooling Policy
            {
                If (\ECOK)
                {
                    Store (Arg0, \_SB.PCI0.LPCB.EC0.SCPM)
                }
                Else
                {
                    MBEC (0x90, 0xFE, Arg0)
                }
            }

            Method (_PSL, 0, Serialized)  // _PSL: Passive List
            {
                If (LEqual (\TCNT, 0x10))
                {
                    Return (Package (0x10)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13, 
                        \_SB.PR14, 
                        \_SB.PR15
                    })
                }

                If (LEqual (\TCNT, 0x0E))
                {
                    Return (Package (0x0E)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11, 
                        \_SB.PR12, 
                        \_SB.PR13
                    })
                }

                If (LEqual (\TCNT, 0x0C))
                {
                    Return (Package (0x0C)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09, 
                        \_SB.PR10, 
                        \_SB.PR11
                    })
                }

                If (LEqual (\TCNT, 0x0A))
                {
                    Return (Package (0x0A)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07, 
                        \_SB.PR08, 
                        \_SB.PR09
                    })
                }

                If (LEqual (\TCNT, 0x08))
                {
                    Return (Package (0x08)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06, 
                        \_SB.PR07
                    })
                }

                If (LEqual (\TCNT, 0x07))
                {
                    Return (Package (0x07)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05, 
                        \_SB.PR06
                    })
                }

                If (LEqual (\TCNT, 0x06))
                {
                    Return (Package (0x06)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04, 
                        \_SB.PR05
                    })
                }

                If (LEqual (\TCNT, 0x05))
                {
                    Return (Package (0x05)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03, 
                        \_SB.PR04
                    })
                }

                If (LEqual (\TCNT, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02, 
                        \_SB.PR03
                    })
                }

                If (LEqual (\TCNT, 0x03))
                {
                    Return (Package (0x03)
                    {
                        \_SB.PR00, 
                        \_SB.PR01, 
                        \_SB.PR02
                    })
                }

                If (LEqual (\TCNT, 0x02))
                {
                    Return (Package (0x02)
                    {
                        \_SB.PR00, 
                        \_SB.PR01
                    })
                }

                Return (Package (0x01)
                {
                    \_SB.PR00
                })
            }

            Method (_PSV, 0, Serialized)  // _PSV: Passive Temperature
            {
                If (\_SB.PCI0.LPCB.EC0.WOMB)
                {
                    If (\ECOK)
                    {
                        Store (0x20, \_SB.PCI0.LPCB.EC0.ETID)
                        Store (\_SB.PCI0.LPCB.EC0.ESP0, Local0)
                    }
                    Else
                    {
                        WBEC (One, 0x20)
                        Store (RBEC (0xD0), Local0)
                    }
                }
                Else
                {
                    Store (\_SB.PCI0.LPCB.EC0.MSP0, Local0)
                }

                If (LOr (LGreaterEqual (Local0, 0x80), LLess (Local0, 0x1E)))
                {
                    Store (0x5A, Local0)
                }

                Store (Local0, PSV0)
                Return (C2K (Local0))
            }

            Method (_TC1, 0, Serialized)  // _TC1: Thermal Constant 1
            {
                Return (Zero)
            }

            Method (_TC2, 0, Serialized)  // _TC2: Thermal Constant 2
            {
                Return (0x32)
            }

            Method (_TSP, 0, Serialized)  // _TSP: Thermal Sampling Period
            {
                Return (Zero)
            }
        }

        ThermalZone (TZ00)
        {
            Method (_TMP, 0, Serialized)  // _TMP: Temperature
            {
                If (\_SB.PCI0.LPCB.EC0.WOMB)
                {
                    If (\ECOK)
                    {
                        Store (\_SB.PCI0.LPCB.EC0.ES1T, Local0)
                    }
                    Else
                    {
                        Store (RBEC (0xA9), Local0)
                    }
                }
                Else
                {
                    Store (\_SB.PCI0.LPCB.EC0.MS1T, Local0)
                }

                Return (C2K (Local0))
            }

            Method (_CRT, 0, Serialized)  // _CRT: Critical Temperature
            {
                If (\_SB.PCI0.LPCB.EC0.WOMB)
                {
                    If (\ECOK)
                    {
                        Store (0x20, \_SB.PCI0.LPCB.EC0.ETID)
                        Store (\_SB.PCI0.LPCB.EC0.ESC1, Local0)
                    }
                    Else
                    {
                        WBEC (One, 0x20)
                        Store (RBEC (0xD3), Local0)
                    }
                }
                Else
                {
                    Store (\_SB.PCI0.LPCB.EC0.MSC1, Local0)
                }

                If (LOr (LGreaterEqual (Local0, 0x80), LLess (Local0, 0x1E)))
                {
                    Store (0x78, Local0)
                }

                Return (C2K (Local0))
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Store (Arg0, Local0)
            If (LLessEqual (Local0, 0x10))
            {
                Store (0x1E, Local0)
            }

            If (LGreaterEqual (Local0, 0x7F))
            {
                Store (0x1E, Local0)
            }

            Add (Multiply (Local0, 0x0A), TBSE, Local0)
            Return (Local0)
        }
    }

    Scope (\)
    {
        Name (LIDE, One)
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (ECMB, ByteAcc, Lock, Preserve)
        {
            Offset (0x02), 
                ,   1, 
            MLID,   1
        }

        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x70), 
                ,   1, 
            ELID,   1, 
            Offset (0x72), 
                ,   4, 
            EIDW,   1
        }
    }

    Scope (\_SB)
    {
        Device (LID0)
        {
            Name (_HID, EisaId ("PNP0C0D"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\LIDE, Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (0x0F)
                }
            }

            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (\_SB.PCI0.LPCB.EC0.WOMB)
                {
                    If (\ECOK)
                    {
                        Store (\_SB.PCI0.LPCB.EC0.ELID, Local0)
                    }
                    Else
                    {
                        And (RBEC (0x70), 0x02, Local0)
                    }
                }
                Else
                {
                    Store (\_SB.PCI0.LPCB.EC0.MLID, Local0)
                }

                If (Local0)
                {
                    Return (One)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Scope (\_SB)
    {
        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Scope (\)
    {
        Name (B2ED, Buffer (0x1C)
        {
            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0018 */  0x00, 0x00, 0x00, 0x00                         
        })
        Method (WH15, 2, NotSerialized)
        {
            Acquire (MSMI, 0xFFFF)
            CreateDWordField (Arg1, Zero, DEAX)
            CreateDWordField (Arg1, 0x04, DEBX)
            CreateDWordField (Arg1, 0x08, DECX)
            CreateDWordField (Arg1, 0x0C, DEDX)
            CreateDWordField (B2ED, Zero, OEAX)
            CreateDWordField (B2ED, 0x04, OEBX)
            CreateDWordField (B2ED, 0x08, OECX)
            CreateDWordField (B2ED, 0x0C, OEDX)
            CreateDWordField (B2ED, 0x10, OFLG)
            Store (DECX, OECX)
            Store (DEDX, OEDX)
            If (LEqual (\_SB.AMW0.WMID, One))
            {
                CreateDWordField (Arg1, 0x10, DESI)
                CreateDWordField (Arg1, 0x14, DEDI)
                CreateDWordField (B2ED, 0x14, OESI)
                CreateDWordField (B2ED, 0x18, OEDI)
                Store (DESI, OESI)
                Store (DEDI, OEDI)
            }

            Store (DEAX, WNVA)
            Store (DEBX, WNVB)
            Store (DECX, WNVC)
            Store (DEDX, WNVD)
            If (LEqual (\_SB.AMW0.WMID, One))
            {
                Store (DESI, WNVS)
                Store (DEDI, WNVI)
            }

            WSMI (One)
            Store (WNVA, OEAX)
            Store (WNVB, OEBX)
            Store (WNVC, OECX)
            Store (WNVD, OEDX)
            Store (WFLG, OFLG)
            If (LEqual (\_SB.AMW0.WMID, One))
            {
                Store (WNVS, OESI)
                Store (WNVI, OEDI)
            }

            Release (MSMI)
            Return (B2ED)
        }
    }

    Scope (\_SB)
    {
        Device (AMW0)
        {
            Name (_HID, EisaId ("PNP0C14"))  // _HID: Hardware ID
            Name (_UID, "WST")  // _UID: Unique ID
            Name (WLMP, Zero)
            Name (WMID, Zero)
            Name (B0ED, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                         
            })
            CreateDWordField (B0ED, Zero, WLID)
            Name (B1ED, Buffer (0x04)
            {
                 0x00, 0x00, 0x00, 0x00                         
            })
            Name (_WDG, Buffer (0x64)
            {
                /* 0000 */  0x81, 0x17, 0xF4, 0xD9, 0x33, 0xF6, 0x00, 0x44,
                /* 0008 */  0x93, 0x55, 0x60, 0x17, 0x70, 0xBE, 0xC5, 0x10,
                /* 0010 */  0x41, 0x41, 0x01, 0x00, 0x1D, 0x37, 0xC3, 0x67,
                /* 0018 */  0xA3, 0x95, 0x37, 0x4C, 0xBB, 0x61, 0xDD, 0x47,
                /* 0020 */  0xB4, 0x91, 0xDA, 0xAB, 0x41, 0x42, 0x01, 0x02,
                /* 0028 */  0xED, 0x16, 0x1F, 0x43, 0x2B, 0x0C, 0x4C, 0x44,
                /* 0030 */  0xB2, 0x67, 0x27, 0xDE, 0xB1, 0x40, 0xCF, 0x9C,
                /* 0038 */  0x41, 0x43, 0x01, 0x02, 0x71, 0xBF, 0xD1, 0x40,
                /* 0040 */  0x2D, 0xA8, 0x59, 0x4E, 0xA1, 0x68, 0x39, 0x85,
                /* 0048 */  0xE0, 0x3B, 0x2E, 0x87, 0xB0, 0x00, 0x01, 0x08,
                /* 0050 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,
                /* 0058 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,
                /* 0060 */  0x44, 0x44, 0x01, 0x00                         
            })
            Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event
            {
                Store (Arg0, P80H)
                If (LEqual (Arg0, 0xB0))
                {
                    Return (B0ED)
                }
            }

            Method (WQAA, 1, NotSerialized)
            {
                Store (0xAA, P80H)
                Return (B1ED)
            }

            Method (WSAA, 2, NotSerialized)
            {
                Store (0xA1, P80H)
                CreateDWordField (Arg1, Zero, DDD0)
                If (LEqual (DDD0, One))
                {
                    Add (DDD0, 0x02, DDD0)
                    Store (DDD0, Index (B1ED, Zero))
                }
            }

            Method (WMAB, 3, NotSerialized)
            {
                Store (0xAB, P80H)
                Store (One, WLMP)
                Store (Zero, WMID)
                Return (WH15 (Arg1, Arg2))
            }

            Method (WMAC, 3, NotSerialized)
            {
                Store (0xAC, P80H)
                Store (One, WLMP)
                Store (One, WMID)
                Return (WH15 (Arg1, Arg2))
            }
        }
    }

    Scope (\_SB.AMW0)
    {
        Name (WQDD, Buffer (0x0560)
        {
            /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,
            /* 0008 */  0x50, 0x05, 0x00, 0x00, 0x70, 0x1D, 0x00, 0x00,
            /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,
            /* 0018 */  0x18, 0xCB, 0x8D, 0x00, 0x01, 0x06, 0x18, 0x42,
            /* 0020 */  0x10, 0x09, 0x10, 0x8A, 0xE7, 0x80, 0x42, 0x04,
            /* 0028 */  0x0A, 0x0D, 0xA1, 0x40, 0x30, 0x28, 0x38, 0x4B,
            /* 0030 */  0x82, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x08, 0x84,
            /* 0038 */  0x24, 0x0A, 0x30, 0x2F, 0x40, 0xB7, 0x00, 0xC3,
            /* 0040 */  0x02, 0x6C, 0x0B, 0x30, 0x2D, 0xC0, 0x31, 0x90,
            /* 0048 */  0xFA, 0xF7, 0x87, 0x28, 0x0D, 0x44, 0x22, 0x20,
            /* 0050 */  0xA9, 0x14, 0x08, 0x09, 0x15, 0xA0, 0x5C, 0x80,
            /* 0058 */  0x6F, 0x01, 0xDA, 0x11, 0x25, 0x59, 0x80, 0x65,
            /* 0060 */  0x18, 0x11, 0xD8, 0x2B, 0x32, 0x41, 0xE3, 0x04,
            /* 0068 */  0xE5, 0x0C, 0x03, 0x05, 0x6F, 0xC0, 0x36, 0x05,
            /* 0070 */  0x98, 0x1C, 0x04, 0x95, 0x3D, 0x08, 0x94, 0x0C,
            /* 0078 */  0x08, 0x79, 0x14, 0x60, 0x15, 0x4E, 0xD3, 0x49,
            /* 0080 */  0x60, 0xF7, 0x73, 0x91, 0x30, 0x18, 0x19, 0x13,
            /* 0088 */  0xA0, 0x50, 0x80, 0x46, 0x01, 0xDE, 0x40, 0x64,
            /* 0090 */  0x4B, 0x80, 0x41, 0x01, 0xE2, 0x04, 0x28, 0x83,
            /* 0098 */  0x12, 0x4A, 0xB8, 0x83, 0x69, 0x4D, 0x80, 0x39,
            /* 00A0 */  0x28, 0x82, 0x56, 0x1B, 0x98, 0x50, 0x3A, 0x03,
            /* 00A8 */  0x12, 0x48, 0xAC, 0x16, 0xC1, 0x05, 0x13, 0x3B,
            /* 00B0 */  0x6A, 0x94, 0x40, 0xD1, 0xDB, 0x1F, 0x04, 0x09,
            /* 00B8 */  0xA7, 0x00, 0xA2, 0x06, 0x10, 0x45, 0x1A, 0x0D,
            /* 00C0 */  0x6A, 0x44, 0x09, 0x0E, 0xCC, 0xA3, 0x39, 0xD5,
            /* 00C8 */  0xCE, 0x05, 0x48, 0x9F, 0xAB, 0x40, 0x8E, 0xF5,
            /* 00D0 */  0x34, 0xEA, 0x1C, 0x2E, 0x01, 0x49, 0x60, 0xAC,
            /* 00D8 */  0x04, 0xB7, 0xEE, 0x21, 0xE2, 0x5D, 0x03, 0x6A,
            /* 00E0 */  0xE2, 0x87, 0xC8, 0x04, 0xC1, 0xA1, 0x86, 0xE8,
            /* 00E8 */  0xF1, 0x86, 0x3B, 0x81, 0xA3, 0x3E, 0x12, 0x06,
            /* 00F0 */  0x71, 0x50, 0x47, 0x83, 0x39, 0x07, 0xD8, 0xE1,
            /* 00F8 */  0x64, 0x34, 0xE3, 0x52, 0x05, 0x98, 0x1D, 0xBA,
            /* 0100 */  0x46, 0x96, 0xE0, 0x78, 0x0C, 0x7D, 0xF6, 0xE7,
            /* 0108 */  0xD3, 0x33, 0x24, 0x91, 0x3F, 0x08, 0xD4, 0xC8,
            /* 0110 */  0x0C, 0xED, 0xA1, 0x9E, 0x56, 0xCC, 0x90, 0x4F,
            /* 0118 */  0x01, 0x87, 0xC5, 0xC4, 0x42, 0x68, 0x93, 0x1A,
            /* 0120 */  0x0F, 0xC4, 0xFF, 0xFF, 0x78, 0xC0, 0xA3, 0xF8,
            /* 0128 */  0x68, 0x20, 0x84, 0x57, 0x82, 0xD8, 0x1E, 0x50,
            /* 0130 */  0x82, 0x01, 0x21, 0xE4, 0x64, 0x3C, 0xA8, 0x51,
            /* 0138 */  0x18, 0x35, 0xDC, 0x61, 0x1C, 0xB5, 0x8F, 0x0F,
            /* 0140 */  0x3A, 0x3C, 0x50, 0x51, 0xC3, 0xA6, 0x67, 0x06,
            /* 0148 */  0x7E, 0x5C, 0x60, 0xE7, 0x82, 0x98, 0x8F, 0x00,
            /* 0150 */  0x1E, 0xC9, 0x09, 0xF9, 0x38, 0xE1, 0x81, 0xC1,
            /* 0158 */  0x07, 0xC4, 0x7B, 0x9F, 0x32, 0x19, 0xC1, 0x99,
            /* 0160 */  0x7A, 0x80, 0xE0, 0xB0, 0x3E, 0x7C, 0x02, 0xFC,
            /* 0168 */  0xB2, 0xF0, 0xB0, 0x90, 0xC0, 0xF7, 0x07, 0x03,
            /* 0170 */  0xE3, 0x46, 0x68, 0xBF, 0x02, 0x10, 0x82, 0x97,
            /* 0178 */  0x79, 0x02, 0x90, 0x53, 0x04, 0x8D, 0xCD, 0xD0,
            /* 0180 */  0x4F, 0x03, 0x2F, 0x0E, 0xE1, 0x83, 0x47, 0x38,
            /* 0188 */  0xDF, 0x03, 0x38, 0x85, 0xC7, 0x00, 0x0F, 0xC1,
            /* 0190 */  0x04, 0x16, 0x39, 0x02, 0x94, 0x98, 0x11, 0xA0,
            /* 0198 */  0x8E, 0x0D, 0x27, 0x70, 0x3C, 0x61, 0x8F, 0xE0,
            /* 01A0 */  0x78, 0xA2, 0x9C, 0xC4, 0x01, 0xF9, 0xA8, 0x61,
            /* 01A8 */  0x84, 0xE0, 0xE5, 0x9E, 0x38, 0x88, 0xE6, 0x71,
            /* 01B0 */  0x6A, 0x16, 0xEF, 0x00, 0x87, 0xC0, 0xC6, 0x84,
            /* 01B8 */  0x3B, 0x40, 0x78, 0x08, 0x7C, 0x00, 0x8F, 0x1A,
            /* 01C0 */  0xE7, 0x67, 0xA5, 0xB3, 0x42, 0x9E, 0x3B, 0xF8,
            /* 01C8 */  0x98, 0xB0, 0x03, 0xE0, 0xD2, 0x0F, 0x27, 0x28,
            /* 01D0 */  0xB1, 0xE7, 0x13, 0x50, 0xFC, 0xFF, 0xCF, 0x27,
            /* 01D8 */  0xC0, 0x1E, 0xE4, 0x99, 0xE4, 0xED, 0xE4, 0x68,
            /* 01E0 */  0x9E, 0x4B, 0x1E, 0x48, 0x9E, 0x48, 0x9E, 0x4F,
            /* 01E8 */  0x8C, 0xF3, 0x66, 0xF2, 0x64, 0x10, 0xE1, 0xF9,
            /* 01F0 */  0xC4, 0xD7, 0x14, 0x23, 0x44, 0x09, 0x19, 0xE8,
            /* 01F8 */  0xE1, 0x24, 0x42, 0x94, 0x70, 0x81, 0xC2, 0x1A,
            /* 0200 */  0x21, 0xC8, 0x63, 0xC1, 0x09, 0x1F, 0x76, 0xAC,
            /* 0208 */  0x40, 0x61, 0x9E, 0x4F, 0x98, 0xF0, 0xA7, 0x86,
            /* 0210 */  0x2C, 0x9C, 0x4F, 0x00, 0xBA, 0xFC, 0xFF, 0xCF,
            /* 0218 */  0x27, 0x80, 0x33, 0x81, 0xE7, 0x13, 0x90, 0x0E,
            /* 0220 */  0x8F, 0x1F, 0x4F, 0x80, 0xC9, 0x08, 0xB8, 0x16,
            /* 0228 */  0x13, 0x87, 0x2F, 0xD4, 0xE3, 0xC0, 0xA7, 0x11,
            /* 0230 */  0x40, 0xCE, 0x09, 0xE4, 0xFD, 0xE3, 0x38, 0x9F,
            /* 0238 */  0x44, 0x7C, 0xF7, 0xF2, 0xFF, 0xFF, 0xE6, 0xE5,
            /* 0240 */  0x83, 0xC8, 0x1B, 0xC8, 0xC1, 0x3E, 0x8D, 0xB0,
            /* 0248 */  0x51, 0x05, 0x33, 0xCA, 0xE9, 0x47, 0x88, 0xFA,
            /* 0250 */  0x52, 0x62, 0xC4, 0x08, 0xC1, 0x42, 0x05, 0x8A,
            /* 0258 */  0x11, 0x35, 0xB2, 0x61, 0x23, 0xC4, 0x79, 0xF8,
            /* 0260 */  0xA2, 0x0F, 0x06, 0x0D, 0xD5, 0xA7, 0x11, 0x80,
            /* 0268 */  0x1F, 0xA7, 0x09, 0xDC, 0xE9, 0x02, 0x4C, 0x93,
            /* 0270 */  0x38, 0x80, 0x28, 0x45, 0xC3, 0x68, 0x3A, 0x8F,
            /* 0278 */  0x03, 0x01, 0x9F, 0x2F, 0x80, 0x89, 0xE2, 0x97,
            /* 0280 */  0x9E, 0xCE, 0x27, 0xFE, 0xFF, 0xAB, 0x05, 0x91,
            /* 0288 */  0x8D, 0xB5, 0x7A, 0x58, 0x34, 0xF3, 0x03, 0x48,
            /* 0290 */  0xF0, 0xC5, 0x03, 0x6B, 0xD8, 0x27, 0x79, 0x16,
            /* 0298 */  0x27, 0x99, 0x60, 0x56, 0x28, 0xC1, 0x7A, 0xD8,
            /* 02A0 */  0x4E, 0x09, 0xA3, 0x04, 0x24, 0x1A, 0x8E, 0xA1,
            /* 02A8 */  0xAD, 0x19, 0x46, 0x70, 0x06, 0xF1, 0x79, 0xC8,
            /* 02B0 */  0x21, 0xCE, 0x31, 0x50, 0x8E, 0x0C, 0x1E, 0xC5,
            /* 02B8 */  0x59, 0x3D, 0x07, 0x78, 0x8C, 0x8F, 0x0B, 0x6C,
            /* 02C0 */  0x7C, 0x3E, 0x08, 0xF0, 0xC3, 0xA0, 0x6F, 0x06,
            /* 02C8 */  0x46, 0xB6, 0x9A, 0xD3, 0x0C, 0x0A, 0xCC, 0xC7,
            /* 02D0 */  0x0B, 0x4E, 0x50, 0xD7, 0xCD, 0x05, 0x64, 0x43,
            /* 02D8 */  0x82, 0x79, 0x10, 0x38, 0x24, 0x30, 0x4F, 0xD5,
            /* 02E0 */  0x43, 0x02, 0x1E, 0xE0, 0x87, 0x04, 0xE6, 0x2B,
            /* 02E8 */  0x81, 0x87, 0x04, 0x2C, 0xFE, 0xFF, 0xA8, 0x07,
            /* 02F0 */  0x71, 0x48, 0x60, 0x46, 0xF2, 0x90, 0xC0, 0xA6,
            /* 02F8 */  0xEF, 0xC8, 0x01, 0x0A, 0x20, 0xDF, 0x30, 0x7C,
            /* 0300 */  0xDC, 0x7B, 0xCA, 0x60, 0x63, 0x78, 0xE2, 0x33,
            /* 0308 */  0x9A, 0xD1, 0xB9, 0xC4, 0xE5, 0xE8, 0x42, 0xC1,
            /* 0310 */  0x45, 0xC1, 0xE8, 0x58, 0x60, 0x10, 0x4F, 0xCB,
            /* 0318 */  0x51, 0xA6, 0x8A, 0x9E, 0x89, 0x7D, 0x9E, 0x42,
            /* 0320 */  0xC8, 0x89, 0x82, 0x5F, 0xDD, 0x74, 0x9F, 0x81,
            /* 0328 */  0x76, 0xF7, 0x08, 0xEA, 0x8B, 0x0A, 0x83, 0xF3,
            /* 0330 */  0x64, 0x39, 0x9C, 0xAF, 0x14, 0xFC, 0xAE, 0xE3,
            /* 0338 */  0xCB, 0x15, 0xF8, 0x46, 0x05, 0xF7, 0x50, 0xC1,
            /* 0340 */  0x46, 0x05, 0xF6, 0xEB, 0x88, 0x47, 0x05, 0xD6,
            /* 0348 */  0xFF, 0xFF, 0xA8, 0x60, 0x9D, 0x2B, 0xD8, 0xA8,
            /* 0350 */  0xC0, 0x7E, 0x26, 0xF0, 0xA8, 0x80, 0xCB, 0xD1,
            /* 0358 */  0x82, 0x8D, 0x0A, 0xEC, 0x1E, 0x46, 0x05, 0xCA,
            /* 0360 */  0x20, 0xD7, 0x0F, 0x28, 0xD0, 0x8F, 0x96, 0xAF,
            /* 0368 */  0x40, 0x0F, 0x41, 0x8F, 0x51, 0x1E, 0x14, 0xB8,
            /* 0370 */  0x61, 0x7C, 0xDF, 0x03, 0x4E, 0x17, 0x10, 0x98,
            /* 0378 */  0xF0, 0x18, 0xC1, 0x47, 0x18, 0xF2, 0xFF, 0x27,
            /* 0380 */  0x28, 0x6B, 0x5C, 0xA8, 0xFB, 0x8A, 0xAF, 0x72,
            /* 0388 */  0xEC, 0x3A, 0x85, 0xBB, 0x2A, 0x62, 0x60, 0x3D,
            /* 0390 */  0x52, 0x0E, 0x6B, 0xB4, 0xB0, 0x07, 0xFC, 0xA6,
            /* 0398 */  0xE5, 0x63, 0x9A, 0x67, 0x66, 0x8C, 0xB0, 0x1E,
            /* 03A0 */  0xAD, 0x95, 0x92, 0xD2, 0x2B, 0x9F, 0x23, 0xDD,
            /* 03A8 */  0xFA, 0x00, 0x41, 0x73, 0x79, 0x10, 0x78, 0xCE,
            /* 03B0 */  0x7B, 0x4B, 0x78, 0x73, 0xF7, 0x59, 0xC2, 0xC7,
            /* 03B8 */  0xBD, 0xC7, 0x82, 0x97, 0x80, 0x97, 0x81, 0xF7,
            /* 03C0 */  0x92, 0x57, 0x5A, 0x76, 0xED, 0xF3, 0xAD, 0xCF,
            /* 03C8 */  0x48, 0x0F, 0x80, 0x46, 0x09, 0x12, 0x23, 0xE6,
            /* 03D0 */  0xFB, 0x89, 0x91, 0x1F, 0x6D, 0x7D, 0x69, 0xF0,
            /* 03D8 */  0xBD, 0x2F, 0xC6, 0x5B, 0x1F, 0x8B, 0x77, 0xEB,
            /* 03E0 */  0x03, 0x44, 0xFD, 0xFF, 0x6F, 0x7D, 0xC0, 0xFE,
            /* 03E8 */  0x72, 0xF1, 0xD6, 0x07, 0x1C, 0x30, 0x23, 0xBE,
            /* 03F0 */  0xF6, 0x01, 0x93, 0x34, 0x2B, 0xD0, 0x59, 0xC3,
            /* 03F8 */  0x49, 0x40, 0x74, 0xED, 0xC3, 0xE9, 0x01, 0xD2,
            /* 0400 */  0xB5, 0x0F, 0xAF, 0x03, 0x96, 0x8E, 0xDB, 0x0A,
            /* 0408 */  0x60, 0x94, 0xE4, 0x58, 0x85, 0xD2, 0x7E, 0xAC,
            /* 0410 */  0xA2, 0x20, 0x3E, 0xCE, 0xF8, 0xDA, 0x07, 0x58,
            /* 0418 */  0xF9, 0xFF, 0x5F, 0xFB, 0x00, 0x26, 0x0E, 0x09,
            /* 0420 */  0xE6, 0xF5, 0xE2, 0x09, 0xC7, 0x43, 0x02, 0xEB,
            /* 0428 */  0x8D, 0xC6, 0x43, 0x82, 0xFB, 0xFF, 0x1F, 0x34,
            /* 0430 */  0xD8, 0x86, 0x04, 0xE6, 0x8B, 0x9D, 0xAF, 0x8E,
            /* 0438 */  0xC0, 0x59, 0xF6, 0x82, 0x75, 0x29, 0xE1, 0x42,
            /* 0440 */  0x61, 0x74, 0xB4, 0x30, 0x88, 0x01, 0x7D, 0x75,
            /* 0448 */  0x04, 0x7E, 0x17, 0x3E, 0xE0, 0x73, 0x75, 0x04,
            /* 0450 */  0x0E, 0x17, 0x3E, 0xFC, 0xFF, 0xFF, 0xEA, 0x08,
            /* 0458 */  0x38, 0xB8, 0xF1, 0x81, 0xF3, 0xEA, 0x08, 0xFC,
            /* 0460 */  0x4C, 0x5C, 0x1D, 0x01, 0x1D, 0x2A, 0x46, 0x0E,
            /* 0468 */  0x74, 0x4E, 0x31, 0x8C, 0xE0, 0xFF, 0x7F, 0x54,
            /* 0470 */  0xE0, 0x06, 0xF6, 0xF1, 0x00, 0xD8, 0x8C, 0x0A,
            /* 0478 */  0x18, 0x9C, 0x06, 0x7C, 0x09, 0x05, 0xBC, 0x2A,
            /* 0480 */  0xB4, 0xE9, 0x53, 0xA3, 0x51, 0xAB, 0x06, 0x65,
            /* 0488 */  0x6A, 0x94, 0x69, 0x50, 0xAB, 0x4F, 0xA5, 0xC6,
            /* 0490 */  0x8C, 0x5D, 0x29, 0x13, 0x8C, 0xB1, 0x02, 0x8D,
            /* 0498 */  0xC5, 0x22, 0x96, 0x23, 0x10, 0x87, 0x04, 0xA1,
            /* 04A0 */  0x22, 0x1F, 0x43, 0x02, 0x71, 0x44, 0x10, 0x1A,
            /* 04A8 */  0xE1, 0x4D, 0x23, 0x10, 0xC7, 0x5B, 0x9B, 0x40,
            /* 04B0 */  0x2C, 0xEE, 0xA1, 0x21, 0x10, 0xFF, 0xFF, 0x83,
            /* 04B8 */  0x3C, 0x23, 0x64, 0x04, 0x44, 0xA9, 0x40, 0x74,
            /* 04C0 */  0x4B, 0x22, 0x6B, 0x12, 0x90, 0x95, 0x81, 0x08,
            /* 04C8 */  0xC8, 0x81, 0x80, 0x68, 0x3A, 0x20, 0x2A, 0xEA,
            /* 04D0 */  0x21, 0x20, 0x20, 0x2B, 0x04, 0x11, 0x90, 0xD5,
            /* 04D8 */  0xD8, 0x00, 0x62, 0xDA, 0x40, 0x04, 0xE4, 0x5C,
            /* 04E0 */  0x40, 0x34, 0x25, 0x10, 0x55, 0xA8, 0x03, 0x88,
            /* 04E8 */  0xE9, 0x05, 0x11, 0x90, 0xB3, 0x02, 0xD1, 0xE4,
            /* 04F0 */  0x40, 0x54, 0xB3, 0x0F, 0x20, 0x96, 0x00, 0x44,
            /* 04F8 */  0x40, 0x4E, 0x4A, 0x23, 0x10, 0xEB, 0x54, 0x02,
            /* 0500 */  0xC2, 0x52, 0xBD, 0x1D, 0x04, 0xE8, 0x88, 0x20,
            /* 0508 */  0x02, 0xB2, 0xB2, 0x2F, 0xAB, 0x80, 0x2C, 0x13,
            /* 0510 */  0x44, 0x40, 0x4E, 0x07, 0x44, 0xA3, 0x02, 0x51,
            /* 0518 */  0x85, 0x56, 0x80, 0x98, 0x5C, 0x10, 0x01, 0x39,
            /* 0520 */  0x25, 0x10, 0x8D, 0x0C, 0x44, 0x95, 0x6A, 0x01,
            /* 0528 */  0x62, 0xB2, 0x41, 0x04, 0x64, 0x89, 0x5E, 0x80,
            /* 0530 */  0x98, 0x60, 0x10, 0x01, 0x39, 0x2C, 0x10, 0x8D,
            /* 0538 */  0x0E, 0x44, 0x65, 0xBF, 0x0A, 0x04, 0xE4, 0x10,
            /* 0540 */  0x20, 0x3A, 0x25, 0x10, 0x33, 0x40, 0x4C, 0x0E,
            /* 0548 */  0x88, 0x0E, 0x00, 0x04, 0x88, 0xC6, 0x02, 0xA2,
            /* 0550 */  0x92, 0xFE, 0x5B, 0x02, 0xB2, 0x40, 0x10, 0x01,
            /* 0558 */  0x39, 0x1C, 0x10, 0x8D, 0x0A, 0x44, 0xFF, 0xFF 
        })
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x58), 
            WHKE,   8
        }

        Method (_Q2C, 0, NotSerialized)  // _Qxx: EC Query
        {
            Store (0x2C, P80H)
            If (CondRefOf (\_SB.PCI0.WMID.EVBU))
            {
                If (\ECOK)
                {
                    Store (WHKE, Local0)
                }
                Else
                {
                    Store (RBEC (0x58), Local0)
                }

                If (LEqual (Local0, Zero))
                {
                    If (LEqual (FANF, 0x2C))
                    {
                        DTPJ (0x02)
                    }

                    Store (Zero, FANF)
                }
                ElseIf (LEqual (Local0, 0x64))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, One))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x08))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x02, Index (\_SB.PCI0.WMID.EVBU, One))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x09))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x03, Index (\_SB.PCI0.WMID.EVBU, One))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x15)){}
                ElseIf (LEqual (Local0, 0x03))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x06, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x04))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x06, Index (\_SB.PCI0.WMID.EVBU, One))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x02))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x07, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, One))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x07, Index (\_SB.PCI0.WMID.EVBU, One))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x05))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x09, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x06))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x09, Index (\_SB.PCI0.WMID.EVBU, One))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x0B))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x10, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x0D))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x11, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x0E))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x12, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x0F))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x13, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x10))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x14, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x11))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x15, Index (\_SB.PCI0.WMID.EVBU, One))
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
                ElseIf (LEqual (Local0, 0x0C))
                {
                    \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                    DTPJ (One)
                    Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                    Store (0x16, Index (\_SB.PCI0.WMID.EVBU, One))
                    Notify (\_SB.PCI0.WMID, 0x20)
                }
            }
        }

        Method (AOSD, 0, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.WMID.EVBU))
            {
                \_SB.PCI0.WMID.CLBU (Zero, 0x08)
                Store (One, Index (\_SB.PCI0.WMID.EVBU, Zero))
                Store (0x04, Index (\_SB.PCI0.WMID.EVBU, One))
                Notify (\_SB.PCI0.WMID, 0x20)
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (WWED, 1, NotSerialized)
        {
            If (CondRefOf (\_SB.PCI0.WMID.EVBU))
            {
                Store (Arg0, P80H)
                If (LEqual (Arg0, 0x20))
                {
                    Return (\_SB.PCI0.WMID.EVBU)
                }
                ElseIf (LEqual (Arg0, 0x21))
                {
                    Return (\_SB.PCI0.WMID.EVBU)
                }
                ElseIf (LEqual (Arg0, 0x22))
                {
                    Return (\_SB.PCI0.WMID.EVBU)
                }
                ElseIf (LEqual (Arg0, 0x23))
                {
                    Return (\_SB.PCI0.WMID.EVBU)
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Field (RAM, ByteAcc, Lock, Preserve)
        {
            Offset (0x6A), 
            TUBO,   8, 
            Offset (0x6F), 
            DCRG,   8
        }

        Method (DTPJ, 1, Serialized)
        {
            Store (0xFF, Local0)
            If (LEqual (Arg0, Zero))
            {
                Store (Zero, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (\ECOK)
                {
                    Store (TUBO, Local0)
                }
                Else
                {
                    Store (RBEC (0x6A), Local0)
                }

                If (CondRefOf (\_SB.PCI0.WMID.EVBU))
                {
                    Store (Local0, Index (\_SB.PCI0.WMID.EVBU, 0x02))
                }
            }
            ElseIf (LEqual (Arg0, 0x02)){}
            ElseIf (LEqual (Arg0, 0x03))
            {
                If (\ECOK)
                {
                    Store (TUBO, Local0)
                }
                Else
                {
                    Store (RBEC (0x6A), Local0)
                }
            }

            If (LNotEqual (Local0, 0xFF))
            {
                If (\ECOK)
                {
                    Store (DCRG, Local1)
                }
                Else
                {
                    Store (RBEC (0x6F), Local1)
                }

                If (LEqual (Local0, Zero))
                {
                    If (LEqual (Local1, One))
                    {
                        Store (0x10, \ODV0)
                    }
                    Else
                    {
                        Store (0x0B, \ODV0)
                    }
                }
                ElseIf (LEqual (Local0, 0x02))
                {
                    If (LEqual (Local1, One))
                    {
                        Store (0x12, \ODV0)
                    }
                    Else
                    {
                        Store (0x0F, \ODV0)
                    }
                }

                Notify (\_SB.IETM, 0x88)
                Notify (\_SB.PCI0.B0D4, 0x83)
                If (CondRefOf (\_SB.PCI0.NVTC))
                {
                    \_SB.PCI0.NVTC ()
                }
            }
        }

        Method (_Q7C, 0, NotSerialized)  // _Qxx: EC Query
        {
            DTPJ (0x03)
        }
    }

    Scope (\_SB)
    {
        Device (RBTN)
        {
            Name (_HID, "XMCCA001")  // _HID: Hardware ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LGreaterEqual (OSYS, 0x07DF))
                {
                    Notify (RBTN, 0x80)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LGreaterEqual (OSYS, 0x07DF))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (UPLD, 3, Serialized)
        {
            Name (PCKG, Package (0x01)
            {
                Buffer (0x14){}
            })
            CreateField (DerefOf (Index (PCKG, Zero)), Zero, 0x07, REV)
            Store (One, REV)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x40, One, VISI)
            Store (Arg0, VISI)
            CreateField (DerefOf (Index (PCKG, Zero)), 0x57, 0x08, GPOS)
            Store (Arg1, GPOS)
            Store (Zero, Local0)
            If (LEqual (Arg2, 0x08))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg2, 0x09))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg2, 0x0A))
            {
                Store (One, Local0)
            }

            If (LEqual (Local0, One))
            {
                CreateField (DerefOf (Index (PCKG, Zero)), 0x4A, 0x04, SHAP)
                Store (One, SHAP)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x20, 0x10, WID)
                Store (0x08, WID)
                CreateField (DerefOf (Index (PCKG, Zero)), 0x30, 0x10, HGT)
                Store (0x03, HGT)
            }

            Return (PCKG)
        }

        Method (UUPC, 2, Serialized)
        {
            Name (PCKG, Package (0x04)
            {
                Zero, 
                0xFF, 
                Zero, 
                Zero
            })
            Store (Arg0, Index (PCKG, Zero))
            Store (Arg1, Index (PCKG, One))
            Return (PCKG)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (0xFF, 0x03))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (One, One, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (0xFF, 0x03))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (One, 0x02, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (0xFF, 0x0A))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (One, 0x03, 0x0A))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (0xFF, Zero))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (One, 0x04, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, 0x05, 0xFF))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS06)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, 0x06, 0xFF))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, 0x07, 0xFF))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, 0x08, 0xFF))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS09)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, 0x09, 0xFF))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS10)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, 0x0A, 0xFF))
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS11))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS11)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UUPC (Zero, 0xFF))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (UPLD (Zero, 0x0B, 0xFF))
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS12))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS12)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UUPC (Zero, 0xFF))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (UPLD (Zero, 0x0C, 0xFF))
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS13))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS13)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UUPC (Zero, 0xFF))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (UPLD (Zero, 0x0D, 0xFF))
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.HS14))
    {
        Scope (\_SB.PCI0.XHC.RHUB.HS14)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UUPC (Zero, 0xFF))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (UPLD (Zero, 0x0E, 0xFF))
            }
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR1)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, Zero))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.USR2)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, Zero))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, Zero, Zero))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (0xFF, 0x0A))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (One, 0x03, 0x0A))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (0xFF, 0x0A))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (One, 0x03, 0x0A))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (0xFF, 0x03))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (One, One, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (0xFF, 0x03))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (One, 0x02, 0x03))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS05)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, Zero, 0xFF))
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS06)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (UUPC (Zero, 0xFF))
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (UPLD (Zero, Zero, 0xFF))
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.SS07))
    {
        Scope (\_SB.PCI0.XHC.RHUB.SS07)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UUPC (Zero, 0xFF))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (UPLD (Zero, Zero, 0xFF))
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.SS08))
    {
        Scope (\_SB.PCI0.XHC.RHUB.SS08)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UUPC (Zero, 0xFF))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (UPLD (Zero, Zero, 0xFF))
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.SS09))
    {
        Scope (\_SB.PCI0.XHC.RHUB.SS09)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UUPC (Zero, 0xFF))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (UPLD (Zero, Zero, 0xFF))
            }
        }
    }

    If (CondRefOf (\_SB.PCI0.XHC.RHUB.SS10))
    {
        Scope (\_SB.PCI0.XHC.RHUB.SS10)
        {
            Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
            {
                Return (UUPC (Zero, 0xFF))
            }

            Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
            {
                Return (UPLD (Zero, Zero, 0xFF))
            }
        }
    }

    Scope (\)
    {
        Name (TPIT, 0x04010003)
    }

    Scope (\_SB.PCI0.I2C1)
    {
        Name (HIDG, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */)
        Name (TP7G, ToUUID ("ef87eb82-f951-46da-84ec-14871ac6f84b"))
        Method (HIDD, 5, Serialized)
        {
            If (LEqual (Arg0, HIDG))
            {
                If (LEqual (Arg2, Zero))
                {
                    If (LEqual (Arg1, One))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                }

                If (LEqual (Arg2, One))
                {
                    Return (Arg4)
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        Method (TP7D, 6, Serialized)
        {
            If (LEqual (Arg0, TP7G))
            {
                If (LEqual (Arg2, Zero))
                {
                    If (LEqual (Arg1, One))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                }

                If (LEqual (Arg2, One))
                {
                    Return (ConcatenateResTemplate (Arg4, Arg5))
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        Device (TPD0)
        {
            Name (SBFS, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x002C, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (SBFE, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullUp, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0000
                    }
            })
            Name (SBFI, ResourceTemplate ()
            {
                Interrupt (ResourceConsumer, Level, ActiveLow, ExclusiveAndWake, ,, _Y00)
                {
                    0x00000000,
                }
            })
            CreateWordField (SBFG, 0x17, INT1)
            CreateDWordField (SBFI, \_SB.PCI0.I2C1.TPD0._Y00._INT, INT2)  // _INT: Interrupts
            Name (IRQM, Zero)
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LNotEqual (TPIT, 0xFFFFFFFF))
                {
                    If (LLess (OSYS, 0x07DC))
                    {
                        SRXO (TPIT, One)
                    }

                    Store (GNUM (TPIT), INT1)
                    Store (INUM (TPIT), INT2)
                    If (LEqual (IRQM, Zero))
                    {
                        SHPO (TPIT, One)
                    }
                }
            }

            Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
            {
                Store (\_SB.TPTP (), Local0)
                If (LEqual (Local0, 0x04))
                {
                    Return ("GXT7863")
                }

                Return ("ELAN2304")
            }

            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (XDSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Store (\_SB.TPTP (), Local0)
                If (LEqual (Local0, 0x04))
                {
                    If (LEqual (Arg0, HIDG))
                    {
                        Return (HIDD (Arg0, Arg1, Arg2, Arg3, 0x20))
                    }

                    If (LEqual (Arg0, TP7G))
                    {
                        Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFS, SBFG))
                    }
                }

                If (LEqual (Arg0, HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, One))
                }

                If (LEqual (Arg0, TP7G))
                {
                    Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFE, SBFG))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LEqual (\I2CD, One))
                {
                    If (LGreaterEqual (OSYS, 0x07DD))
                    {
                        If (LEqual (TPMD, One))
                        {
                            Store (\_SB.TPTP (), Local0)
                            If (LEqual (Local0, 0x04))
                            {
                                Return (0x0F)
                            }

                            If (LEqual (Local0, 0x02))
                            {
                                Return (0x0F)
                            }
                        }
                    }
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                If (LLess (OSYS, 0x07DC))
                {
                    Return (SBFI)
                }

                Store (\_SB.TPTP (), Local0)
                If (LEqual (Local0, 0x04))
                {
                    If (LEqual (IRQM, Zero))
                    {
                        Return (ConcatenateResTemplate (SBFS, SBFG))
                    }

                    Return (ConcatenateResTemplate (SBFS, SBFI))
                }

                If (LEqual (IRQM, Zero))
                {
                    Return (ConcatenateResTemplate (SBFE, SBFG))
                }

                Return (ConcatenateResTemplate (SBFE, SBFI))
            }
        }
    }
}

