vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "server.js", -- Trigger for new HTML files
	callback = function()
		local boilerplate = {
			'const express = require("express");',
			'const mongoose = require("mongoose");',
			'const cors = require("cors");',
			'const bodyParser = require("body-parser");',
			'const dotenv = require("dotenv");',
			'const session = require("express-session");',
			'const MongoDBStore = require("connect-mongodb-session")(session);',
			"",
			"// Load environment variables",
			"dotenv.config();",
			"",
			"const app = express();",
			"const PORT = process.env.PORT || 5000;",
			"",
			"// MongoDB Connection",
			"mongoose",
			"  .connect(process.env.MONGO_URI, {",
			"    useNewUrlParser: true,",
			"    useUnifiedTopology: true,",
			"  })",
			'  .then(() => console.log("MongoDB connected successfully"))',
			'  .catch((err) => console.error("MongoDB connection error:", err));',
			"",
			"// MongoDB Session Store",
			"const store = new MongoDBStore({",
			"  uri: process.env.MONGO_URI,",
			'  collection: "sessions",',
			"});",
			"",
			'store.on("error", (error) => {',
			'  console.error("Session store error:", error);',
			"});",
			"",
			"// Middleware",
			"app.use(cors());",
			"app.use(bodyParser.json()); // Parse JSON data",
			"app.use(bodyParser.urlencoded({ extended: true })); // Parse form data",
			"",
			"// Session Middleware",
			"app.use(",
			"  session({",
			"    secret: process.env.SESSION_SECRET,",
			"    resave: false,",
			"    saveUninitialized: false,",
			"    store: store,",
			"  }),",
			");",
			"",
			"// Test Route",
			'app.get("/", (req, res) => {',
			'  res.send("Welcome to the Express Starter App!");',
			"});",
			"",
			"// Start Server",
			"app.listen(PORT, () => {",
			"  console.log(`Server is running on http://localhost:${PORT}`);",
			"});",
		}

		-- Insert the boilerplate into the new file
		vim.api.nvim_buf_set_lines(0, 0, -1, false, boilerplate)
		vim.api.nvim_win_set_cursor(0, { 10, 4 })
	end,
})
