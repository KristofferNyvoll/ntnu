$(document).ready(function () {
  var canvas = document.getElementById("myCanvas");
  if (canvas.getContext) {
    var ctx = canvas.getContext("2d");
    function draw(fillColor) {
      // clear on each re-render
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      ctx.beginPath();
      ctx.lineWidth = 5;
      ctx.strokeStyle = fillColor;
      // draw the polygon
      ctx.moveTo(100, 10);
      ctx.lineTo(40, 198);
      ctx.lineTo(190, 78);
      ctx.lineTo(10, 78);
      ctx.lineTo(160, 198);
      ctx.lineTo(100, 10);
      ctx.stroke();

      // Draw the 5 circles
      ctx.beginPath();
      ctx.arc(50, 50, 10, 0, 2 * Math.PI);
      ctx.moveTo(160, 50);
      ctx.arc(150, 50, 10, 0, 2 * Math.PI);
      ctx.moveTo(50, 132);
      ctx.arc(40, 132, 10, 0, 2 * Math.PI);
      ctx.moveTo(170, 132);
      ctx.arc(160, 132, 10, 0, 2 * Math.PI);
      ctx.moveTo(110, 185);
      ctx.arc(100, 185, 10, 0, 2 * Math.PI);
      ctx.stroke(); 
    }
  }
  draw("grey");

  // jQuery function to trigger draw() with different strokeStyle onMouseOver()
  $("#myCanvas").hover(
    () => {
      draw("red");
    },
    () => {
      draw("grey");
    }
  );

  // Toggle the documentation
  $("button").click(() => {
    $("#contentDiv").toggle();
  });
});
