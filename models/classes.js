module.exports = function(sequelize, DataTypes) {
  var Class = sequelize.define("Class", {
    term: {
      type: DataTypes.STRING
    },
    section: {
      type: DataTypes.STRING
    }
  });

  Class.associate = function(models) {
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
  };

  return Class;
};
