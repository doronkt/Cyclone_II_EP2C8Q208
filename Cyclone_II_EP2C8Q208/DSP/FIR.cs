using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Cyclone_II_EP2C8Q208.DSP
{
    class FIR
    {
        #region Statics
        public static short MaximumNumberOfCoefficients = 50;

        #endregion

        #region Members
        float[] coefficients;

        #endregion

        #region Constructor
        public FIR()
        {
            // obtain coefficients from input file
            GenerateCoefficientsFromInputFile();
            // Send data to fpga over uart using fprotocol


        }

        private void GenerateCoefficientsFromInputFile()
        {
            throw new NotImplementedException();
        }
        #endregion

        #region Methods

        #endregion
    }
}
