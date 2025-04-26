let currentQuestion = 0; // Start with the first question

// Array of question IDs (in the order they should appear)
const questions = [
    "userQuestionGRE",
    "userQuestionCGPA",
    "userQuestionTOEFL",
    "userQuestionMajor",
    "userQuestionMastersMajor",
    "userQuestionResearch",
    "userQuestionWorkExperience",
];

// Function to check if the user has answered the current question
function validateInput() {
    const currentQuestionElement = document.getElementById(questions[currentQuestion]);
    const inputs = currentQuestionElement.querySelectorAll("input, select");

    let isValid = true;
    inputs.forEach(input => {
        if (!input.value.trim()) {
            isValid = false;
        }
    });

    return isValid;
}

// Show the next question
function showNextQuestion() {
    // Only proceed if the current question is answered
    if (validateInput()) {
        currentQuestion++; // Move to the next question

        if (currentQuestion < questions.length) {
            const nextQuestionElement = document.getElementById(questions[currentQuestion]);
            nextQuestionElement.style.display = "block";
        }

        // Show the submit button after the last question
        if (currentQuestion === questions.length) {
            document.getElementById('submitButton').style.display = 'block';
        }
    } else {
        alert("Please answer the question before proceeding.");
    }
}

// Initially show only intro and first question
document.addEventListener('DOMContentLoaded', () => {
    document.getElementById('botMessage1').style.display = 'block';
    document.getElementById('userQuestionGRE').style.display = 'block'; // Show the first question
});
