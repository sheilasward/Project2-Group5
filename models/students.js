module.exports = function(sequelize, DataTypes) {
  var Student = sequelize.define("Student", {
    lastName: {
      type: DataTypes.STRING
    },
    firstName: {
      type: DataTypes.STRING
    },
    studentEmail: {
      type: DataTypes.STRING,
      validate: {
        isEmail: true
      }
    },
    studentYear: {
      type: DataTypes.INTEGER,
      default: 1
    }
  });

  Student.associate = function(models) {
    Student.hasMany(models.Enrollment, {
      onDelete: "cascade",
      constraints: true,
      foreignKey: {
        name: "studentid"
      }
    });
  };

  return Student;
};
