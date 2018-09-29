$(document).ready(function() {
  var studentInfo = JSON.parse(localStorage.getItem("loginObject"));
  console.log(studentInfo);
  console.log("success");
  $(".student-name").text(studentInfo.firstName);
});
