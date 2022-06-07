module.exports = (sequelize, Sequelize) => {
  const Article = sequelize.define("tbl_article", {
    title: {
      type: Sequelize.TEXT,
      allowNull:false
    },
    description: {
      type: Sequelize.TEXT,
      allowNull: false
    },
    short_description: {
      type: Sequelize.STRING(100)
    },
    category_id: {
      type: Sequelize.INTEGER
    },
    is_visible: {
      type: Sequelize.BOOLEAN,
      defaultValue: true
    }
  });

  return Article;
};
