var profId = $("#profid").text() * 1;
$("#profid").visible = false;
console.log(profId);
console.log($("#profid"));
localStorage.setItem(profId);

function addCourse() {
  $.get("/addcourse", function(resp) {
    localStorage.setItem(profId);
    location.replace(resp);
    console.log(profId);
  });
}

if (nnj === 9993) {
  addCourse();
}
