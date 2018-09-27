var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/students", function(req, res) {
    console.log("the route was just hit");
    console.log("DB!!!!!!!!!!! ", db.Student);
    db.Student.findAll({}).then(function(dbStudents) {
      res.json(dbStudents);
    });
  });
};
