$("#addcourse").on("click", function(event) {
// When the submit button is clicked, we validate the inputs - the course name should not be blank

  event.preventDefault();
  // Getting references to our form and input
  var addCourseForm = $("form#addcourse");
  var cnameInput = $("input#cname-input");
  var creditInput = $("input#credit-input");
  console.log("Inside addcourse.js");

  alert("Inside");
  console.log("Inside Add Course");  
  var userData = {
    cname: cnameInput.val().trim(),
    credits: creditInput.val().trim()
  };

  console.log(userData);

  if (!userData.cname) {
    return;
  }
  // If we have our inputs in proper order, run the signUpUser function
  addCourse(userData);
  cnameInput.val("");
  creditInput.val("");
  
});
// Does a post to the addcourse route. If successful, we are redirected to the main page
// Otherwise we log any errors

function addCourse(userData) {
  $.post("/api/addcourse", userData)
    .then(function(data) {
      console.log(data);
      // window.location.replace(data);
    })
    .catch(handleAddCourseErr);
};

function handleAddCourseErr(err) {
  console.log(err.responseJSON);
  $("#alert .msg").text(err.responseJSON);
  $("#alert").fadeIn(500);
}
