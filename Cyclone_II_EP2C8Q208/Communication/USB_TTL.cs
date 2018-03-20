using Cyclone_II_EP2C8Q208.IO;
using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cyclone_II_EP2C8Q208.Communication
{
    class USB_TTL : ISerialComm
    {
        #region Statics
        public static int[] Bauds = { 9600, 57600, 115200 };
        public static short Stop_Bits = 1;
        public static bool ParityBit = false;
        public static short DataBits = 8;
        private static int MaxNumberOfBytes = LCD1602.charactersPerLine * LCD1602.numberOfLines;

        private int readTimeout = 3000;
        private int writeTimeout = 5000;

        #endregion

        #region Members
        private int baudrate;
        private string serialPortName = "COM5";
        private short dataBits = 8;
        private Parity parityBit = Parity.None;
        private StopBits stopBits = StopBits.One;


        public SerialPort _sp;


        #endregion

        #region Constructor
        public USB_TTL(string PortName, int Baudrate, short DataBits, short StopBits)
        {
            serialPortName = PortName;
            baudrate = verifyBaudrate(Baudrate);
            dataBits = verifyDataBits(DataBits);

            InitSerialComm(PortName, Baudrate, Parity.None, DataBits, StopBits);
            DefineReadTimeout(3000);
            DefineWriteTimeout(5000);

        }
        #endregion

        #region Methods
        /// <summary>
        /// Writes the data to the FPGA over the serial channel /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public bool FPGAWrite (string text)
        {
            try
            {
                _sp.WriteTimeout = writeTimeout;
                _sp.Write(text);
                return true;
            }
            catch
            {
                return false;
            }
        }
        /// <summary>
        /// Reads the FPGA data sent over the serial channel
        /// </summary>
        /// <returns></returns>
        public string FPGARead ()
        {
            try
            {
                _sp.ReadTimeout = readTimeout;
                return _sp.ReadLine();
            }
            catch
            {
                return "ERORR";
            }
        }

        public void InitSerialComm(string PortName, int baudrate, Parity ParityBit, short DataBits, short StopBits)
        {
            StopBits stop;
            if (StopBits == 0)
                stop = System.IO.Ports.StopBits.None;
            else if (StopBits == 1)
                stop = System.IO.Ports.StopBits.One;
            else if (StopBits == 2)
                stop = System.IO.Ports.StopBits.Two;
            else
                stop = System.IO.Ports.StopBits.One;

            _sp = new SerialPort(PortName, baudrate, ParityBit, DataBits, stop);
        }
        public void DefineReadTimeout(int Timeout)
        {
            readTimeout = Timeout;
        }
        public void DefineWriteTimeout(int Timeout)
        {
            throw new NotImplementedException();
        }

        private int verifyBaudrate(int baudrate)
        {
            return Bauds.Contains(baudrate) ? baudrate : this.baudrate;
        }
        private short verifyDataBits(short databits)
        {
            return (databits > 6 && databits < 10) ? databits : this.dataBits;
        }

        #endregion


    }
}
