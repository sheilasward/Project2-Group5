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
    </tr>
  </thead>
  <tbody id="classes">

   </tbody>
</table>`;
  $("#class-table").append(classTable);
  for (var i = 0; i < object.length; i++) {
    var newRow = `<tr>
      <th scope="row">${object[i].Course.courseName}</th>
      <td>${object[i].Professor.lastName}, ${object[i].Professor.firstName}</td>
      <td>${object[i].begTime}</td>
      <td>${object[i].days}</td>
      <td>${object[i].building}</td>
      <td>${object[i].room}</td>
      <td>${object[i].maxNumStudents}</td>
      <td>${object[i].currNumStudents}</td>
    </tr>`;
    $("#classes").append(newRow);
  }
}
