$("#search-class").on("click", function(event) {
  // When the search-class button is clicked, we need to get information from the classes database

  event.preventDefault();
  // Getting references to our form and input

  var term = $("#term-input").val();
  var dept = $("#dept-input").val();

  var body = {
    term: term,
    dept: dept
  };
  console.log("body = " + JSON.stringify(body));
  $.post("/api/class-search", {
    term: body.term,
    dept: body.dept
  }).then(function(data) {
    console.log("data: " + JSON.stringify(data));
    console.log(data.length);
    renderClasses(data);
  });
});

<<<<<<< HEAD
function renderClasses(data) {
  if (data === data) {
    $("#classes").empty();
    for (var i = 0; i < data.length; i++) {
      var div = $("<div>");
      div.append(
        `<p>${data[i].term} ${data[i].courseName} ${data[i].dept} </p>`
      );
      $("#classes").append(div);
=======
function renderClasses(object) {
  var classTable = `<table class="table classes-table">
  <thead>
    <tr>
      <th scope="col">Class Name</th>
      <th scope="col">Professor</th>
      <th scope="col">Start Time</th>
      <th scope="col">Days/Week</th>
      <th scope="col">Building</th>
      <th scope="col">Room</th>
      <th scope="col">Capacity</th>
      <th scope="col">Enrolled</th>
      <th scope="col">Enroll Now"</th>
    </tr>
  </thead>
  <tbody id="classes">

   </tbody>
</table>`;
  $("#class-table").append(classTable);
  for (var i = 0; i < object.length; i++) {
    var newRow = `<tr data-classID=${object[i].id}>
      <th scope="row">${object[i].Course.courseName}</th>
      <td>${object[i].Professor.lastName}, ${object[i].Professor.firstName}</td>
      <td>${object[i].begTime}</td>
      <td>${object[i].days}</td>
      <td>${object[i].building}</td>
      <td>${object[i].room}</td>
      <td>${object[i].maxNumStudents}</td>
      <td>${object[i].currNumStudents}</td>
      <td><button class="enr btn-primary" value="Enroll" id=${object[i].id}>Enroll now</td>
    </tr>`;
    $("#classes").append(newRow)
    // .append($("<button>", { id: object[i].id, text: "Enroll now" }));
    // $("#" + object[i].id).attr({ class: "enr btn-primary", value: "Enroll" });
    // $("#" + object[i].id).value = "Enroll";
    // .append( $("<button>", { text: "Enroll Now",  id: object[i].id, class: "enr btn-primary" }) );
    $("#" + object[i].id).on("click", function() {
      event.preventDefault();
      // alert(this.id);
      var userData = {
        term: $("#term-input").val(),
        classid: this.id,
        studentid: 1
      };
      console.log(userData);
      if (!userData.term) {
        return;
      }
      // If we have our inputs in proper order, run the signUpUser function
      addEnroll(userData);
    });
    function addEnroll(userData) {
      $.post("/api/enroll", userData)
        .then(function(data) {
          console.log(data);
          // window.location.replace(data);
        })
        .catch(handleAddEnrollErr);
    }
    function handleAddEnrollErr(err) {
      $("#alert .msg").text(err.responseJSON);
      $("#alert").fadeIn(500);
>>>>>>> 383642688b8599644417b9d689817026e9a79f0d
    }
  }
}
