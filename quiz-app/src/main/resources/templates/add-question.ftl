<!DOCTYPE html>
<html>
<head>
    <title>Add New Question</title>
</head>
<body>
<h1>Add a New Question</h1>

<form method="post" action="/question/add">
    <label>Question:</label><br/>
    <textarea name="questionText" required></textarea><br/><br/>

    <label>Option 1:</label><br/>
    <input type="text" name="option1" required/><br/><br/>

    <label>Option 2:</label><br/>
    <input type="text" name="option2" required/><br/><br/>

    <label>Option 3:</label><br/>
    <input type="text" name="option3" required/><br/><br/>

    <label>Option 4:</label><br/>
    <input type="text" name="option4" required/><br/><br/>

    <label>Correct Answer:</label><br/>
    <input type="text" name="correctAnswer" required/><br/><br/>

    <button type="submit">Add Question</button>
</form>

<p><a href="/">Back to Home</a></p>
</body>
</html>
