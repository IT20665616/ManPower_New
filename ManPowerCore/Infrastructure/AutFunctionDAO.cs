﻿using ManPowerCore.Common;
using ManPowerCore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManPowerCore.Infrastructure
{
    public interface AutFunctionDAO
    {
        List<AutFunction> GetAllAutFunctionById(int AutFunctionId, DBConnection dbConnection);
        List<AutFunction> GetAllAutFunction(DBConnection dbConnection);

    }

    public class AutFunctionDAOImpl : AutFunctionDAO
    {
        public List<AutFunction> GetAllAutFunctionById(int AutFunctionId, DBConnection dbConnection)
        {
            if (dbConnection.dr != null)
                dbConnection.dr.Close();
            dbConnection.cmd.Parameters.Clear();
            dbConnection.cmd.CommandText = "SELECT * FROM AUT_FUNCTION where ID = " + AutFunctionId + " ";
            dbConnection.cmd.CommandType = System.Data.CommandType.Text;

            using (dbConnection.dr = dbConnection.cmd.ExecuteReader())
            {
                DataAccessObject dataAccessObject = new DataAccessObject();
                return dataAccessObject.ReadCollection<AutFunction>(dbConnection.dr);
            }
        }

        public List<AutFunction> GetAllAutFunction(DBConnection dbConnection)
        {
            if (dbConnection.dr != null)
                dbConnection.dr.Close();
            dbConnection.cmd.CommandText = "SELECT * FROM AUT_FUNCTION";
            dbConnection.cmd.CommandType = System.Data.CommandType.Text;

            using (dbConnection.dr = dbConnection.cmd.ExecuteReader())
            {
                DataAccessObject dataAccessObject = new DataAccessObject();
                return dataAccessObject.ReadCollection<AutFunction>(dbConnection.dr);
            }
        }
    }

}

