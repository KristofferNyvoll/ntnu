$(document).ready(function () {
  var canvas = document.getElementById("myCanvas");
  if (canvas.getContext) {
    var ctx = canvas.getContext("2d");
    function draw(fillColor) {
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      ctx.beginPath();
      ctx.lineWidth = 5;
      ctx.strokeStyle = fillColor;
      ctx.moveTo(100, 10);
      ctx.lineTo(40, 198);
      ctx.lineTo(190, 78);
      ctx.lineTo(10, 78);
      ctx.lineTo(160, 198);
      ctx.lineTo(100, 10);
      ctx.stroke();
    }
  }
  draw("grey");

  $("#myCanvas").hover(
    () => {
      draw("red");
    },
    () => {
      draw("grey");
    }
  );

  $("button").click(() => {
    $("#contentDiv").toggle();
  });
});
