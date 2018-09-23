module.exports = function(sequelize, DataTypes) {
  var Student = sequelize.define("Student", {
    lastName: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1 - 100]
      }
    },
    firstName: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1 - 100]
      }
    },
    year: {
      type: DataTypes.INTEGER
    }
  });

  Student.associate = function(models) {
    Student.hasMany(models.Enrollment, {
      onDelete: "cascade",
      constraints: true,
      foreignKey: {
        name: "snum"
      }
    });
  };

  return Student;
};
