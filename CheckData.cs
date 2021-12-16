using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FootbalManager
{
    public class CheckData
    {
        public static bool IsInteger(string input)
        {
            if (String.IsNullOrEmpty(input))
            {
                return false;
            }
            try
            {
                Convert.ToInt32(input);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool IsDouble(string input)
        {
            if (String.IsNullOrEmpty(input))
            {
                return false;
            }
            try
            {
                Convert.ToDouble(input);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public static bool IsDate(string input)
        {
            if (String.IsNullOrEmpty(input))
            {
                return false;
            }
            try
            {
                DateTime.Parse(input);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}