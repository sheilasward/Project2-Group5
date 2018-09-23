module.exports = function(sequelize, DataTypes) {
    var Mark = sequelize.define("Mark", {
      grade: {
          type: DataTypes.FLOAT
      }
    });

    console.log("mark");
 
 
    return Mark;
  };