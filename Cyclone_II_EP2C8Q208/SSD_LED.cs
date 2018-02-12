using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cyclone_II_EP2C8Q208.IO
{
    class SSD_LED
    {
        #region Statics
        public static string commType = "Serial";
        public static short bitsPerSSDUnit = 8;
        public static short numberOfSSDUnits = 8;
        #endregion

        #region Members
        private Byte[] m_displayData;
        Byte[] text = new Byte[numberOfSSDUnits];
        public string TextToDisplay
        {
            get
            {
                return ConvertByteArrayToString(m_displayData);
            }
            set
            {
                m_displayData = ConvertStringToByteArray(value);
            }
        }
        #endregion

        #region Constructor
        public SSD_LED()
        {
            m_displayData = null;
            text = new Byte[8];
        }
        #endregion

        #region Methods
        private void updateTextInSSD(Byte[] text)
        {
            throw new NotImplementedException();
            // TODO: think of logic

        }
        private Byte[] ConvertStringToByteArray(string text)
        {
            throw new NotImplementedException();
            //TODO: think of logic
        }

        private string ConvertByteArrayToString(Byte[] textByte)
        {
            return Encoding.UTF8.GetString(textByte);
        }
        #endregion

    }
}
