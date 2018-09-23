module.exports = function(sequelize, DataTypes) {
  var Schedule = sequelize.define("Schedule", {
    day: {
      type: DataTypes.DATE
    },
    time: {
      type: DataTypes.TIME
    },
    room: {
      type: DataTypes.STRING
    }
  });
  console.log("Schedule");
  return Schedule;
};