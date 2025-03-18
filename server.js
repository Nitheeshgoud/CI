const express = require('express');
const path = require('path');
const fileupload = require('express-fileupload');

const app = express();
const initial_path = path.join(__dirname, "public");

app.use(express.static(initial_path));
app.use(fileupload());

app.get('/', (req, res) => {
    res.sendFile(path.join(initial_path, "home.html"));
});

app.get('/editor', (req, res) => {
    res.sendFile(path.join(initial_path, "editor.html"));
});

// Upload route
app.post('/upload', (req, res) => {
    if (!req.files || !req.files.image) {
        return res.status(400).send('No files were uploaded.');
    }

    let file = req.files.image;
    let date = new Date();
    let imagename = `${date.getDate()}${date.getTime()}_${file.name}`;
    let uploadPath = path.join(__dirname, "public/uploads", imagename);

    file.mv(uploadPath, (err) => {
        if (err) {
            return res.status(500).send(err);
        }
        res.json(`uploads/${imagename}`);
    });
});

app.get("/:blog", (req, res) => {
    res.sendFile(path.join(initial_path, "blog.html"));
});

// 404 Handling
app.use((req, res) => {
    res.status(404).json({ error: "404 - Page Not Found" });
});

app.listen(80, () => {
    console.log('Server is running on port 80...');
});
