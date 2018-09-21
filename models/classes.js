module.exports = function(sequelize, DataTypes) {
  var Classes = sequelize.define("Classes", {
    name: {
      type: DataTypes.STRING
    },
    startTime: {
      type: DataTypes.TIME
    },
    length: {
      type: DataTypes.DECIMAL
    },
    teacher: {
      type: DataTypes.CHAR
    },
    discipline: {
      type: DataTypes.CHAR
    }
  });
  return Classes;
};
