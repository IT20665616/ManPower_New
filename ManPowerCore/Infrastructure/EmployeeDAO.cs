﻿using ManPowerCore.Common;
using ManPowerCore.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManPowerCore.Infrastructure
{
    public interface EmployeeDAO
    {
        List<Employee> GetAllEmployee(DBConnection dbConnection);

        Employee GetEmployeeById(int id, DBConnection dbConnection);

        int SaveEmployee(Employee emp, DBConnection dbConnection);

        //int UpdateEmployee(Employee emp, DBConnection dbConnection);
    }

    public class EmployeeDAOImpl : EmployeeDAO
    {
        public int SaveEmployee(Employee emp, DBConnection dbConnection)
        {
            dbConnection.cmd.CommandType = System.Data.CommandType.Text;
            dbConnection.cmd.Parameters.Clear();
            dbConnection.cmd.CommandText = "INSERT INTO EMPLOYEE(Religion_Id,Ethnicity_Id,NIC,NIC_Issue_Date,Passport_Number" +
                                            ",Initial,Last_Name,Name_Denote_By_Initial,Gender,Date_Of_Birth" +
                                            ",Marital_Status,Supervisor_Id,Manager_Id,DSDivision_Id,District_Id,Unit_Type) " +

                                            "VALUES(@ReligionId,@EthnicityId,@EmployeeNIC,@NicIssueDate,@EmployeePassportNumber " +
                                            ", @EmpInitials,@LastName,@NameWithInitials,@EmpGender,@DOB " +
                                            ", @MaritalStatus,@SupervisorId,@ManagerId,@DSDivisionId,@DistrictId,@UnitType) SELECT SCOPE_IDENTITY() ";



            dbConnection.cmd.Parameters.AddWithValue("@ReligionId", emp.ReligionId);
            dbConnection.cmd.Parameters.AddWithValue("@EthnicityId", emp.EthnicityId);
            dbConnection.cmd.Parameters.AddWithValue("@EmployeeNIC", emp.EmployeeNIC);
            dbConnection.cmd.Parameters.AddWithValue("@NicIssueDate", emp.NicIssueDate);
            dbConnection.cmd.Parameters.AddWithValue("@EmployeePassportNumber", emp.EmployeePassportNumber);
            dbConnection.cmd.Parameters.AddWithValue("@MaritalStatus", emp.MaritalStatus);
            dbConnection.cmd.Parameters.AddWithValue("@SupervisorId", emp.SupervisorId);
            dbConnection.cmd.Parameters.AddWithValue("@ManagerId", emp.ManagerId);
            dbConnection.cmd.Parameters.AddWithValue("@EmpInitials", emp.EmpInitials);
            dbConnection.cmd.Parameters.AddWithValue("@LastName", emp.LastName);
            dbConnection.cmd.Parameters.AddWithValue("@NameWithInitials", emp.NameWithInitials);
            dbConnection.cmd.Parameters.AddWithValue("@EmpGender", emp.EmpGender);
            dbConnection.cmd.Parameters.AddWithValue("@DOB", emp.DOB);
            dbConnection.cmd.Parameters.AddWithValue("@DSDivisionId", emp.DSDivisionId);
            dbConnection.cmd.Parameters.AddWithValue("@DistrictId", emp.DistrictId);
            dbConnection.cmd.Parameters.AddWithValue("@UnitType", emp.UnitType);

            //dbConnection.cmd.CommandText = "INSERT INTO EMPLOYEE(REIGION_ID,ETHNICITY_ID,NIC,NIC_ISSUE_DATE,PASSPORT_NUMBER" +
            //                                ",LEAVE_NUMBER,PERMANENT_ADDRESS,TELEPHONE,FAX,MOBILE,PERSONA_EMAIL,PERSONA_FILE_NUMBER,APPOINTMENT_LETTER_NUMBER" +
            //                                ",SERVICE_TYPE,EMPLOYEE_NUMBER,INITIAL,LAST_NAME,NAME_DENOTE_BY_INITIAL,GENDER,DATE_OF_BIRTH,RETIREMENT_DATE" +
            //                                ",PLACE_OF_BIRTH,MARITAL_STATUS,SUPERVISOR_ID,MANAGER_ID) " +

            //                                "VALUES(@ReligionId,@EthnicityId,@EmployeeNIC,@NicIssueDate,@EmployeePassportNumber,@leaveNumber " +
            //                                ", @Adress,@TelephoneNumber,@EmpFax,@empMobile,@Email,@FileNumber,@AppointmentLetterNumber " +
            //                                ", @ServiceType,@EmpNumber,@EmpInitials,@LastName,@NameWithInitials,@EmpGender,@DOB " +
            //                                ", @RetirementDate,@PlaceOfBirth,@MaritalStatus,@SupervisorId,@ManagerId) SELECT SCOPE_IDENTITY() ";


            //dbConnection.cmd.Parameters.AddWithValue("@leaveNumber", emp.leaveNumber);
            //dbConnection.cmd.Parameters.AddWithValue("@Adress", emp.Adress);
            //dbConnection.cmd.Parameters.AddWithValue("@TelephoneNumber", emp.TelephoneNumber);
            //dbConnection.cmd.Parameters.AddWithValue("@EmpFax", emp.EmpFax);
            //dbConnection.cmd.Parameters.AddWithValue("@empMobile", emp.empMobile);
            //dbConnection.cmd.Parameters.AddWithValue("@Email", emp.Email);
            //dbConnection.cmd.Parameters.AddWithValue("@FileNumber", emp.FileNumber);
            //dbConnection.cmd.Parameters.AddWithValue("@AppointmentLetterNumber", emp.AppointmentLetterNumber);
            //dbConnection.cmd.Parameters.AddWithValue("@ServiceType", emp.ServiceType);
            //dbConnection.cmd.Parameters.AddWithValue("@EmpNumber", emp.EmpNumber);
            //dbConnection.cmd.Parameters.AddWithValue("@RetirementDate", emp.RetirementDate);
            //dbConnection.cmd.Parameters.AddWithValue("@PlaceOfBirth", emp.PlaceOfBirth);
            //dbConnection.cmd.Parameters.AddWithValue("@MaritalStatus", emp.MaritalStatus);
            //dbConnection.cmd.Parameters.AddWithValue("@SupervisorId", emp.SupervisorId);
            //dbConnection.cmd.Parameters.AddWithValue("@ManagerId", emp.ManagerId);

            int result = Convert.ToInt32(dbConnection.cmd.ExecuteScalar());
            return result;
        }

        //public int UpdateProgramType(ProgramType programType, DBConnection dbConnection)
        //{
        //    if (dbConnection.dr != null)
        //        dbConnection.dr.Close();

        //    dbConnection.cmd.CommandText = "UPDATE PROGRAM_TYPE SET NAME = @ProgramTypeName, IS_ACTIVE = @IsActive WHERE ID = @ProgramTypeId ";


        //    dbConnection.cmd.Parameters.AddWithValue("@ProgramTypeId", programType.ProgramTypeId);
        //    dbConnection.cmd.Parameters.AddWithValue("@ProgramTypeName", programType.ProgramTypeName);
        //    dbConnection.cmd.Parameters.AddWithValue("@IsActive", programType.IsActive);


        //    return dbConnection.cmd.ExecuteNonQuery();
        //}

        public List<Employee> GetAllEmployee(DBConnection dbConnection)
        {
            if (dbConnection.dr != null)
                dbConnection.dr.Close();

            dbConnection.cmd.CommandText = "SELECT * FROM Employee ";

            dbConnection.dr = dbConnection.cmd.ExecuteReader();
            DataAccessObject dataAccessObject = new DataAccessObject();
            return dataAccessObject.ReadCollection<Employee>(dbConnection.dr);

        }

        public Employee GetEmployeeById(int id, DBConnection dbConnection)
        {
            if (dbConnection.dr != null)
                dbConnection.dr.Close();

            dbConnection.cmd.CommandText = "SELECT * FROM Employee WHERE ID=" + id + " ";

            dbConnection.dr = dbConnection.cmd.ExecuteReader();
            DataAccessObject dataAccessObject = new DataAccessObject();
            return dataAccessObject.GetSingleOject<Employee>(dbConnection.dr);
        }


    }
}
