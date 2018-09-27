require("dotenv").config();
var fs = require('fs');
var configjson = {
  development: {
    username: process.env.mysqlUname,
    password: process.env.mysqlPasswd,
    database: "bootcampudb",
    host: "localhost",
    dialect: "mysql",
    port: 3306
  },
  test: {
    username: process.env.mysqlUname,
    password: process.env.mysqlPasswd,
    database: "testdb",
    host: "localhost",
    dialect: "mysql",
    logging: false,
    port: 3306
  },
  production: {
    use_env_variable: "JAWSDB_URL",
    dialect: "mysql"
  }
};

fs.writeFile("config.json", configjson, function(err) {
  if (err) {
    return console.log(err);
  } else {
    console.log("Config.json saved!");
  }
});
