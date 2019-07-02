#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "atk", 0)
{
#endif
    External (_SB.ATKP, IntObj)
    External (_SB.ATKD, DeviceObj)
    External (_SB.ATKD.IANE, MethodObj)
    External (_SB.PCI0.LPCB.EC0, DeviceObj)
    Scope (_SB.ATKD)
    {   
        Name (DMES, 1)
        Method (IANE, 1)
        {
            Notify (ATKD, Arg0)
        }
    }
    
    Scope (_SB.PCI0.LPCB.EC0)
    {
        Method (_Q0A, 0) // F1 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x5E)
            }
        }
        
        Method (_Q0B, 0) // F2 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x7D)
            }
        }
        
        Method (_Q0E, 0) // F5 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x20)
            }
        }

        Method (_Q0F, 0) // F6 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x10)
            }
        }
        
        Method (_Q10, 0) // F7 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x35)
            }
        }
        
        Method (_Q11, 0) // F8 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x61)
            }
        }
        
        Method (_Q12, 0) // F9 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x6)
            }
        }
        
        Method (_Q13, 0) // F10 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x32)
            }
        }
        
        Method (_Q14, 0) // F11 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x31)
            }
        }
        
        Method (_Q15, 0) // F12 key
        {
            If (^^^^ATKP)
            {
                ^^^^ATKD.IANE (0x30)
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif