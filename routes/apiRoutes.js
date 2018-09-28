var db = require("../models");

module.exports = function(app) {
  // Get all classes for passed term and passed department
  app.get("/api/class-search", function(req, res) {
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

  // Delete an example by id
  app.delete("/api/examples/:id", function(req, res) {
    db.Example.destroy({ where: { id: req.params.id } }).then(function(
      dbExample
    ) {
      res.json(dbExample);
    });
  });
};
