require("dotenv").config();
var express = require("express");
var bodyParser = require("body-parser");
var exphbs = require("express-handlebars");
var session = require("express-session");
// Requiring passport as we've configured it
var passport = require("./config/passport");
var db = require("./models");
var app = express();
var PORT = process.env.PORT || 3000;
//Define an array containing all models for which seeds need to be appended
var modelObj = {
  modelss: [
    {
      dbb: db.Course,
      js: "courses.json"
    },
    // {
    //   dbb: db.Class,
    //   js: "classes.json"
    // },
    // {
    //   dbb: db.Enrollment,
    //   js:"enrollments.json"
    // },
    // {
    //   dbb: db.Mark,
    //   js: "marks.json"
    // },
    {
      dbb: db.Professor,
      js: "professors.json"
    }
    ,
    {
      dbb: db.Student,
      js: "students.json"
    }
  ],
  req: function(mod){
    var seeds = require("./db/json/" + this.modelss[mod].js);
    return seeds;
  }
};
// Middleware
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.static("public"));
// We need to use sessions to keep track of our user's login status
app.use(
  session({ secret: "keyboard cat", resave: true, saveUninitialized: true })
);
app.use(passport.initialize());
app.use(passport.session());

// Handlebars
app.engine(
  "handlebars",
  exphbs({
    defaultLayout: "main"
  })
);
app.set("view engine", "handlebars");

// Routes
require("./routes/apiRoutes")(app);
require("./routes/htmlRoutes")(app);
require("./routes/authRoutes")(app);

// Temporary Routes
require("./routes/apiRoutesCourse")(app);
require("./routes/apiRoutesClass")(app);
require("./routes/apiRoutesEnrollment")(app);
require("./routes/apiRoutesProfessor")(app);
require("./routes/apiRoutesStudent")(app);

var syncOptions = { force: false };

// If running a test, set syncOptions.force to true
// clearing the `testdb`
if (process.env.NODE_ENV === "test") {
  syncOptions.force = true;
}

// Starting the server, syncing our models ------------------------------------/
db.sequelize.sync(syncOptions).then(function () {
  app.listen(PORT, function() {
    console.log(
      "==> 🌎  Listening on port %s. Visit http://localhost:%s/ in your browser.",
      PORT,
      PORT
    );
  });
  for (var b = 0; b < modelObj.modelss.length; b++) {
    var seeds = modelObj.req(b);
    for (var a = 0; a < seeds.length; a++) {
      modelObj.modelss[b].dbb.create(seeds[a]).then(function(dbCourse) {
        console.log(dbCourse);
      });
    }
  }
});

module.exports = app;
