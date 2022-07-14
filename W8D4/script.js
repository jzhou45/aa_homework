const simpleTimeout = window.setTimeout(alert('HAMMERTIME!'), 5000);

function hammerTime(time){
    time = document.getElementById("timeId").value;
    window.setTimeout(alert(time + " is hamemrtime!"));
};