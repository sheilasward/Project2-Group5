$(document).ready(function() {
  // Getting references to our form and input
  var signUpForm = $("form.signup");
  var emailInput = $("input#email-input");
  var passwordInput = $("input#password-input");
  var firstNameInput = $("#first-name-input");
  var lastNameInput = $("#last-name-input");

  // When the signup button is clicked, we validate the email and password are not blank
  signUpForm.on("submit", function(event) {
    event.preventDefault();
    var userData = {
      email: emailInput.val().trim(),
      password: passwordInput.val().trim(),
      firstName: firstNameInput.val().trim(),
      lastName: lastNameInput.val().trim()
    };
    console.log(userData);

    if (
      !userData.email ||
      !userData.password ||
      !firstNameInput ||
      !lastNameInput
    ) {
      return;
    }
    // If we have an email and password, run the signUpUser function
    signUpUser(
      userData.email,
      userData.password,
      userData.firstName,
      userData.lastName
    );
    // Does a post to the signup route. If successful, we are redirected to the members page
    // Otherwise we log any errors
    function signUpUser(email, password, firstName, lastName) {
      $.post("/api/signup", {
        email: email,
        password: password,
        lastName: lastName,
        firstName: firstName
      })
        .then(function(data) {
          console.log(data);
          if (data.name === "SequelizeUniqueConstraintError") {
            // console.log(data.name);
            $("#alert .msg").text(
              `${
                data.fields.email
              } is already in use, please sign in if already a user`
            );
            $("#alert").fadeIn(500);
          } else {
            // $.post("/api/new", {
            //   lastName: lastName,
            //   firstName: firstName,
            //   studentEmail: email
            // }).then(function(data) {
            //   console.log(data.id + "this is the data.id");
            localStorage.setItem("loginObject", JSON.stringify(data));
            console.log(data);
            window.location.replace("/user/" + data.id);
          }
        })
        // If there's an error, handle it by throwing up a bootstrap alert
        // })
        .catch(handleLoginErr);
    }

    function handleLoginErr(err) {
      $("#alert .msg").text(err.responseJSON);
      $("#alert").fadeIn(500);
    }
  });
});
