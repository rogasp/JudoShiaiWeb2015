using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(JudoShiaiWeb.Startup))]
namespace JudoShiaiWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
