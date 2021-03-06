var db = require("../models");

module.exports = function(app) {
  // Get all classes for passed term and passed department
  app.post("/api/class-search", function(req, res) {
    db.Class.findAll({
      where: {
        term: req.body.term
      },
      include: [
        {
          model: db.Course,
          where: {
            dept: req.body.dept
          }
        },
        {
          model: db.Professor
        }
      ]
    }).then(function(results) {
      console.log(results);
      res.json(results);
    });
  });

  /*
app.get("/api/class-search", function(req, res) {
    Class.findAll({
      where: {
        term: req.body.term,
        dept: req.body.dept
      },
      order: [["pages", "DESC"]]
    }).then(function(results) {
      res.json(results);
    });
  });
  */

  // Get all examples
  app.get("/api/examples", function(req, res) {
    db.Example.findAll({}).then(function(dbExamples) {
      res.json(dbExamples);
    });
  });

  // Create a new example
  app.post("/api/examples", function(req, res) {
    db.Example.create(req.body).then(function(dbExample) {
      res.json(dbExample);
    });
  });

  // Create a new example
  app.post("/api/addcourse", function(req, res) {
    console.log("recieved");
    console.log(req.body);
    db.Course.create(req.body).then(function(dbCourse) {
      res.json(dbCourse);
    });
  });
  // Create a new example
  app.post("/api/enroll", function(req, res) {
    console.log("recieved");
    console.log(req.body);
    db.Enrollment.create(req.body).then(function(dbEnr) {
      res.json(dbEnr);
    });
  });

  // Create a new example
  app.post("/api/addgrade", function(req, res) {
    console.log("recieved");
    console.log(req.body);
    db.Mark.create(req.body).then(function(dbMark) {
      res.json(dbMark);
    });
  });

  //add a new student
  app.post("/api/new", function(req, res) {
    db.Student.create({
      studentEmail: req.body.studentEmail,
      firstName: req.body.firstName,
      lastName: req.body.lastName
    }).then(function(newStudent) {
      res.json(`/user/${newStudent.id}`);
    });
  });
  // Delete an example by id
  app.delete("/api/examples/:id", function(req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function(
      dbExample
    ) {
      res.json(dbExample);
    });
  });
};
