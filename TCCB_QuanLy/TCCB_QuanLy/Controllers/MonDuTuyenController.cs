﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TCCB_QuanLy.Controllers
{
    [RoutePrefix("tuyendung")]
    public class MonDuTuyenController : Controller
    {
        // GET: MonDuTuyen
        [Route("mondutuyen")]
        public ActionResult MonDuTuyen()
        {
            return View();
        }
    }
}