var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/courses", function(req, res) {
    console.log("the route was just hit");
    console.log("DB!!!!!!!!!!! ", db.Course);
    db.Course.findAll({}).then(function(dbCourses) {
      console.log("DB COURSES HERE!!!!!! ", dbCourses);
      res.json(dbCourses);
    });
  });
};
