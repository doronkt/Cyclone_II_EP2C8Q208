using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cyclone_II_EP2C8Q208.Avalon_Interface
{
    interface AvalonMM
    {

        // Signals
        // Fundamental Signals
        int address { get; set; }
        BitArray byteenable { get; set; }
        bool read { get; set; }
        byte[] readdata { get; set; }
        bool write { get; set; }
        byte[] writedata { get; set; }
        
        //pipelined
        bool readdatavalid { get; set; }
        bool writeresponsevalid { get; set; }

        // burst
        BitArray burstcount { get; set; }
        bool beginbursttransfer { get; set; }


    }
}
