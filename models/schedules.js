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

  Schedule.associate = function(models) {
    Schedule.belongsTo(models.Class, {
      foreignKey: {
        name: "classid",
        allowNull: false
      }
    });
  };
  return Schedule;
};
