using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HtM.Startup))]
namespace HtM
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
