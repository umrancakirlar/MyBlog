using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class sql_baglanti
    {
        public SqlConnection baglan()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=.;Initial Catalog=siteDB; Integrated Security=true");
            baglanti.Open();

            SqlConnection.ClearPool(baglanti);
            SqlConnection.ClearAllPools();
            
            return (baglanti);
        }
    }
}