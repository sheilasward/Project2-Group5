var db = require("../models");
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
  app.get("/professors/:pid", function(req, res) {
    db.Professor.findOne({
      where: {
        id: req.params.pid
      }
    }).then(function(dbProfessors) {
      console.log(dbProfessors.dataValues);
      res.render("professors", dbProfessors.dataValues);
    });
  });
  app.get("/profhome", function(req, res) {
    db.Professor.findAll({}).then(function(dbProfessors) {
      console.log(dbProfessors);
      res.render("profhome", { Professor: dbProfessors });
    });
  });
  app.get("/markstud", function(req, res) {
    db.Student.findAll({
      include: [
        {
          model: db.Enrollment,
          include: {
            model: db.Class,
            include: {
              model: db.Course
            }
          }
        }
      ]
    }).then(function(dbStud) {
      console.log(dbStud);
      var finalResult = [];
      for (var x = 0; x < dbStud.length; x++) {
        for (var y = 0; y < dbStud[x].Enrollments.length; y++) {
          finalResult.push({
            id: dbStud[x].id,
            lastName: dbStud[x].lastName,
            firstName: dbStud[x].firstName,
            term: dbStud[x].Enrollments[y].term,
            classid: dbStud[x].Enrollments[y].Class.id,
            courseName: dbStud[x].Enrollments[y].Class.Course.courseName,
            courseDesc: dbStud[x].Enrollments[y].Class.Course.courseDesc
          });
        }
      }
      // res.json(finalResult);
      res.render("markstud", { finalResult: finalResult });
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
  app.get("/gantt", function(req, res) {
    res.render("gantt", {});
  });
  // Render 404 page for any unmatched routes
  // app.get("*", function(req, res) {
  //   res.render("404");
  // });
};
