module.exports = function(sequelize, DataTypes) {
  var Enrollment = sequelize.define("Enrollment", {
    snum: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    cnum: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    term: {
      type: DataTypes.STRING,
      primaryKey: true
    },
    section: {
      type: DataTypes.STRING,
      primaryKey: true
    },
    classid: {
      type: DataTypes.INTEGER
    }
  });

  Enrollment.associate = function(models) {
    Enrollment.belongsTo(models.Class, {
      foreignKey: {
        name: "classid",
        allowNull: false
      }
    });
  };

  return Enrollment;
};
