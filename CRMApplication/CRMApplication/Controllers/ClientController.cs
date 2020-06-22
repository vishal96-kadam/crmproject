using CRMApplication.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dapper;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography.X509Certificates;

namespace CRMApplication.Controllers
{
    public class ClientController : Controller
    {
        // GET: Client
        public ActionResult Index()
        {
            //return ShowRecord();
            // return View(ClientModel.ReturnList<Client>("spGetClients", null));
            return View("Index");
        }
        public ActionResult Viewdata()
        {
            return View(ClientModel.ReturnList<Client>("spGetClients", null));
        }

        [HttpGet]
        public ActionResult Insert(int id = 0)
        {
            return View();
        }
        [HttpPost]
        public ActionResult Insert(Client client)
        {
            DynamicParameters param = new DynamicParameters();
            //param.Add("@ID", client.ID);
            param.Add("@name", client.Name);
            param.Add("@city", client.City);
            param.Add("@phoneNumber", client.PhoneNumber);
            param.Add("@address", client.Address);
            param.Add("@dob", client.DOB);
            ClientModel.ExecuteWithoutReturn("spAddClient", param);
            return RedirectToAction("Viewdata");
        }
        [HttpGet]
        public ActionResult EditDetails(int id)
        {
            if (id == 0)
            {
                return View();
            }
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@ID", id);
                return View(ClientModel.ReturnList<Client>("spGetbyidClients", param).FirstOrDefault<Client>());

            }
        }
        [HttpPost]
        public ActionResult EditDetails(Client client)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@ID", client.ID);
            param.Add("@name", client.Name);
            param.Add("@city", client.City);
            param.Add("@phoneNumber", client.PhoneNumber);
            param.Add("@address", client.Address);
            param.Add("@dob", client.DOB);
            ClientModel.ExecuteWithoutReturn("spEditClientDetails", param);
            return RedirectToAction("Viewdata");
        }
        public ActionResult ShowRecord()
        {

            ClientModel crud = new ClientModel();
            DataTable dt = new DataTable();
            dt = crud.getAllEmployee();

            // ClientModel.ExecuteReturnScalar = dt.Rows;

            return View("Index");
        }
        public ActionResult GetDetails(int id)
        {
            if (id == 0)
            {
                return View();
            }
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@ID", id);
                return View(ClientModel.ReturnList<Client>("spGetbyidClients", param).FirstOrDefault<Client>());

            }
        }
        [HttpGet]
        public ActionResult Preview(int id)
        {
            if (id == 0)
            {
                return View();
            }
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@ID", id);
                return View(ClientModel.ReturnList<Client>("spGetbyidClients", param).FirstOrDefault<Client>());

            }
        }


        [HttpGet]
        public ActionResult BuyProduct(int id)
        {
            if (id == 0)
            {
                return View();
            }
            else
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@ID", id);
                return View(ClientModel.ReturnList<Client>("spGetbyidClients", param).FirstOrDefault<Client>());

            }
        }
        [HttpPost]
        public ActionResult BuyProduct(int id, int cid)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@ID", id);
            param.Add("@CID", cid);
            return View(ClientModel.ReturnList<Client>("Insert into Product values(" + id + "," + cid + ")", param).FirstOrDefault<Client>());
        }
        public String addproduct(int pid, int ID)
        {
            DynamicParameters param2 = new DynamicParameters();
            param2.Add("@ID", ID);
            try
            { ClientModel.ReturnList<Client>("spGetbyCid", param2).FirstOrDefault<Client>();
                DynamicParameters param = new DynamicParameters();
                param.Add("@Products", pid);
                param.Add("@CID", ID);
                ClientModel.ReturnList<Client>("spAddProduct", param).FirstOrDefault<Client>();

                String s = "success";

                //IEnumerable List<Client> list = new List<Client>();
                //list=ClientModel.ReturnList<Client>("spGetbyCid", param2).FirstOrDefault<Client>();
                //return Json(c.ToString);
                //Stringreturn View(ClientModel.ReturnList<Client>("spGetbyCid", param2).FirstOrDefault<Client>());

                return s;
            }
            

            catch (Exception ex)
            {
                String s;
                s = "fail";

                return s;
            }
        }
          
   
        }

    }

