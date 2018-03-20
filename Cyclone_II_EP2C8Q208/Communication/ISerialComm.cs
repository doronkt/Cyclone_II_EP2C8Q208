using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cyclone_II_EP2C8Q208.Communication
{
    interface ISerialComm
    {

        bool FPGAWrite(string text);
        string FPGARead();
        void InitSerialComm(string PortName, int baudrate, Parity ParityBit, short DataBits, short StopBits);
        void DefineReadTimeout(int Timeout);
        void DefineWriteTimeout(int Timeout);

    }
}
