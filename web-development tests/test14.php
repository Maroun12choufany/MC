<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fetch API CRUD Exercise</title>
</head>
<body>
    <h1>Fetch API CRUD Exercise</h1>
    <div id="output"></div>
    <script>
        const apiUrl = 'https://jsonplaceholder.typicode.com/posts';
const outputDiv = document.getElementById('output');

// Helper function to display results
function displayResult(operation, result) {
    outputDiv.innerHTML += `<h3>${operation} Result:</h3><pre>${JSON.stringify(result, null, 2)}</pre>`;
}

// CREATE (POST) operation
function createPost() {
    const newPost = {
        title: 'New Post',
        body: 'This is a new post created using fetch API',
        userId: 1
    };

    fetch(apiUrl, {
        method: 'POST',
        body: JSON.stringify(newPost),
        headers: {
            'Content-type': 'application/json; charset=UTF-8',
        },
    })
    .then(response => response.json())
    .then(json => displayResult('CREATE', json))
    .catch(error => console.error('Error:', error));
}

// READ (GET) operation
function readPosts() {
    fetch(apiUrl)
    .then(response => response.json())
    .then(json => displayResult('READ', json.slice(0, 5))) // Display only first 5 posts
    .catch(error => console.error('Error:', error));
}

// UPDATE (PUT) operation
function updatePost() {
    const updatedPost = {
        id: 1,
        title: 'Updated Post',
        body: 'This post has been updated using fetch API',
        userId: 1
    };

    fetch(`${apiUrl}/1`, {
        method: 'PUT',
        body: JSON.stringify(updatedPost),
        headers: {
            'Content-type': 'application/json; charset=UTF-8',
        },
    })
    .then(response => response.json())
    .then(json => displayResult('UPDATE', json))
    .catch(error => console.error('Error:', error));
}

// DELETE operation
function deletePost() {
    fetch(`${apiUrl}/1`, {
        method: 'DELETE',
    })
    .then(response => {
        if (response.ok) {
            return 'Post deleted successfully';
        }
        throw new Error('Delete operation failed');
    })
    .then(result => displayResult('DELETE', result))
    .catch(error => console.error('Error:', error));
}

// Execute all operations
createPost();
readPosts();
updatePost();
deletePost();
    </script>
</body>
</html>