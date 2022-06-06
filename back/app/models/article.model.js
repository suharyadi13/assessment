module.exports = (sequelize, Sequelize) => {
  const Article = sequelize.define("tbl_article", {
    title: {
      type: Sequelize.STRING(150),
      allowNull:false,
      validate: {
        len:[10,150],
      }
    },
    description: {
      type: Sequelize.STRING,
      allowNull: false
    },
    short_description: {
      type: Sequelize.STRING
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
