module.exports = app => {
  const articleCat = require("../controllers/articleCat.controller.js");

  var router = require("express").Router();

  // Create a new Article
  router.post("/create", articleCat.create);

  // Retrieve all Articles
  router.get("/", articleCat.findAll);


  // Retrieve a single Article with id
  router.get("/:id", articleCat.findOne);

  // Update a Article with id
  router.put("/:id", articleCat.update);

  // Delete a Article with id
  router.delete("/:id", articleCat.delete);

  app.use("/api/article-category", router);
};
