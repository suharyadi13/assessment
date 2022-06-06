module.exports = (sequelize, Sequelize) => {
  const ArticleCat = sequelize.define("tbl_category", {
    title: {
      type: Sequelize.STRING(100),
      allowNull:false,
      validate: {
        len:[10,100],
      }
    }
  });

  return ArticleCat;
};
