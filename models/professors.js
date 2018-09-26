module.exports = function(sequelize, DataTypes) {
  var Professor = sequelize.define("Professor", {
    lastName: {
      type: DataTypes.STRING,
      allowNull: false
    },
    firstName: {
      type: DataTypes.STRING,
      allowNull: false
    },
    building: DataTypes.STRING,
    office: DataTypes.STRING,
    dept: {
      type: DataTypes.STRING,
      allowNull: false
    }
  });
  Professor.associate = function(models) {
    Professor.hasMany(models.Class, {
      onDelete: "cascade",
      constraints: true,
      foreignKey: {
        name: "professorid"
      }
    });
  };

  return Professor;
};
