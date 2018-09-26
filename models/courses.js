module.exports = function(sequelize, DataTypes) {
  var Course = sequelize.define("Course", {
    cname: {
      type: DataTypes.STRING,
      allowNull: false
    },
    credits: {
      type: DataTypes.INTEGER,
      defaultValue: 3
    }
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
