module.exports = function(sequelize, DataTypes) {
    var Teacher = sequelize.define("Teacher", {
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
        designation: {
            type: DataTypes.STRING,
        }
    });

    Teacher.associate = function(models) {
        Teacher.hasMany(models.Classes, {
            onDelete: "cascade",
            constraints: true,
            foreignKey: {
                name: "teacherId"    
            }
        });
    };
    return Example;
  };