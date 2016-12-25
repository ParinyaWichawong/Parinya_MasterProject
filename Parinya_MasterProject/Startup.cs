using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Parinya_MasterProject.Startup))]
namespace Parinya_MasterProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
