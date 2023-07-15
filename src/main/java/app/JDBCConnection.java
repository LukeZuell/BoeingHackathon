package app;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.IntToDoubleFunction;

import org.eclipse.jetty.io.FillInterest;
import org.eclipse.jetty.util.HttpCookieStore.Empty;

import java.io.FilenameFilter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Class for Managing the JDBC Connection to a SQLLite Database.
 * Allows SQL queries to be used with the SQLLite Databse in Java.
 *
 * @author Timothy Wiley, 2022. email: timothy.wiley@rmit.edu.au
 * @author Santha Sumanasekara, 2021. email: santha.sumanasekara@rmit.edu.au
 */
public class JDBCConnection {

    // Name of database file (contained in database folder)
    private static final String DATABASE = "jdbc:sqlite:database/planes.db";

    //private static final String DATABASE = "jdbc:sqlite:cosc2803-apr22-studio-project-team-055-cosc2803-apr22/database/CurrentDataBase.db";
// //
    // If you are using the Homelessness data set replace this with the below
    //private static final String DATABASE = "jdbc:sqlite:database/homelessness.db";

    /**
     * This creates a JDBC Object so we can keep talking to the database
     */
    public JDBCConnection() {
        System.out.println("Created JDBC Connection Object");
    }

    // Labour output 
    public ArrayList<runDetails> getRunDetails() {
        ArrayList<runDetails> result = new ArrayList<runDetails>();
        Connection connection = null;

        try {
            connection = DriverManager.getConnection(DATABASE);
            Statement statement = connection.createStatement();
            statement.setQueryTimeout(30);

            String query = "";
            query = "SELECT * FROM RunDetails;";

            ResultSet results = statement.executeQuery(query);

            while (results.next()) {
                // Lookup the columns we need
                String LoadNumber = results.getString("LoadNumber");
                String FileName = results.getString("FileName");
                String FilePath = results.getString("FilePath");
                String Equipment = results.getString("Equipment");
                String RunRecipe = results.getString("RunRecipe");
                String RunStart = results.getString("RunStart");
                String RunEnd = results.getString("RunEnd");
                String RunDuration = results.getString("RunDuration");
                String FileLength = results.getString("FileLength");
                String OperatorName = results.getString("OperatorName");
                String ExportControl = results.getString("ExportControl");

                // Create a LGA Object
                runDetails run = new runDetails(LoadNumber, FileName, FilePath, Equipment, RunRecipe, RunStart, RunEnd, RunDuration, FileLength, OperatorName, ExportControl);

                // Add the lga object to the array
                result.add(run);
            }
            statement.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return result;
    }

    public ArrayList<partInformation> getPartInformations(String loadString) {
        ArrayList<partInformation> result = new ArrayList<partInformation>();
        Connection connection = null;

        try {
            connection = DriverManager.getConnection(DATABASE);
            Statement statement = connection.createStatement();
            statement.setQueryTimeout(30);

            String query = "";
            query = "select * from PartInformation where LoadNumber = '"+loadString+"';";

            ResultSet results = statement.executeQuery(query);

            while (results.next()) {
                // Lookup the columns we need
                String Index = results.getString("EntryNumber");
                String WorkOrder = results.getString("WorkOrder");
                String PartNumber = results.getString("PartNumber");
                String PartDescription = results.getString("PartDescription");
                String ToolLocation = results.getString("ToolLocation");
                String Comment1 = results.getString("Comment1");
                String Comment2 = results.getString("Comment2");
                String Comment3 = results.getString("Comment3");
                // Create a LGA Object
                partInformation part = new partInformation(Index, WorkOrder, PartNumber, PartDescription, ToolLocation, Comment1, Comment2, Comment3);

                // Add the lga object to the array
                result.add(part);
            }
            statement.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                System.err.println(e.getMessage());
            }
        }
        return result;
    }


    




}


