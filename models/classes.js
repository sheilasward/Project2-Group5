module.exports = function(sequelize, DataTypes) {
  var Class = sequelize.define("Class", {
    term: {
      type: DataTypes.STRING,
      primaryKey: false
    },
    section: {
      type: DataTypes.STRING,
      primaryKey: false
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

    Class.hasMany(models.Schedule, {
      onDelete: "cascade",
      constraints: true,
      foreignKey: {
        name: "classid"
      }
    });

  };

  return Class;
};
