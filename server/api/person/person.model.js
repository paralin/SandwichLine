'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var PersonSchema = new Schema({
  time_entered: Date,
  time_exited: Date,
  exited_early: Boolean,
  has_exited: Boolean,
  owner_email: String
});

module.exports = mongoose.model('Person', PersonSchema, "persons");
