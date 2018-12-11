using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

// Namespaces to enable database access
using System.Data.OleDb;
using System.Net;
using System.Data;
using PayrollSystem;

public class clsDataLayer
    {
        // This function gets the user activity from the tblUserActivity
        public static dsUserActivity GetUserActivity(string Database)
        {
            //  New instances of dsUserActivity, OleDbConnection and OleDbAdapter
            dsUserActivity DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            // Connection string using OleDbConnection
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);
            // Select statement, retrieves all data from tblUserActivity
            sqlDA = new OleDbDataAdapter("select * from tblUserActivity", sqlConn);
            // new dsUserAvtivity instantiated
            DS = new dsUserActivity();
            // tblUserActivity data assigned 
            sqlDA.Fill(DS.tblUserActivity);
            // data is returned
            return DS;
        }
        // This function saves the user activity
        public static void SaveUserActivity(string Database, string FormAccessed)
        {
            // connection string
            OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            conn.Open();
            OleDbCommand command = conn.CreateCommand();
            string strSQL;
            strSQL = "Insert into tblUserActivity (UserIP, FormAccessed) values ('" +
            GetIP4Address() + "', '" + FormAccessed + "')";
            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;
            command.ExecuteNonQuery();
            conn.Close();
        }
        // This function gets the IP Address
        public static string GetIP4Address()
        {
            string IP4Address = string.Empty;
            foreach (IPAddress IPA in
            Dns.GetHostAddresses(HttpContext.Current.Request.UserHostAddress))
            {
                if (IPA.AddressFamily.ToString() == "InterNetwork")
                {
                    IP4Address = IPA.ToString();
                    break;
                }
            }
            if (IP4Address != string.Empty)
            {
                return IP4Address;
            }
            foreach (IPAddress IPA in Dns.GetHostAddresses(Dns.GetHostName()))
            {
                if (IPA.AddressFamily.ToString() == "InterNetwork")
                {
                    IP4Address = IPA.ToString();
                    break;
                }
            }
            return IP4Address;
        }

        // This function saves the personnel data
        public static bool SavePersonnel(string Database, string FirstName, string LastName,
        string PayRate, string StartDate, string EndDate)
        {
            bool recordSaved;
            // transaction object
            OleDbTransaction myTransaction = null;
            try
            {
                // connect to DB
                OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
                "Data Source=" + Database);
                conn.Open();
                OleDbCommand command = conn.CreateCommand();
                string strSQL;
                // begin transaction
                myTransaction = conn.BeginTransaction();
                command.Transaction = myTransaction;
                // insert first and last name in to tblPersonnel
                strSQL = "Insert into tblPersonnel " +
                "(FirstName, LastName) values ('" +
                FirstName + "', '" + LastName + "')";
                // set sql string
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                // send query
                command.ExecuteNonQuery();
                // commit the transaction
                myTransaction.Commit();
                // insert payrate startdate and enddate in to tblPersonnel
                strSQL = "Update tblPersonnel " +
                "Set PayRate=" + PayRate + ", " +
                "StartDate='" + StartDate + "', " +
                "EndDate='" + EndDate + "' " +
                "Where ID=(Select Max(ID) From tblPersonnel)";
                // set sql string
                command.CommandType = CommandType.Text;
                command.CommandText = strSQL;
                // send query
                command.ExecuteNonQuery();
                // end db connection
                conn.Close();
                recordSaved = true;
            }
            catch (Exception ex)
            {
                // rollback transaction if exception exists
                myTransaction.Rollback();
                recordSaved = false;
            }
            return recordSaved;
        }

    // This function gets the user activity from the tblPersonnel
    public static clsPersonnel GetPersonnel(string Database, string strSearch)
        {
        //  New instances of dsUserActivity, OleDbConnection and OleDbAdapter
            clsPersonnel DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            // Connection string using OleDbConnection
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" + "Data Source=" + Database);
            // Select statement, retrieves all data from tblPersonnel
            if (strSearch == null || strSearch.Trim() == "")
            {
                sqlDA = new OleDbDataAdapter("select * from tblPersonnel", sqlConn);
            }
            else
            {
                sqlDA = new OleDbDataAdapter("select * from tblPersonnel where LastName = '" + strSearch + "'", sqlConn);
            }
            // new dsUserAvtivity instantiated
            DS = new clsPersonnel();
            // tblUserActivity data assigned 
            sqlDA.Fill(DS.tblPersonnel);
            // data is returned
            return DS;
        }

        // This function verifies a user in the tblUser table
        public static dsUser VerifyUser(string Database, string UserName, string UserPassword)
        {
            // create new instance of dsUser, Connection and adapter
            dsUser DS;
            OleDbConnection sqlConn;
            OleDbDataAdapter sqlDA;
            // create new connection 
            sqlConn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            // set the data adapter
            sqlDA = new OleDbDataAdapter("Select SecurityLevel from tblUserLogin " +
            "where UserName like '" + UserName + "' " +
            "and UserPassword like '" + UserPassword + "'", sqlConn);
            // instantiate DS 
            DS = new dsUser();
            // populate the data
            sqlDA.Fill(DS.tblUserLogin);
            // ds returned
            return DS;
        }

        public static bool SaveUser(string Database, string UserName, string Password,
        string SecurityLevel)
        {
        bool recordSaved;
        // transaction object
        OleDbTransaction myTransaction = null;
        try
        {
            // connect to DB
            OleDbConnection conn = new OleDbConnection("PROVIDER=Microsoft.ACE.OLEDB.12.0;" +
            "Data Source=" + Database);
            conn.Open();
            OleDbCommand command = conn.CreateCommand();
            string strSQL;
            // begin transaction
            myTransaction = conn.BeginTransaction();
            command.Transaction = myTransaction;
            // insert username and password in to tblUserLogin
            strSQL = "Insert into tblUserLogin " +
            "(UserName, UserPassword, SecurityLevel) values ('" +
            UserName + "', '" + Password + "' , '" + SecurityLevel + "' )";

            // set sql string
            command.CommandType = CommandType.Text;
            command.CommandText = strSQL;
            // send query
            command.ExecuteNonQuery();
            // commit the transaction
            myTransaction.Commit();
            // end db connection
            conn.Close();
            recordSaved = true;
        }
        catch (Exception ex)
        {
            // rollback transaction if exception exists
            myTransaction.Rollback();
            recordSaved = false;
        }
        return recordSaved;
    }

    public clsDataLayer()
        {
            //constructor
        }
    }


