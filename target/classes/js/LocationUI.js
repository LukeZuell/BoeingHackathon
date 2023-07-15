
function optionsOutput() {
    var lga = document.getElementById('input').value;
    
    let html = "";
    html = html + "  <p>You have selected <b>"+ lga +"</b></p>"
    html = html + "  <p>Please select whether you would like to view similar LGAs based on proximity or Socio-Econmic similarity</p>"
    html = html + "  <div class='btn-group d-flex' role='group' aria-label='Basic example'>"
    html = html + "    <button type='button' id='locBtn' class='btn btn-secondary' onclick='proximityContent()'>Proximity</button>"
    html = html + "    <button type='button' id='socioBtn' class='btn btn-secondary' onclick='socioContent()'>Socio-Economic Values</button>"
    html = html + "  </div>"

    document.getElementById('block').innerHTML = html;
    document.getElementById('test').innerHTML = "";
    document.getElementById('demo').innerHTML = "";
    document.getElementById('rangeOutput').innerHTML = "";
    document.activeElement.blur();
}


function openCompBox(val) {
    let html = "";
    html = html + " <br><div class='container border rounded'>"
    html = html + "     <p>you have selected <b>" + val + "</b><p>"
    html = html + "     <p>Would you like to view <b>raw</b> or <b>proportional</b> values<p>"
    html = html + "     <div class='input-group mb-3'>"
    html = html + "         <button class='btn-sm btn-primary' type='Button' onClick='rawSelected()'>Raw Values</button>"
    html = html + "         <button class='btn-sm btn-primary' type='Button' onClick='propSelected()'>Proportional Values</button>"
    html = html + "     </div>"
    html = html + "     <div id='dataOutput'></div>"
    html = html + "     <button type='button' id='locBtn' class='btn btn-success' onclick='closeTest()'>Close X</button>"
    html = html + "     <p></p>"
    html = html + " </div><br>"
    
    document.getElementById('selectedLga').innerHTML = val;

    document.getElementById('test').innerHTML = html;
    document.activeElement.blur();
    document.getElementById('test').scrollIntoView({
        behavior: 'auto',
        block: 'center',
        inline: 'center'
    });
}

function rawSelected() {
    
    let html = "";
    html = html + "    <p>You have selected <b>Raw Values</b>, please select which tables you would like to view.</p>"

    html = html + "    <div class='form-check'>"
    html = html + "         <input class='form-check-input' type='radio' onChange='rawOutput(this.value)' value='schOnly'  name='flexRadioDefault'>"
    html = html + "         <label class='form-check-label' for='schoolSexCheck'>School Completion</label>"
    html = html + "    </div>"
    html = html + "    <div class='form-check'>"
    html = html + "         <input class='form-check-input' type='radio' onChange='rawOutput(this.value)' value='ageOnly'  name='flexRadioDefault'>"
    html = html + "         <label class='form-check-label' for='ageSexCheck'>Age Brackets</label>"
    html = html + "    </div>"

    html = html + "    <div class='form-check'>"
    html = html + "         <input class='form-check-input' type='radio' onChange='rawOutput(this.value)' value='labour'  name='flexRadioDefault'>"
    html = html + "         <label class='form-check-label' for='labourCheck'>Labour Force</label>"
    html = html + "    </div>"
    html = html + "    <div class='form-check'>"
    html = html + "         <input class='form-check-input' type='radio' onChange='rawOutput(this.value)' value='education'  name='flexRadioDefault'>"
    html = html + "         <label class='form-check-label' for='educationCheck'>Higher Education</label>"
    html = html + "    </div>"

    html = html + "    <p></p>"
    html = html + "    <div id='tableOutput'></div>"
    document.getElementById('dataOutput').innerHTML = html;
    document.activeElement.blur();
}

function rawOutput(val) {
    var lga = document.getElementById('selectedLga').innerHTML;
    var mainLga = document.getElementById('input').value;

    $.ajax({
        url: "/rangeSocio.html",
        data: "selection="+val+"&lga="+lga+"&mainLga="+mainLga,
        success: function( result ) {
          let html = result;
          document.getElementById('tableOutput').innerHTML = html;
        }
    });
    document.activeElement.blur();
}


