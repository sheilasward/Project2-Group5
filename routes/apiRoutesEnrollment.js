var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/enrollments", function(req, res) {
    console.log("the route was just hit");
    console.log("DB!!!!!!!!!!! ", db.Enrollment);
    db.Enrollment.findAll({
      include: [
        {
          model: db.Class,
          include: {
            model: db.Course
          }
        },
        {
          model: db.Student
        }
      ]
    }).then(function(dbEnrollments) {
      res.json(dbEnrollments);
    });
  });
  app.get("/api/gradeget", function(req, res) {
    console.log("Getting your Grades");
    console.log("DB!!!!!!!!!!! ", db.Enrollment);
    db.Mark.findAll({
      include: [
        {
          model: db.Class,
          include: {
            model: db.Course
          }
        },
        {
          model: db.Student
        }
      ]
    }).then(function(dbMark) {
      res.json(dbMark);
    });
  });
};
