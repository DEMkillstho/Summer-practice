<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>All Questions</title>
    <link rel="stylesheet" href="/css/style.css" />
</head>
<body>
<h1>All Questions</h1>
<table border="1" cellpadding="10">
    <tr>
        <th>ID</th>
        <th>Question</th>
        <th>Option 1</th>
        <th>Option 2</th>
        <th>Option 3</th>
        <th>Option 4</th>
        <th>Correct Answer</th>
    </tr>
    <#list questions as q>
        <tr>
            <td>${q.id}</td>
            <td>${q.questionText}</td>
            <td>${q.option1}</td>
            <td>${q.option2}</td>
            <td>${q.option3}</td>
            <td>${q.option4}</td>
            <td>${q.correctAnswer}</td>
        </tr>
    </#list>
</table>
<p><a href="/">Back to Home</a></p>
</body>
</html>
