using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Flying.Common
{
    /// <summary>
    /// 工具类扩展方法
    /// </summary>
    public static class Utils
    {
        public static bool FlyIsNull(this object obj)
        {
            return obj == null;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="obj"></param>
        /// <returns>空值返回""</returns>
        public static string FlyToString(this object obj)
        {
            if (obj.FlyIsNull())
                return string.Empty;
            return obj.ToString();
        }
        /// <summary>
        /// string IsNullOrEmpty
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static bool FlyIsNullOrEmpty(this string str)
        {
            return string.IsNullOrEmpty(str);
        }
        /// <summary>
        /// 代替int.Parse，如果字符串为空或null返回0
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static int FlyToInt(this string str)
        {
            if (str.FlyIsNullOrEmpty())
                return 0;
            return int.Parse(str);
        }
        /// <summary>
        /// 获得MD5加密字符串
        /// </summary>
        /// <param name="str"></param>
        /// <param name="code">长度16，32.默认32</param>
        /// <returns></returns>
        public static string FlyToMd5(this string str, int code = 32)
        {
            if (code == 16)
            {
                return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5").ToLower().Substring(8, 16);
            }
            if (code == 32)
            {
                return System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str, "MD5");
            }
            return "00000000000000000000000000000000";
        }
        /// <summary>
        /// 转换可为空的Datetime
        /// </summary>
        /// <param name="str"></param>
        /// <returns></returns>
        public static DateTime? FlyToDateTime(this string str)
        {
            if (str.FlyIsNull())
                return null;
            if (str.Trim().FlyIsNullOrEmpty())
                return null;
            DateTime dt;
            if (!DateTime.TryParse(str, out dt))
                return null;
            return dt;
        }
        /// <summary>
        ///  DateTime?转string
        /// </summary>
        /// <param name="dt"></param>
        /// <param name="format"></param>
        /// <returns></returns>
        public static string FlyDateTimeToString(this DateTime? dt, string format = null)
        {
            if (dt == null)
                return string.Empty;
            if (format == null)
                return dt.Value.ToString();
            return dt.Value.ToString(format);
        }
    }

}
