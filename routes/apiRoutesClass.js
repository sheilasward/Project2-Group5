var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/classes", function(req, res) {
    console.log("the route was just hit");
    console.log("DB!!!!!!!!!!! ", db.Class);
    db.Class.findAll({
      include: [db.Course, db.Professor]
    }).then(function(dbClasses) {
      res.json(dbClasses);
    });
  });
};
