module.exports = function(sequelize, DataTypes) {
  var Mark = sequelize.define("Mark", {
    grade: {
      type: DataTypes.FLOAT
    }
  });

  Mark.associate = function(models) {
    Mark.belongsTo(models.Class, {
      foreignKey: {
        name: "classid",
        allowNull: false
      }
    });
    Mark.belongsTo(models.Student, {
      foreignKey: {
        name: "studentid",
        allowNull: false
      }
    });
  };

  return Mark;
};
