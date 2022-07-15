document.addEventListener("DOMContentLoaded", function(){
    const canvasElement = document.getElementById("mycanvas");
    canvasElement.height = 500;
    canvasElement.width = 500;
    const ctx = canvasElement.getContext("2d");

    ctx.fillStyle = "red";
    ctx.fillRect(0, 0, 250, 500);


});
