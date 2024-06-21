using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EducationSystem_WebForms.Startup))]
namespace EducationSystem_WebForms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
