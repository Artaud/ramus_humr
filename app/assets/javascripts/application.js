// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .

function getCheckedBoxes(boxName) {
  var checkboxes = document.getElementsByName(boxName);
  var checkboxesChecked = [];
  var ids = [];
  clearPrihlAkce();

  for (var i=0; i<checkboxes.length; i++) {
     if (checkboxes[i].checked) {
        checkboxesChecked.push(checkboxes[i]); // or i+1 if you want 1-based 
     }
  }

	for (var i=0; i<checkboxesChecked.length; i++) {
		var div = document.getElementById('prihlaseneakce');
		div.innerHTML = div.innerHTML+ checkboxesChecked[i].value + '<br>';
		ids.push(checkboxesChecked[i].value)
	}
  return ids.length > 0 ? ids : "none";
}

function count(name) {
  alert ("Checked boxes: " + getCheckedBoxes(name));
}

function getAkceFromCheckedBoxes() {
	for (var i=0; i<checkboxesChecked.length; i++) {
		document.getElementById('prihlaseneakce').innerHTML = checkboxesChecked[i]
	}
}

function clearPrihlAkce() {
    var div = document.getElementById('prihlaseneakce');
    div.innerHTML = '';
}

