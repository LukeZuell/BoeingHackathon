package app;
import io.javalin.http.Context;
import io.javalin.http.Handler;

public class submit implements Handler{
    public static final String URL = "/submit.html";
    @Override
    public void handle(Context context) throws Exception {
        // Create a simple HTML webpage in a String
        String html = "<html>";

        // Add some Head information
        html = html + "<head>" + "<title>Submit</title>";

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
        // html = html + """
                
        //     <nav class='navbar navbar-expand-lg navbar-light bg-light'>
        //     <div class='container-fluid'>
        //       <a class='navbar-brand' href='#>Navbar</a>
              
        //       <div class='collapse navbar-collapse' id='navbarSupportedContent'>
        //         <ul class='navbar-nav me-auto mb-2 mb-lg-0'>
        //           <li class='nav-item'>
        //             <a class='nav-link' href='/'>Homepage</a>
        //           </li>
        //           <li class='nav-item'>
        //             <a class='nav-link' href='/results.html'>Results</a>
        //           </li>
        //           <li class='nav-item'>
        //             <a class='nav-link' href='/submit.html'>Submit</a>
        //           </li>
        //         </ul>
        //       </div>
        //     </div>
        //   </nav>
        
        // """;
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

        // Add header content block
        html = html + """
                <div class='header'>
                    <h1>Boeing Data Base</h1>
                </div>
            """;


        // Look up some information from JDBC
        // First we need to use your JDBCConnection class
        JDBCConnection jdbc = new JDBCConnection();

        html += """
            <div class='container'>
            <form method='post' enctype='multipart/form-data'>
            <label for='file'>Choose a json file to upload</label>
            <input type='file' id='fileInput' name='fileInput' accept='.json'>
            <button type='submit'>Upload</button>
            </form>
                """;
        // Close Content div
        html = html + "</div>";
        html = html + "</div>";

        

        // Footer
        html = html + """
            <footer class='mt-auto'>
            <div class="row">
                <div class="col">
                COSC2803 - Group 55 Studio Project
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
