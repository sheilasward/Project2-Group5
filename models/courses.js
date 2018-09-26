module.exports = function(sequelize, DataTypes) {
  var Course = sequelize.define("Course", {
    courseName: {
      type: DataTypes.STRING,
      allowNull: false
    },
    courseDesc: DataTypes.STRING,
    credits: {
      type: DataTypes.INTEGER,
      defaultValue: 3,
      allowNull: false
    },
    dept: {
      type: DataTypes.STRING,
      allowNull: false
    },
    prerequisite: DataTypes.STRING
  });

  Course.associate = function(models) {
    Course.hasMany(models.Class, {
      onDelete: "cascade",
      constraints: true,
      foreignKey: {
        name: "courseid"
      }
    });
  };

  return Course;
};
