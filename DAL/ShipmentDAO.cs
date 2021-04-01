using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace PRN292_Project.DAL
{
    public class ShipmentDAO
    {
        public static DataTable GetDataTable()
        {
            return DAO.GetDataTable("SELECT * FROM dbo.Shipment");
        }
    }
}