
module.exports = function(sequelize, DataTypes) {
  var Enrollment = sequelize.define("Enrollment", {
    term: {
      type:DataTypes.STRING
    },
    section: {
      type:DataTypes.STRING
    }
  });
  console.log("enrollment");

  Enrollment.associate = function(models) {
    Enrollment.hasOne(models.Mark, {
      onDelete: "cascade",
      constraints: true,
      foreignKey: {
        name: "enrollmentid"
      }
    });
  };

  return Enrollment;


};