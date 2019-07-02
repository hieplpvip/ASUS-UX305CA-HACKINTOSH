/*
HS01/SS01: Right USB 3.0
HS02/SS02 and HS03/SS03: Left USB 3.0
HS05: Camera
HS07: Card Reader
HS09: Bluetooth
*/

#ifndef NO_DEFINITIONBLOCK
DefinitionBlock ("", "SSDT", 2, "hack", "uiac", 0)
{
#endif
    Device (UIAC)
    {
        Name (_HID, "UIA00000")
        Name (RMCF, Package (0x02)
        {
            "8086_9d2f", 
            Package (0x04)
            {
                "port-count", Buffer() { 18, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS05", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 5, 0, 0, 0 },
                    },
                    "HS07", Package()
                    {
                        "UsbConnector", 0,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS09", Package()
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "SS01", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "SS02", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS03", Package()
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                },
            }
        })
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif