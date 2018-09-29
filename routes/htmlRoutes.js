// var db = require("../models");
// Requiring our custom middleware for checking if a user is logged in
var isAuthenticated = require("../config/middleware/isAuthenticated");
module.exports = function(app) {
  // Load index page
  app.get("/", function(req, res) {
    res.render("index", {
      msg: "Welcome!"
    });
  });
  app.get("/login", function(req, res) {
    res.render("login", {
      msg: "Welcome!"
    });
  });
  app.get("/addcourse", function(req, res) {
    res.render("addcourse", {
      msg: "Welcome - Add a course!"
    });
  });
  app.get("/members", isAuthenticated, function(req, res) {
    res.render("members", {
      msg: "Welcome Member!"
    });
  });

  // Load example page and pass in an example by id
  app.get("/student-signup", function(req, res) {
    res.render("searchclass", {
      msg: "Register for Classes"
    });
  });

  // Load example page and pass in an example by id
  app.get("/example/:id", function(req, res) {
    res.render("example", {});
  });
  app.get("/user/:id", isAuthenticated, function(req, res) {
    res.render("members", {});
  });
  // Render 404 page for any unmatched routes
  // app.get("*", function(req, res) {
  //   res.render("404");
  // });
};
