$(".grade-btn").on("click", function(event) {
  // When the submit button is clicked, we validate the inputs - the course name should not be blank

  event.preventDefault();
  // Getting references to our form and input

  var gradeField = $("#grade-" + this.id).val().trim();
  var userData = {
    grade: gradeField,
    classid: $("#classid-"+this.id).text(),
    studentid: $("#studid-"+this.id).text()
  };

  console.log(userData);

  if (!userData.grade) {
    return;
  }
  // If we have our inputs in proper order, run the signUpUser function
  addGrade(userData);
  $("#grade-" + this.id).disabled=true;
  this.text="Grade Added";
  $(this).css({ "background-color": "yellow", color: "blue" });
});
// Does a post to the addcourse route. If successful, we are redirected to the main page
// Otherwise we log any errors

function addGrade(userData,thiss) {
  $.post("/api/addgrade", userData)
    .then(function(data) {
      console.log(data);
      return "A";

      // window.location.replace(data);
    })
    .catch(handleAddCourseErr);
}

function handleAddCourseErr(err) {
  console.log(err.responseJSON);
  $("#alert .msg").text(err.responseJSON);
  $("#alert").fadeIn(500);
}
