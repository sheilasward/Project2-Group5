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
        isEmail : true
      }
    }, 
    year: {
      type: DataTypes.DATE
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
