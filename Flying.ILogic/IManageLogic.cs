using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Flying.Entity;

namespace Flying.ILogic
{
    public interface IManageLogic
    {
        string LoginCheck(User user);

        string GetBlogNameByUserName(string strUserName);
    }
}
