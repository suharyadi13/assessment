module.exports = (sequelize, Sequelize) => {
  const User = sequelize.define("tbl_users", {
    name: {
      type: Sequelize.STRING(100),
      allowNull:false,
      validate: {
        len:[5,100]
      }
    },
    email:{
      type: Sequelize.STRING(50),
      allowNull: false,
      unique: true,
      validate: {
        len:[10,100],
        isEmail: {
          msg: "Must be a valid email address",
        }
      }
    },
    password: {
      type: Sequelize.STRING,
      allowNull:false
    },
    phone: {
      type: Sequelize.STRING(15),
      validate: {
        len:[9,15]
      }
    }
  }, {
    indexes: [{
      fields: ['email'],
      unique: true,
    }]
  });

  return User;
};
