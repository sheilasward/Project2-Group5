module.exports = function(sequelize, DataTypes) {
  var Enrollment = sequelize.define("Enrollment", {
    term: DataTypes.STRING
  });

  Enrollment.associate = function(models) {
    Enrollment.belongsTo(models.Class, {
      foreignKey: {
        name: "classid",
        allowNull: false
      }
    });
    Enrollment.belongsTo(models.Student, {
      foreignKey: {
        name: "studentid",
        allowNull: false
      }
    });
  };

  return Enrollment;
};
