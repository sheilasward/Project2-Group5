module.exports = function(sequelize, DataTypes) {
  var Schedule = sequelize.define("Schedule", {
    cnum: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    term: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1 - 100]
      }
    },
    section: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1 - 100]
      }
    },
    classid: {
      type: DataTypes.INTEGER
    },
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

  Schedule.associate = function(models) {
    Schedule.belongsTo(models.Course, {
      foreignKey: {
        name: "cnum",
        allowNull: false
      }
    });
  };

  return Schedule;
};
