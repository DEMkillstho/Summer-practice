<!DOCTYPE html>
<html>
<head>
    <title>Take the Quiz</title>
</head>
<body>
<h1>Quiz Time!</h1>

<form action="/quiz/submit" method="post">
    <#list questions as q>
        <div>
            <p>${q?index + 1}. ${q.questionText}</p>
            <input type="radio" name="answers_${q?index}" value="${q.option1}" required> ${q.option1}<br>
            <input type="radio" name="answers_${q?index}" value="${q.option2}"> ${q.option2}<br>
            <input type="radio" name="answers_${q?index}" value="${q.option3}"> ${q.option3}<br>
            <input type="radio" name="answers_${q?index}" value="${q.option4}"> ${q.option4}<br>
        </div>
        <hr>
    </#list>
    <input type="submit" value="Submit Quiz">
</form>

<p><a href="/">Back to Home</a></p>
</body>
</html>
