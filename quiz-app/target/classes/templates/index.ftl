<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Welcome to the Quiz Website</title>
    <link rel="stylesheet" href="/css/style.css" />
    <style>
        .btn {
            display: inline-block;
            padding: 12px 24px;
            margin: 10px;
            font-size: 18px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            text-align: center;
        }
        h1 {
            margin-bottom: 40px;
        }
    </style>
</head>
<body>
<h1>Welcome to the Quiz Website</h1>

<a href="/quiz/start" class="btn">Take the Quiz</a>
<a href="/question/add" class="btn">Add New Question</a>
<a href="/question/list" class="btn">List All Questions</a>
</body>
</html>
