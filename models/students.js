module.exports = function(sequelize, DataTypes) {
var Tablename = sequelize.define("Tablename", {
// The email cannot be null, and must be a proper email before creation
field1 : {
type: DataTypes.STRING,
allowNull: false,
unique: true,
validate: {
/* if needed*/
}
},
// The password cannot be null
field2: {
type: DataTypes.STRING,
allowNull: false
}
});
