module.exports = function(sequelize, DataTypes) {
  var Enrollment = sequelize.define("Enrollment", {
    term: {
      type: DataTypes.STRING,
      primaryKey: true
    },
    section: {
      type: DataTypes.STRING,
      primaryKey: true
    }
  });

  Enrollment.associate = function(models) {
    Enrollment.belongsTo(models.Student, {
      foreignKey: "studentid",
      targetKey: "id"
    });
    Enrollment.belongsTo(models.Class, {
      foreignKey: {
        name: "classid",
        allowNull: false
      }
    });
  };

  return Enrollment;
};
