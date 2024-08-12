const express = require('express');
const router = express.Router();

const palestrantesRoutes = require('./palestrantes');


router.use('/eventos', palestrantesRoutes);

module.exports = router;
