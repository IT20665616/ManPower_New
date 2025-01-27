﻿using ManPowerCore.Common;
using ManPowerCore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManPowerCore.Infrastructure
{
    public interface CareerKeyTestResultsDAO
    {
        int Save(CareerKeyTestResults careerKeyTestResults, DBConnection dbConnection);
        int Update(CareerKeyTestResults careerKeyTestResults, DBConnection dbConnection);
        int Delete(int id, DBConnection dbConnection);
        List<CareerKeyTestResults> GetAllCareerKeyTestResults(bool with0, DBConnection dbConnection);
        CareerKeyTestResults GetCareerKeyTestResults(int id, DBConnection dbConnection);
    }

    public class CareerKeyTestResultsDAOSqlImpl : CareerKeyTestResultsDAO
    {
        public int Save(CareerKeyTestResults careerKeyTestResults, DBConnection dbConnection)
        {
            int output = 0;

            dbConnection.cmd.CommandType = System.Data.CommandType.Text;
            dbConnection.cmd.Parameters.Clear();
            dbConnection.cmd.CommandText = "INSERT INTO Career_Key_Test_Results (Beneficiary_Id, Created_Date, R, I, A, S, E, C, Provided_Guidance) " +
                "VALUES (@BeneficiaryId, @Date, @R, @I, @A, @S, @E, @C, @Guidence) ";

            dbConnection.cmd.Parameters.AddWithValue("@BeneficiaryId", careerKeyTestResults.BeneficiaryId);
            dbConnection.cmd.Parameters.AddWithValue("@Date", careerKeyTestResults.Date);
            dbConnection.cmd.Parameters.AddWithValue("@R", careerKeyTestResults.R);
            dbConnection.cmd.Parameters.AddWithValue("@I", careerKeyTestResults.I);
            dbConnection.cmd.Parameters.AddWithValue("@A", careerKeyTestResults.A);
            dbConnection.cmd.Parameters.AddWithValue("@S", careerKeyTestResults.S);
            dbConnection.cmd.Parameters.AddWithValue("@E", careerKeyTestResults.E);
            dbConnection.cmd.Parameters.AddWithValue("@C", careerKeyTestResults.C);
            dbConnection.cmd.Parameters.AddWithValue("@Guidence", careerKeyTestResults.Guidence);

            output = Convert.ToInt32(dbConnection.cmd.ExecuteScalar());

            return output;
        }

        public int Update(CareerKeyTestResults careerKeyTestResults, DBConnection dbConnection)
        {
            int output = 0;

            dbConnection.cmd.CommandType = System.Data.CommandType.Text;
            dbConnection.cmd.Parameters.Clear();
            dbConnection.cmd.CommandText = "UPDATE Career_Key_Test_Results SET Created_Date = @Date, Beneficiary_Id = @BeneficiaryId, R = @R, I = @I, A = @A, S = @S, E = @E, C = @C, " +
                "Provided_Guidance = @Guidence WHERE ID = @Id";

            dbConnection.cmd.Parameters.AddWithValue("@Id", careerKeyTestResults.Id);
            dbConnection.cmd.Parameters.AddWithValue("@BeneficiaryId", careerKeyTestResults.BeneficiaryId);
            dbConnection.cmd.Parameters.AddWithValue("@Date", careerKeyTestResults.Date);
            dbConnection.cmd.Parameters.AddWithValue("@R", careerKeyTestResults.R);
            dbConnection.cmd.Parameters.AddWithValue("@I", careerKeyTestResults.I);
            dbConnection.cmd.Parameters.AddWithValue("@A", careerKeyTestResults.A);
            dbConnection.cmd.Parameters.AddWithValue("@S", careerKeyTestResults.S);
            dbConnection.cmd.Parameters.AddWithValue("@E", careerKeyTestResults.E);
            dbConnection.cmd.Parameters.AddWithValue("@C", careerKeyTestResults.C);
            dbConnection.cmd.Parameters.AddWithValue("@Guidence", careerKeyTestResults.Guidence);

            output = Convert.ToInt32(dbConnection.cmd.ExecuteScalar());

            return output;
        }

        public int Delete(int id, DBConnection dbConnection)
        {
            int output = 0;

            dbConnection.cmd.CommandType = System.Data.CommandType.Text;
            dbConnection.cmd.CommandText = "UPDATE Career_Key_Test_Results SET Is_Active = 0 WHERE Id = " + id;

            output = Convert.ToInt32(dbConnection.cmd.ExecuteScalar());

            return output;
        }

        public List<CareerKeyTestResults> GetAllCareerKeyTestResults(bool with0, DBConnection dbConnection)
        {
            if (dbConnection.dr != null)
                dbConnection.dr.Close();

            if (with0)
                dbConnection.cmd.CommandText = "SELECT * FROM Career_Key_Test_Results";
            else
                dbConnection.cmd.CommandText = "SELECT * FROM Career_Key_Test_Results WHERE Is_Active = 1";

            dbConnection.dr = dbConnection.cmd.ExecuteReader();
            DataAccessObject dataAccessObject = new DataAccessObject();
            return dataAccessObject.ReadCollection<CareerKeyTestResults>(dbConnection.dr);
        }

        public CareerKeyTestResults GetCareerKeyTestResults(int id, DBConnection dbConnection)
        {
            if (dbConnection.dr != null)
                dbConnection.dr.Close();

            dbConnection.cmd.CommandText = "SELECT * FROM Career_Key_Test_Results WHERE Id = " + id;

            dbConnection.dr = dbConnection.cmd.ExecuteReader();
            DataAccessObject dataAccessObject = new DataAccessObject();
            return dataAccessObject.GetSingleOject<CareerKeyTestResults>(dbConnection.dr);
        }

    }
}
