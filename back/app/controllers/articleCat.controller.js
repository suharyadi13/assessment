const db = require("../models");
const articleCat = db.articleCat;
const Op = db.Sequelize.Op;
var CryptoJS = require("crypto-js");

// Create and Save a new articleCat
exports.create = (req, res) => {
  // Validate request
  if (!req.body.title ) {
    res.status(400).send({
      message: "title can not be empty!"
    });
    return;
  }

  // Create a article Category
  const article = {
    title: req.body.title,
    description: req.body.description,
    short_description: req.body.short_description,
    category_id: req.body.category_id,
    is_visible: req.body.is_visible ? req.body.is_visible : false
  };

  // Save article Category in the database
  articleCat.create(article)
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the articleCat."
      });
    });
};

// Retrieve all articleCats from the database.
exports.findAll = (req, res) => {
  articleCat.findAll()
    .then(data => {
      res.send(data);
    })
    .catch(err => {
      res.status(500).send({
        message:
          err.message || "Some error occurred while retrieving articles."
      });
    });
};

// Find a single articleCat with an id
exports.findOne = (req, res) => {
  const id = CryptoJS.SHA256.parse(req.params.id);
  articleCat.findByPk(id)
    .then(data => {
      if (data) {
        res.send(data);
      } else {
        res.status(404).send({
          message: `Cannot find article Category with id=${id}.`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error retrieving article Category with id=" + id
      });
    });
};

// Update a article Category by the id in the request
exports.update = (req, res) => {
  const id = req.params.id;

  articleCat.update(req.body, {
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "article Category was updated successfully."
        });
      } else {
        res.send({
          message: `Cannot update article Category with id=${id}. Maybe article Category was not found or req.body is empty!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Error updating article Category with id=" + id
      });
    });
};

// Delete a article Category with the specified id in the request
exports.delete = (req, res) => {
  const id = req.params.id;

  articleCat.destroy({
    where: { id: id }
  })
    .then(num => {
      if (num == 1) {
        res.send({
          message: "article Category was deleted successfully!"
        });
      } else {
        res.send({
          message: `Cannot delete article Category with id=${id}. Maybe article Category was not found!`
        });
      }
    })
    .catch(err => {
      res.status(500).send({
        message: "Could not delete article Category with id=" + id
      });
    });
};

