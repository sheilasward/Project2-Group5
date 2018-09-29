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

  $.get("/api/class-search", function(data) {
    console.log(data);
    renderClasses(data);
  });
});

function renderClasses(page, data) {
  if (data.length !== 0) {
    page.render("show-classes");
    $("#classes").empty();
    for (var i = 0; i < data.length; i++) {
      var div = $("<div>");
      div.append(
        `<p>${data[i].term} ${data[i].courseName} ${data[i].dept} </p>`
      );
      $("#classes").append(div);
    }
  }
}
