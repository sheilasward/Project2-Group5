module.exports = function(sequelize, DataTypes) {
  var Class = sequelize.define("Class", {
    classid: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    cnum: {
      type: DataTypes.INTEGER,
      primaryKey: false
    },
    term: {
      type: DataTypes.STRING,
      primaryKey: false
    },
    section: {
      type: DataTypes.STRING,
      primaryKey: false
    },
    pnum: {
      type: DataTypes.INTEGER
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
        name: "cnum",
        allowNull: false
      }
    });
  };

  return Class;
};
