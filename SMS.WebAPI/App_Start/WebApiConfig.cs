using SMS.BusinessService.Interface;
using SMS.BusinessService.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Http;
using Unity;
using Unity.Lifetime;

namespace SMS.WebAPI
{
    public static class WebApiConfig
    {
        public static void Register(HttpConfiguration config)
        {
            // Web API routes
            config.MapHttpAttributeRoutes();

            config.Routes.MapHttpRoute(
                name: "DefaultApi",
                routeTemplate: "api/{controller}/{id}",
                defaults: new { id = RouteParameter.Optional }
            );

            // Web API configuration and services          
            var container = new UnityContainer();
            container.RegisterType<IStudentService, StudentService>(new HierarchicalLifetimeManager());
            config.DependencyResolver = new DependencyResolver.UnityResolver(container);
        }
    }
}
