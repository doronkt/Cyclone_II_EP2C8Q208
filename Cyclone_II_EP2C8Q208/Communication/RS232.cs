using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cyclone_II_EP2C8Q208.Communication
{
    class RS232 : ISerialComm
    {
        public void DefineReadTimeout(int Timeout)
        {
            throw new NotImplementedException();
        }

        public void DefineWriteTimeout(int Timeout)
        {
            throw new NotImplementedException();
        }

        public string FPGARead()
        {
            throw new NotImplementedException();
        }

        public bool FPGAWrite(string text)
        {
            throw new NotImplementedException();
        }

        public void InitSerialComm(string PortName, int baudrate, Parity ParityBit, short DataBits, short StopBits)
        {
            throw new NotImplementedException();
        }
    }
}
