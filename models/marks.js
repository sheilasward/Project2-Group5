module.exports = function(sequelize, DataTypes) {
  var Mark = sequelize.define("Mark", {
    snum: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    cnum: {
      type: DataTypes.INTEGER,
      primaryKey: true
    },
    term: {
      type: DataTypes.STRING,
      primaryKey: true
    },
    section: {
      type: DataTypes.STRING,
      primaryKey: true
    },
    grade: {
      type: DataTypes.FLOAT
    },
    classid: {
      type: DataTypes.INTEGER
    }
  });

  Mark.associate = function(models) {
    Mark.belongsTo(models.Class, {
      foreignKey: {
        name: "classid",
        allowNull: false
      }
    });
  };

  return Mark;
};
