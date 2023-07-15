package app;

import java.util.ArrayList;

import io.javalin.http.Context;
import io.javalin.http.Handler;

/**
 * Example Index HTML class using Javalin
 * <p>
 * Generate a static HTML page using Javalin
 * by writing the raw HTML into a Java String object
 *
 * @author Timothy Wiley, 2021. email: timothy.wiley@rmit.edu.au
 * @author Santha Sumanasekara, 2021. email: santha.sumanasekara@rmit.edu.au
 */
public class MainPage implements Handler {

  // URL of this page relative to http://localhost:7001/
  public static final String URL = "/";

  public String userInput = "";
  public String lga_drop = "";

  @Override
  public void handle(Context context) throws Exception {
    // Create a simple HTML webpage in a String
    String html = "<html>";

    // Add some Head information
    html = html + "<head>" + "<title>Subtask 3.2</title>";

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
                  <li>
                    <button style='align-self: flex-end' type="button">Login</button>
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

    // Add Div for page Content
    html = html + "<div class='container'>";
    html = html
        + """
                <p>This is a basic search function for the sample database provided by Boeing for individual autoclave cures.<br>
                    <ol>
                      <li>Depending on what you are looking for, you can utilize the different dropdowns to customize the search.</li>
                      <li>This can be for either be for the 'Run Details' or 'Part Information'</li>
                    </ol>
                </p>

            """;

    // Look up some information from JDBC
    // First we need to use your JDBCConnection class
    JDBCConnection jdbc = new JDBCConnection();

    html = html
        + """
                      </form>
                      <table>
                          <tr>
                              <td>
                                  <button class="dropdown-btn" type="button">Run Details Filter</button>
                                  <div class="dropdown-container">
                                      <table>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" value="FileName" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      FileName
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox0" style="display: none;" placeholder="ABC-1234.DAT">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" value="LoadNumber" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      LoadNumber
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox1" style="display: none;" placeholder="1234">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" value="EquipmentName" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      EquipmentName
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox2" style="display: none;" placeholder="Autoclave #1">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" , value="RunRecipe" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      RunRecipe
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox3" style="display: none;" placeholder="Plane Wing #1">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" , value="RunStartTime" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      RunStartTime
                                                  </label>

                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox4" style="display: none;" placeholder="2022-10-3T12:11:30">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" , value="RunEndTime" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      RunEndTime
                                                  </label>

                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox5" style="display: none;" placeholder="2022-10-3T14:11:30">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" , value="RunDuration" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      RunDuration
                                                  </label>

                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox6" style="display: none;" placeholder="123.45">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" , value="OpName" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      Operator Name
                                                  </label>

                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox7" style="display: none;" placeholder="John">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="RunDetailsResult" , value="ExpControl" id="checkBox"
                                                          onChange="checkBoxes()">
                                                      ExpControl
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox8" style="display: none;" placeholder="AU ABC">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                              <a class='nav-link' href='/results.html'><button type="button" onclick="displayRadioValueRun()">
                                              Submit
                                              </button></a>
                                              </td>
                                          </tr>
                                      </table>
                                  </div>
                                  <button class="dropdown-btn" type="button">Part Information</button>
                                  <div class="dropdown-container">
                                      <table>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" value="WorkOrder" id="checkBox" onChange="checkBoxes()">
                                                      Entry/Index Number
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox9" style="display: none;" placeholder="1">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" value="WorkOrder" id="checkBox" onChange="checkBoxes()">
                                                      Work Order
                                                  </label>
                                                </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox10" style="display: none;" placeholder="123456">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" name="PartInfoResult" value="PartNumber" id="checkBox" onChange="checkBoxes()">
                                                      Part Number
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox11" style="display: none;" placeholder="ABCD-123">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" value="ToolLocation" id="checkBox" onChange="checkBoxes()">
                                                      Tool Location
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox12" style="display: none;" placeholder="A=12">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" value="PartTC" id="checkBox" onChange="checkBoxes()">
                                                      Part TC
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox13" style="display: none;" placeholder="ABC12">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" value="PartProbes" id="checkBox" onChange="checkBoxes()">
                                                      Part Probes
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox14" style="display: none; " placeholder="ABC12">
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <label class="checkbox">
                                                      <input type="checkbox" value="OtherSensors" id="checkBox" onChange="checkBoxes()">
                                                      Other Sensors
                                                  </label>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td>
                                                  <input id="textBox15" style="display: none;" placeholder="ABC12">
                                              </td>
                                          </tr>
                                      </table>
                                      <a class='nav-link' href='/results.html'><button type="button" onclick="displayRadioValueRun()">
                                              Submit
                                              </button></a>
                                  </div>
                              </td>
                          </tr>
                      </table>
                      </div>
                      </div>

                      <div id="result"></div>
            """;

    html = html + "  <div id='block'></div>";
    html = html + "  <div id='test'></div>";
    html = html + "  <div id='demo'></div>";
    html = html + "  <div id='rangeOutput'></div>";
    html = html + "  <div id='selectedLga' style='display: none;'></div>";

    // Close Content div
    html = html + "</div>";
    html = html + "</div>";

    // Footer
    html = html
        + """
            <footer class='mt-auto'>
              <div class="row">
                <div class="col"><center>
                Boeing Proprietary - Copyright 2022 Boeing Aerostructures Australia - All Rights Reserved - Third Party Disclosure Requires Written Approval
                </center></div>
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
    html = html
        + """
                <script>
                /* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
                var dropdown = document.getElementsByClassName("dropdown-btn");
                var i;

                for (i = 0; i < dropdown.length; i++) {
                  dropdown[i].addEventListener("click", function() {

                    var dropdownContent = this.nextElementSibling;
                    if (dropdownContent.style.display === "block") {
                      dropdownContent.style.display = "none";
                    } else {
                      dropdownContent.style.display = "block";
                    }
                  });
                }
            </script>
            <script>

                function checkBoxes() {

                  var reqs = document.querySelectorAll('[id^=checkBox]');

                  let index  = 0
                  for (var i in reqs) {
                      if (reqs[i].checked == true) {
                        document.getElementById('textBox' + index).style = ''
                        index ++
                      }
                      else{
                        document.getElementById('textBox' + index).style = 'display: none;'
                        index ++
                      }
                  }

                }

                function displayRadioValueRun() {
                    var ele = document.getElementsByName('RunDetailsResult');

                    for(i = 0; i < ele.length; i++) {
                        if(ele[i].checked)
                        document.getElementById("result").innerHTML
                                = "Type: "+ele[i].value;
                    }
                }
            </script>
            <script>
                function displayRadioValuePart() {
                    var ele = document.getElementsByName('PartInfoResult');

                    for(i = 0; i < ele.length; i++) {
                        if(ele[i].checked)
                        document.getElementById("result").innerHTML
                                = "Type: "+ele[i].value;
                    }
                }
            </script>
                  """;
    // Finish the HTML webpage
    html = html + "</body>";

    html = html + "</html>";

    // DO NOT MODIFY THIS
    // Makes Javalin render the webpage
    context.html(html);
  }

}
