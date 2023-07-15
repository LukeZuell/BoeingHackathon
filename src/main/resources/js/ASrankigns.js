function ageSelection() {
    let html = "";
    html = html + " <p>You have selected <b>Age</b>, you must now select an age bracket that you would like to compare across all LGA's.<p>"
    html = html + "          <div class='input-group mb-4'> "
    html = html + "            <select class='form-select' id='bracket' name='ageDrop'>"
    html = html + "              <option selected value='none' disabled hidden>Select Age Bracket</option>"
          
    let lowerBound = 0;
    let upperBound = 4;
    for (let ageId = 0; ageId < 14; ageId++){
    if (ageId < 13){
        html = html + "<option>" + lowerBound + "-" + upperBound + " years</option>";
    }
    else {
        html = html + "<option>" + lowerBound + "+</option>";
    }
    lowerBound = upperBound + 1;
    upperBound += 5;
    }


    html = html + "          </select>"              
    html = html + "        </div>"
    html = html + "        <div class='input-group mb-4'> "
    html = html + "          <select class='form-select' id='orderOn' name='orderByVal'>"
    html = html + "            <option selected value='none' disabled hidden>Select value to order by</option>"
    html = html + "            <option>LGA Code</option>"
    html = html + "            <option>LGA Name</option>"
    html = html + "            <option>Indigenous Total</option>"
    html = html + "            <option>Indigenous Proportion</option>"
    html = html + "            <option>Non-Indigenous Total</option>"
    html = html + "            <option>Non-Indigenous Proportion</option>"
    html = html + "          </select>"  
    html = html + "          <select class='form-select' id='orderBy' name='ascDesc'>"
    html = html + "            <option selected value='none' disabled hidden>Ascending or Descending</option>"
    html = html + "            <option>Ascending</option>"
    html = html + "            <option>Descending</option>"
    html = html + "          </select>"
    html = html + "          <select class='form-select' id='limit' name='limitResultsAge'>"
    html = html + "            <option selected value='none' disabled hidden>Limit results</option>"
    html = html + "            <option>View All</option>"
    html = html + "            <option>Top 10</option>"
    html = html + "            <option>Top 25</option>"
    html = html + "            <option>Top 50</option>"
    html = html + "           <option>Top 100</option>"
    html = html + "          <select>"
    html = html + "          <button class='btn btn-primary' onClick='outputRankingsAge()' type='button' id='textbutton'>Apply</button>"
    html = html + "        </div>"

    html = html + "        <div id='dataOutput'></div>"

    document.getElementById('filterSelect').innerHTML = html;
    document.activeElement.blur();
}

function schoolSelection(){
    let html = "";

    html = html + " <p>You have selected <b>School Completion</b>, you must now select a School Completion bracket that you would like to compare across all LGA's.<p>"
    html = html + "        <div class='input-group mb-4'>"
    html = html + "          <select class='form-select' id='bracket' name='schoolDrop'>"
    html = html + "            <option selected value='none' disabled hidden>Select School Completion Bracket</option>"
    html = html + "            <option>Did Not Go to School</option>"
    html = html + "            <option>Year 8 or below</option>"
    html = html + "            <option>Year 10 or equivalent</option>"
    html = html + "            <option>Year 12 or equivalent</option>"
    html = html + "          </select> "
    html = html + "        </div>"
    html = html + "        <div class='input-group mb-4'>  "
    html = html + "          <select class='form-select' id='orderOn' name='orderByValSchool'>"
    html = html + "            <option selected value='none' disabled hidden>Select value to order by</option>"
    html = html + "            <option>LGA Code</option>"
    html = html + "            <option>LGA Name</option>"
    html = html + "            <option>Indigenous Total</option>"
    html = html + "            <option>Indigenous Proportion</option>"
    html = html + "            <option>Non-Indigenous Total</option>"
    html = html + "           <option>Non-Indigenous Proportion</option>"
    html = html + "         </select>  "
    html = html + "          <select class='form-select' id='orderBy' name='ascDescSchool'>"
    html = html + "            <option selected value='none' disabled hidden>Ascending or Descending</option>"
    html = html + "            <option>Ascending</option>"
    html = html + "            <option>Descending</option>"
    html = html + "          </select>  "
    html = html + "          <select class='form-select' id='limit' name='limitResults'>"
    html = html + "            <option selected value='none' disabled hidden>Limit results</option>"
    html = html + "            <option>View All</option>"
    html = html + "            <option>Top 10</option>"
    html = html + "            <option>Top 25</option>"
    html = html + "            <option>Top 50</option>"
    html = html + "            <option>Top 100</option>"
    html = html + "          <select>"
    html = html + "          <button class='btn btn-primary'  onClick='outputRankingsSchool()' type='button' id='textbutton'>Apply</button> "
    html = html + "        </div>"

    html = html + "        <div id='dataOutput'></div>"

    document.getElementById('filterSelect').innerHTML = html;
    document.activeElement.blur();
}

function outputRankingsSchool() {
    var bracketS = document.getElementById('bracket');
    var bracket = bracketS.options[bracketS.selectedIndex].value;

    var orderOnS = document.getElementById('orderOn');
    var orderOn = orderOnS.options[orderOnS.selectedIndex].value;

    var orderByS = document.getElementById('orderBy');
    var orderBy = orderByS.options[orderByS.selectedIndex].value;

    var limitS = document.getElementById('limit');
    var limit = limitS.options[limitS.selectedIndex].value;


    $.ajax({
        url: "/page21Calcs.html",
        data: "bracket="+bracket+"&orderOn="+orderOn+"&orderBy="+orderBy+"&limit="+limit+"&type=School",
        success: function( result ) {
          let html = result;
          document.getElementById('dataOutput').innerHTML = html;
        }
    });
     
    document.activeElement.blur();
}

function outputRankingsAge() {
    var bracketS = document.getElementById('bracket');
    var bracket = bracketS.options[bracketS.selectedIndex].value;

    var orderOnS = document.getElementById('orderOn');
    var orderOn = orderOnS.options[orderOnS.selectedIndex].value;

    var orderByS = document.getElementById('orderBy');
    var orderBy = orderByS.options[orderByS.selectedIndex].value;

    var limitS = document.getElementById('limit');
    var limit = limitS.options[limitS.selectedIndex].value;


    $.ajax({
        url: "/page21Calcs.html",
        data: "bracket="+bracket+"&orderOn="+orderOn+"&orderBy="+orderBy+"&limit="+limit+"&type=Age",
        success: function( result ) {
          let html = result;
          document.getElementById('dataOutput').innerHTML = html;
        }
    });
     
    document.activeElement.blur();
    
}