function propSelected(lga) {
    let html = "";
    html = html + "    <p>You have selected <b>Proportional Values</b>, please select which tables you would like to view.</p>"

    html = html + "    <div class='form-check'>"
    html = html + "         <input class='form-check-input' type='radio' onChange='rawOutput(this.value)' value='schOnlyProp'  name='flexRadioDefault'>"
    html = html + "         <label class='form-check-label' for='schoolSexCheck'>School Completion</label>"
    html = html + "    </div>"
    html = html + "    <div class='form-check'>"
    html = html + "         <input class='form-check-input' type='radio' onChange='rawOutput(this.value)' value='ageOnlyProp'  name='flexRadioDefault'>"
    html = html + "         <label class='form-check-label' for='ageSexCheck'>Age Brackets</label>"
    html = html + "    </div>"

    html = html + "    <div class='form-check'>"
    html = html + "         <input class='form-check-input' type='radio' onChange='rawOutput(this.value)' value='labourProp'  name='flexRadioDefault'>"
    html = html + "         <label class='form-check-label' for='labourCheck'>Labour Force</label>"
    html = html + "    </div>"
    html = html + "    <div class='form-check'>"
    html = html + "         <input class='form-check-input' type='radio' onChange='rawOutput(this.value)' value='educationProp'  name='flexRadioDefault'>"
    html = html + "         <label class='form-check-label' for='educationCheck'>Higher Education</label>"
    html = html + "    </div>"

    html = html + "    <p></p>"
    html = html + "    <div id='tableOutput'></div>"
    document.getElementById('dataOutput').innerHTML = html;
    document.activeElement.blur();
}


function closeTest() {
    document.getElementById('test').innerHTML = "";
}

function proximityContent() {
    let html = "";
    html = html + "    <p>You have selected <b>proximity</b>, please select a range</p>"
    html = html + "    <div class='input-group mb-4'>"
    html = html + "     <select class='form-select' aria-label='Default select example' id='rangeSelect'>"
    html = html + "         <option selected value='none' disabled hidden>Select Range</option>"
    html = html + "         <option value='50' >0-50km</option>"
    html = html + "         <option value='250' >0-250km</option>"
    html = html + "         <option value='500' >0-500km</option>"
    html = html + "         <option value='1000' >0-1000km</option>"
    html = html + "     </select>"
    html = html + "     <button class='btn btn-secondary' type='Submit' id='textSubmit' onClick='rangeSelected()'>Apply</button>"
    html = html + "    </div>"
    
    document.getElementById('demo').innerHTML = html;
    document.activeElement.blur();
}

function rangeSelected() {
    var lga = document.getElementById('input').value;
    
    var select = document.getElementById('rangeSelect');
    var value = select.options[select.selectedIndex].value;

    $.ajax({
        url: "/LgaProximity.html",
        data: "Distance="+value+"&LGA="+lga,
        success: function( result ) {
          let html = result;
          document.getElementById('rangeOutput').innerHTML = html;
        }
    });

    document.activeElement.blur();
}

function socioContent() {
    let html = "";
    html = html + "    <p>You have selected <b>Socio</b>, please select a socio-economic outcome</p>"
    html = html + "    <div class='input-group mb-4'>"
    html = html + "     <select class='form-select' aria-label='Default select example' id='outcomeSelect'>"
    html = html + "         <option selected value='none' disabled hidden>Select Range</option>"
    html = html + "         <option value='age' >Indigineous Status by Age</option>"
    html = html + "         <option value='school' >School Completion</option>"
    html = html + "         <option value='labour' >Labour Force</option>"
    html = html + "         <option value='education' >Higher Education</option>"
    html = html + "     </select>"
    html = html + "     <button class='btn btn-secondary' type='button' id='textSubmit' onClick='outcomeSelected()'>Apply</button>"
    html = html + "    </div>"

    document.getElementById('demo').innerHTML = html;
    document.getElementById('rangeOutput').innerHTML = "";
    document.getElementById('test').innerHTML = "";
    document.activeElement.blur();
}

function outcomeSelected() {
    var lga = document.getElementById('input').value;
    var select = document.getElementById('outcomeSelect');
    var value = select.options[select.selectedIndex].value;


    $.ajax({
        url: "/outcomeSocio.html",
        data: "outcome="+value+"&LGA="+lga,
        success: function( result ) {
          let html = result;
          document.getElementById('rangeOutput').innerHTML = html;
        }
    });

    document.activeElement.blur();
}


function socioSelected(rawProp) {
    var lga = document.getElementById('input').value;

    var select = document.getElementById('socioOptions');
    var value = select.options[select.selectedIndex].value;

    var outcome = document.getElementById('outcomeSelect');
    var outcomeVal = outcome.options[outcome.selectedIndex].value;

    var ATSI = document.getElementById('ATSIOptions');
    var ATSISelection = ATSI.options[ATSI.selectedIndex].value;


    $.ajax({
        url: "/socioTabOut.html",
        data: "socio="+value+"&LGA="+lga+"&type="+rawProp+"&outcome="+outcomeVal+"&ATSI="+ATSISelection,
        success: function( result ) {
          let html = result;
          document.getElementById('rawPropOutput').innerHTML = html;
        }
    });

    document.activeElement.blur();
}




