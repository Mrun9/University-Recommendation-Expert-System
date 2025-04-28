let currentQuestion = 0; // Start with the first question

// Array of question IDs (in the order they should appear)
const questions = [
    "userQuestionProgram",
   
    "userQuestionMajor",
    "userQuestionUndergradMajor",
    "userQuestionCGPA",
    "userQuestionGRE",
    "userQuestionTOEFL",
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
    document.getElementById('userQuestionProgram').style.display = 'block'; // Show the first question
});

function displayRecommendations(data) {
    const bubble = document.getElementById('recommendationsBubble');
    bubble.style.display = 'block';
    
    // Clear previous content
   
    
    // Check if all categories are empty
    const allEmpty = (!data.safe || data.safe.length === 0) &&
                     (!data.target || data.target.length === 0) &&
                     (!data.ambitious || data.ambitious.length === 0);
    
    if (allEmpty) {
        // Show "no universities found" message
        
        const noResults = document.createElement('div');
        noResults.className = 'no-results';
        noResults.innerHTML = `
            <p>I'm so sorry, no universities were found matching your profile.</p>
            
        `;
        bubble.appendChild(noResults);
    } else {
        // Create containers for each category
        bubble.innerHTML = '<h3>Here are your recommendations:</h3>';
        const safeDiv = document.createElement('div');
        safeDiv.id = 'safeUniversities';
        safeDiv.innerHTML = '<h4>Safe Universities</h4><ul></ul>';
        
        const targetDiv = document.createElement('div');
        targetDiv.id = 'targetUniversities';
        targetDiv.innerHTML = '<h4>Target Universities</h4><ul></ul>';
        
        const ambitiousDiv = document.createElement('div');
        ambitiousDiv.id = 'ambitiousUniversities';
        ambitiousDiv.innerHTML = '<h4>Ambitious Universities</h4><ul></ul>';
        
        // Append all containers
        bubble.appendChild(safeDiv);
        bubble.appendChild(targetDiv);
        bubble.appendChild(ambitiousDiv);
        
        // Helper function to populate a category
        const populateCategory = (id, items) => {
            const ul = document.querySelector(`#${id} ul`);
            if (items && items.length > 0) {
                ul.innerHTML = items.map(u => `<li>${u}</li>`).join('');
            } else {
                ul.innerHTML = '<li>No universities in this category</li>';
            }
        };
        
        // Populate each category
        populateCategory('safeUniversities', data.safe);
        populateCategory('targetUniversities', data.target);
        populateCategory('ambitiousUniversities', data.ambitious);
    }
    
    // Scroll to show the recommendations
    bubble.scrollIntoView({ behavior: 'smooth' });
}
// In your form submit handler:
document.getElementById('chatForm').addEventListener('submit', async function(event) {
    event.preventDefault();
    
    // Collect form data
    const formData = {
        program: document.getElementById('program').value,
        course: document.getElementById('major').value,
        btech_major: document.getElementById('undergrad_major').value.toLowerCase(),
        gpa: document.getElementById('cgpa').value,
        gre: document.getElementById('gre').value,
        toefl: document.getElementById('toefl').value,
        research_done: document.getElementById('research_done').value,
        work_experience: document.getElementById('work_experience').value
    };
    
    
    try {
        const response = await fetch(`http://localhost:8080/recommend?${new URLSearchParams(formData)}`);
        if (!response.ok) throw new Error('Network response was not ok');
        
        const result = await response.json();
        displayRecommendations(result);
        
    } catch (error) {
        console.error('Error:', error);
        // Show error in a chat bubble
        const errorBubble = document.createElement('div');
        errorBubble.className = 'chat-bubble bot';
        errorBubble.textContent = 'Sorry, I encountered an error getting recommendations. Please try again.';
        document.querySelector('.chat-box').appendChild(errorBubble);
        errorBubble.scrollIntoView({ behavior: 'smooth' });
    }
});