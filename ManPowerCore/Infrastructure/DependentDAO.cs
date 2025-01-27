﻿using ManPowerCore.Common;
using ManPowerCore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManPowerCore.Infrastructure
{
    public interface DependentDAO
    {
        //List<Dependant> GetAllDependant(DBConnection dbConnection);

        //Dependant GetDependantById(int id, DBConnection dbConnection);

        int SaveDependant(Dependant dependant, DBConnection dbConnection);

        //int UpdateDependant(Dependant dependant, DBConnection dbConnection);
    }

    public class DependentDAOImpl : DependentDAO
    {
        public int SaveDependant(Dependant dependant, DBConnection dbConnection)
        {
            if (dbConnection.dr != null)
                dbConnection.dr.Close();

            dbConnection.cmd.CommandType = System.Data.CommandType.Text;
            dbConnection.cmd.Parameters.Clear();
            dbConnection.cmd.CommandText = "INSERT INTO DEPENDANT(DEPENDENT_TYPE_ID,EMPLOYEE_ID,FIRST_NAME,LAST_NAME, " +
                "NIC,PASSPORT_NO,BIRTH_CERTIFICATE_NUMBER,DATE_OF_BIRTH,RELATIONSHIP,SPECIAL_REMARKS,MARRIAGE_DATE,MARRIAGE_CERTIFICATE_NUMBER,WORKING_COMPANY,CITY)" +
                " VALUES(@DependantTypeId,@EmployeeID,@FirstName,@LName,@DependantNIC,@DependantPassportNo, " +
                "@BirthCertificateNumber,@DateOfBirth,@RelationshipToEmp,@SpecialRemarks,@MDate,@MCertificateNo,@WorkingCompany,@DependantCity)";



            dbConnection.cmd.Parameters.AddWithValue("@DependantTypeId", dependant.DependantTypeId);
            dbConnection.cmd.Parameters.AddWithValue("@EmployeeID", dependant.EmpId);
            dbConnection.cmd.Parameters.AddWithValue("@FirstName", dependant.FirstName);
            dbConnection.cmd.Parameters.AddWithValue("@LName", dependant.LastName);
            dbConnection.cmd.Parameters.AddWithValue("@DependantNIC", dependant.DependantNIC);
            dbConnection.cmd.Parameters.AddWithValue("@DependantPassportNo", dependant.DependantPassportNo);
            dbConnection.cmd.Parameters.AddWithValue("@BirthCertificateNumber", dependant.BirthCertificateNumber);
            dbConnection.cmd.Parameters.AddWithValue("@DateOfBirth", dependant.Dob);
            dbConnection.cmd.Parameters.AddWithValue("@RelationshipToEmp", dependant.RelationshipToEmp);
            dbConnection.cmd.Parameters.AddWithValue("@SpecialRemarks", dependant.Remarks);
            dbConnection.cmd.Parameters.AddWithValue("@MDate", dependant.MarriageDate);
            dbConnection.cmd.Parameters.AddWithValue("@MCertificateNo", dependant.MarriageCertificateNo);
            dbConnection.cmd.Parameters.AddWithValue("@WorkingCompany", dependant.WorkingCompany);
            dbConnection.cmd.Parameters.AddWithValue("@DependantCity", dependant.City);

            dbConnection.cmd.ExecuteNonQuery();
            dbConnection.cmd.Parameters.Clear();
            return 1;
        }
    }
}

