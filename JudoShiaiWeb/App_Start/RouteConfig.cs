using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace JudoShiaiWeb
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Permanent;
            routes.EnableFriendlyUrls(settings);
            routes.MapPageRoute("ShowJudokas", "ShowJudokas/{CompetitionId}", "~/Competition/ShowJudokas.aspx");
            routes.MapPageRoute("AddJudoka", "AddJudoka/{CompetitionId}", "~/Competition/AddJudoka.aspx");
            routes.MapPageRoute("AddJudoka2", "AddJudoka2/{CompetitionId}/{JudokaId}", "~/Competition/AddJudoka2.aspx");
            routes.MapPageRoute("RemoveJudoka", "RemoveJudoka/{CompetitionId}/{JudokaId}/{LinkId}", "~/Competition/RemoveJudoka.aspx");
            routes.MapPageRoute("WeighJudoka", "WeighJudoka/{CompetitionId}/{JudokaId}/{LinkId}", "~/Competition/WeighJudoka.aspx");
            //routes.MapPageRoute("ChangebeltJudoka", "ChangebeltJudoka/{CompetitionId}/{JudokaId}/{BeltId}", "~/Competition/ChangebeltJudoka.aspx");

        }
    }
}
