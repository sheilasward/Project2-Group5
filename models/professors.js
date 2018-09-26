module.exports = function(sequelize, DataTypes) {
  var Professor = sequelize.define("Professor", {
    pname: {
      type: DataTypes.STRING,
      allowNull: false
    },
    office: {
      type: DataTypes.STRING,
      allowNull: false
    },
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
