document.addEventListener("DOMContentLoaded", function(){
    const canvasElement = document.getElementById("mycanvas");
    canvasElement.height = 500;
    canvasElement.width = 500;
    const ctx = canvasElement.getContext("2d");

    ctx.fillStyle = "red";
    ctx.fillRect(0, 0, 250, 500);

    ctx.beginPath();
    ctx.arc(100, 200, 25, 90, 270);
    ctx.strokeStyle = "black";
    ctx.stroke();

    ctx.fillStyle = "white";
    ctx.fill();
});
