using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cyclone_II_EP2C8Q208.IO
{
    class LCD1602
    {
        #region Statics
        public static string commType = "Serial";
        public static int lcdClkFreqHz = 250000;
        public static short charactersPerLine = 16;
        public static short numberOfLines = 2;
        public static short enShortPeriod_us = 40;
        public static short enLongPeriod_us = 1640;
        public static short lcdLowestASCII_decimal = 32;
        public static short lcdHighestASCII_decimal = 255;

        public static int[] PIN_DB = { 115, 114, 113, 112, 110, 106, 105, 104 };
        public static int PIN_EN = 116;
        public static int PIN_RW = 117;
        public static int PIN_RS = 118;
        #endregion

        #region Members
        private string m_textToDisplay;

        /// <summary>
        /// Holds and updates the current text to display; return blank when corrupt;
        /// </summary>
        public string textToDisplay
        {
            get
            {
                return m_textToDisplay;
            }
            set
            {
                textToDisplay = updateTextinLCD(value);
            }
        }
        #endregion
        
        #region Constructor
        public LCD1602()
        {
            m_textToDisplay = "";
        }
        #endregion

        #region Methods
        private string updateTextinLCD(string text)
        {
            try
            {
                if (text.Length > charactersPerLine * numberOfLines) throw new IndexOutOfRangeException("Error. Text to display too long.");
                for (int i = 0; i < text.Length; i++)
                {
                    if (text[i] < lcdLowestASCII_decimal || text[i] > lcdHighestASCII_decimal)
                        throw new Exception("Error. One of the charters is invalid.");
                }
                m_textToDisplay = "" + text;
                for (int i = text.Length; i < numberOfLines * charactersPerLine; i++)
                    m_textToDisplay.ToCharArray()[i] = (char)lcdLowestASCII_decimal;
            }
            catch
            {
                m_textToDisplay = "";
            }
            return m_textToDisplay;
        }
        #endregion
    }
}
