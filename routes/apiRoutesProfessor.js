var db = require("../models");

module.exports = function(app) {
  // Get all examples
  app.get("/api/professors", function(req, res) {
    console.log("the route was just hit");
    console.log("DB!!!!!!!!!!! ", db.Professor);
    db.Professor.findAll({}).then(function(dbProfessors) {
      res.json(dbProfessors);
    });
  });
};
