package app;
import java.util.ArrayList;

import io.javalin.http.Context;
import io.javalin.http.Handler;

public class fileview implements Handler{
    public static final String URL = "/fileview.html";
    @Override
    public void handle(Context context) throws Exception {
        // Create a simple HTML webpage in a String
        String html = "<html>";

        // Add some Head information
        html = html + "<head>" + "<title>File View</title>";

        // Add some CSS (external file)
        
        // add bootstrap
        html = html + """
                <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css'
                rel='stylesheet'
                integrity='sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC'
                crossorigin='anonymous'>
            """;

        html = html + "<link rel='stylesheet' type='text/css' href='common.css' />";

        html = html + "<script type='text/javascript' src='jquery.js'></script>";
        html = html + "<script type='text/javascript' src='LocationUI.js'></script>";

        html = html + "</head>";

        // Add the body
        html = html + "<body class='d-flex flex-column min-vh-100'>";

        // Navbar
        html = html + """
                
            <nav class='navbar navbar-expand-lg navbar-light bg-light'>
            <div class='container-fluid'>
              <a class='navbar-brand' href='#>Navbar</a>
              
              <div class='collapse navbar-collapse' id='navbarSupportedContent'>
                <ul class='navbar-nav me-auto mb-2 mb-lg-0'>
                  <li class='nav-item'>
                    <a class='nav-link' href='/'><img src='boeing_logo.png'></a>
                  </li>
                  <li class='nav-item'>
                    <a class='nav-link' href='/'>Home</a>
                  </li>
                  <li class='nav-item'>
                    <a class='nav-link' href='/results.html'>Results</a>
                  </li>
                  <li class='nav-item'>
                    <a class='nav-link' href='/submit.html'>Submit</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
        
        """;


        JDBCConnection jdbc = new JDBCConnection();
        ArrayList<runDetails> runData = jdbc.getRunDetails();
        //use load num AC4 - 2502
        runDetails run = runData.get(0);
        ArrayList<partInformation> parts = jdbc.getPartInformations(run.getLoadNumber());
        html = html + """
            <div class="split left">
            <div class="centered">
                <h2>Run Details</h2>
                <ul>
                """;
        // creat list items
          html += "<li>LoadNumber="+run.getLoadNumber()+"</li>";
          html += "<li>FileName="+run.getFileName()+"</li>";
          html += "<li>FilePath="+run.getFilePath()+"</li>";
          html += "<li>Equipment="+run.getEquipment()+"</li>";
          html += "<li>RunRecipe="+run.getRunRecipe()+"</li>";
          html += "<li>RunStart="+run.getRunStart()+"</li>";
          html += "<li>RunEnd="+run.getRunEnd()+"</li>";
          html += "<li>RunDuration="+run.getRunDuration()+"</li>";
          html += "<li>FileLength="+run.getFileLength()+"</li>";
          html += "<li>OperatorName="+run.getOperatorName()+"</li>";
          html += "<li>ExportControl="+run.getExportControl()+"</li>";

        html += """
                </ul>
            </div>
            </div>

            <div class="split right">
            <div class="centered"><ul>
          """;
        // create a ul for each part
        for (int i=0; i < parts.size(); i++) {
          partInformation part = parts.get(i);
          html += "Part:";
          html += "<li>Index="+part.getIndex()+"</li>";
          html += "<li>WorkOrder="+part.getWorkOrder()+"</li>";
          html += "<li>PartNum="+part.getPartNumber()+"</li>";
          html += "<li>PartDes="+part.getPartDescription()+"</li>";
          html += "<li>ToolLocation="+part.getToolLocation()+"</li>";
          html += "<li>Comment1="+part.getComment1()+"</li>";
          html += "<li>Comment2="+part.getComment2()+"</li>";
          html += "<li>Comment3="+part.getComment3()+"</li>";
        }
        html += """
          </ul>
            </div>
            </div> 
            """;
        
        // Footer
        html = html + """
            <footer class='mt-auto'>
            <div class="row">
                <div class="col"><center>
                Boeing Proprietary - Copyright 2022 Boeing Aerostructures Australia - All Rights Reserved - Third Party Disclosure Requires Written Approval
                </div>
                """;

        html = html + """
                </div>
            """;

        // Adding the script for Bootstrap V5
        html = html + """
                <script src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js'
                integrity='sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM'
                crossorigin='anonymous'>
                </script>
            """;
        ;

        // Finish the HTML webpage
        html = html + "</body>";

        html = html + "</html>";

        // DO NOT MODIFY THIS
        // Makes Javalin render the webpage
        context.html(html);
    }
}
