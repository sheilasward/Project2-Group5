module.exports = function(sequelize, DataTypes) {
  var Class = sequelize.define("Class", {
    term: {
      type: DataTypes.STRING,
      allowNull: false
    },
    section: {
      type: DataTypes.STRING,
      allowNull: false
    },
    days: {
      type: DataTypes.STRING,
      allowNull: false
    },
    time: {
      type: DataTypes.STRING,
      allowNull: false
    },
    building: DataTypes.STRING,
    room: DataTypes.STRING,
    maxNumStudents: DataTypes.INTEGER,
    currNumStudents: DataTypes.INTEGER
  });

  Class.associate = function(models) {
    Class.belongsTo(models.Course, {
      foreignKey: {
        name: "courseid",
        allowNull: false
      }
    });
    Class.belongsTo(models.Professor, {
      foreignKey: {
        name: "professorid",
        allowNull: false
      }
    });
    Class.hasMany(models.Enrollment, {
      onDelete: "cascade",
      constraints: true,
      foreignKey: {
        name: "classid"
      }
    });
    Class.hasMany(models.Mark, {
      onDelete: "cascade",
      constraints: true,
      foreignKey: {
        name: "classid"
      }
    });
  };

  return Class;
};
