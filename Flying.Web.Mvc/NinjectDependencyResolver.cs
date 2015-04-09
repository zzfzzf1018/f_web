using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web.Mvc;
using Ninject;
using Flying.ILogic;
using Flying.Logic;

namespace Flying.Web.Mvc
{
    public class NinjectDependencyResolver : IDependencyResolver
    {
        private IKernel kernel;
        public NinjectDependencyResolver()
        {
            this.kernel = new StandardKernel();
            this.kernel.Settings.InjectNonPublic = true;//允许私有属性注入
            this.AddBindings();
        }
        private void AddBindings()
        {
            this.kernel.Bind<IManageLogic>().To<ManageLogic>();
            this.kernel.Bind<IBlogLogic>().To<BlogLogic>();
        }
        public object GetService(Type serviceType)
        {
            return this.kernel.TryGet(serviceType);
        }

        public IEnumerable<object> GetServices(Type serviceType)
        {
            return this.kernel.GetAll(serviceType);
        }
    }
}
