using OnlineRetailers.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace OnlineRetailers.Controllers
{
    public class addressController : ApiController
    {
        [HttpGet]
        public HttpResponseMessage Address()
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                List<City> list = db.Database.SqlQuery<City>("select * from City").ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }

        [HttpGet]
        public HttpResponseMessage Address(int CityID)
        {
            using (OnlineRetailersDBEntities db = new OnlineRetailersDBEntities())
            {
                List<Province> list = db.Database.SqlQuery<Province>(string.Format("select * from Province where CityID={0}", CityID)).ToList();
                string JOSN = new JavaScriptSerializer().Serialize(list);
                return new HttpResponseMessage { Content = new StringContent(JOSN, Encoding.UTF8, "application/json") };
            }
        }
    }
}