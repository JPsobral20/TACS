// ItemVisualizationPage.js - Screen-specific functionality
// Auto-generated from B-UML GUI Model

let allItems = [];
let filteredItems = [];
let allReviews = [];

// Load data when page loads
document.addEventListener('DOMContentLoaded', async () => {
    await loadData();
    initializeScreen();
});

// Load data from JSON file
async function loadData() {
    try {
        const response = await fetch('data/data.json');
        const data = await response.json();
        allItems = data.items || [];
        filteredItems = [...allItems];
        allReviews = data.reviews || [];
    } catch (error) {
        console.error('Error loading data:', error);
        allItems = [];
        filteredItems = [];
        allReviews = [];
    }
}

// Initialize screen-specific functionality
function initializeScreen() {
    
    
    // Initialize DataList: ProductFieldsDataList
    renderDataList_ProductFieldsDataList();
    
    
    
    // Initialize Button: ChatPageButton
    initializeButton('btn-chatpagebutton', 'Navigate', 'MainPage');
    
    
    
    // Initialize Button: UserPageButton
    initializeButton('btn-userpagebutton', 'Navigate', 'MainPage');
    
    
    
    // Initialize Button: MainPageButton
    initializeButton('btn-mainpagebutton', 'Navigate', 'MainPage');
    
    
    
    // Initialize DataList: ProductReviewsDataList
    renderDataList_ProductReviewsDataList();
    
    
    
    // Initialize Button: AcquireItemButton
    initializeButton('btn-acquireitembutton', 'Add', '');
    
    
    
    // Initialize Button: AddReviewButton
    initializeButton('btn-addreviewbutton', 'Add', '');
    
    
}



// Render DataList: ProductFieldsDataList
function renderDataList_ProductFieldsDataList() {
    
    const container1 = document.getElementById('list-ProductFieldsDataList-1');
    if (container1) {
        container1.innerHTML = '';
        
        
        // ItemVisualizationPage: Load single item from URL parameter
        const urlParams = new URLSearchParams(window.location.search);
        const itemId = urlParams.get('id');
        const items = filteredItems;
        const selectedItem = items.find(item => item.itemId == itemId);
        
        if (selectedItem) {
            // Create a separate card for each field
            
            
            if (selectedItem.title !== undefined && selectedItem.title !== null) {
                const fieldCard = document.createElement('div');
                fieldCard.className = 'list-item field-card';
                
                let value = selectedItem.title;
                
                // Format specific fields for better display
                
                
                fieldCard.innerHTML = `
                    <div class="field">
                        <span class="field-label">title:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
                
                container1.appendChild(fieldCard);
            }
            
            if (selectedItem.datePosted !== undefined && selectedItem.datePosted !== null) {
                const fieldCard = document.createElement('div');
                fieldCard.className = 'list-item field-card';
                
                let value = selectedItem.datePosted;
                
                // Format specific fields for better display
                
                value = formatDate(value);
                
                
                fieldCard.innerHTML = `
                    <div class="field">
                        <span class="field-label">datePosted:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
                
                container1.appendChild(fieldCard);
            }
            
            if (selectedItem.condition !== undefined && selectedItem.condition !== null) {
                const fieldCard = document.createElement('div');
                fieldCard.className = 'list-item field-card';
                
                let value = selectedItem.condition;
                
                // Format specific fields for better display
                
                
                fieldCard.innerHTML = `
                    <div class="field">
                        <span class="field-label">condition:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
                
                container1.appendChild(fieldCard);
            }
            
            if (selectedItem.exchangeOption !== undefined && selectedItem.exchangeOption !== null) {
                const fieldCard = document.createElement('div');
                fieldCard.className = 'list-item field-card';
                
                let value = selectedItem.exchangeOption;
                
                // Format specific fields for better display
                
                value = value ? 'Yes' : 'No';
                
                
                fieldCard.innerHTML = `
                    <div class="field">
                        <span class="field-label">exchangeOption:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
                
                container1.appendChild(fieldCard);
            }
            
            if (selectedItem.description !== undefined && selectedItem.description !== null) {
                const fieldCard = document.createElement('div');
                fieldCard.className = 'list-item field-card';
                
                let value = selectedItem.description;
                
                // Format specific fields for better display
                
                
                fieldCard.innerHTML = `
                    <div class="field">
                        <span class="field-label">description:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
                
                container1.appendChild(fieldCard);
            }
            
            if (selectedItem.price !== undefined && selectedItem.price !== null) {
                const fieldCard = document.createElement('div');
                fieldCard.className = 'list-item field-card';
                
                let value = selectedItem.price;
                
                // Format specific fields for better display
                
                if (selectedItem.giveaway) {
                    value = 'Free (Giveaway)';
                } else {
                    value = formatCurrency(value, selectedItem.priceCurrency);
                }
                
                
                fieldCard.innerHTML = `
                    <div class="field">
                        <span class="field-label">price:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
                
                container1.appendChild(fieldCard);
            }
            
            if (selectedItem.giveaway !== undefined && selectedItem.giveaway !== null) {
                const fieldCard = document.createElement('div');
                fieldCard.className = 'list-item field-card';
                
                let value = selectedItem.giveaway;
                
                // Format specific fields for better display
                
                value = value ? 'Yes' : 'No';
                
                
                fieldCard.innerHTML = `
                    <div class="field">
                        <span class="field-label">giveaway:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
                
                container1.appendChild(fieldCard);
            }
            
            if (selectedItem.category !== undefined && selectedItem.category !== null) {
                const fieldCard = document.createElement('div');
                fieldCard.className = 'list-item field-card';
                
                let value = selectedItem.category;
                
                // Format specific fields for better display
                
                
                fieldCard.innerHTML = `
                    <div class="field">
                        <span class="field-label">category:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
                
                container1.appendChild(fieldCard);
            }
            
        } else {
            container1.innerHTML = '<p>Item not found.</p>';
        }
        
    }
    
}









// Render DataList: ProductReviewsDataList
function renderDataList_ProductReviewsDataList() {
    
    const container1 = document.getElementById('list-ProductReviewsDataList-1');
    if (container1) {
        container1.innerHTML = '';
        
        
        // Handle Reviews - load from JSON data filtered by itemId
        const urlParams = new URLSearchParams(window.location.search);
        const itemId = urlParams.get('id');
        
        // Filter reviews for the current item
        const reviews = allReviews.filter(review => review.itemId == itemId);
        
        if (reviews.length === 0) {
            container1.innerHTML = '<p>No reviews yet for this item.</p>';
        } else {
            reviews.forEach(review => {
            const reviewCard = document.createElement('div');
            reviewCard.className = 'list-item review-card';
            
            let cardHTML = '';
            
            if (review.date) {
                let value = review.date;
                
                value = formatDate(value);
                
                cardHTML += `
                    <div class="field">
                        <span class="field-label">date:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
            }
            
            if (review.content) {
                let value = review.content;
                
                cardHTML += `
                    <div class="field">
                        <span class="field-label">content:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
            }
            
            
            reviewCard.innerHTML = cardHTML;
            container1.appendChild(reviewCard);
            });
        }
        
    }
    
}







// Initialize search input with filtering
function initializeSearchInput(inputId) {
    const searchInput = document.getElementById(inputId);
    if (searchInput) {
        searchInput.addEventListener('input', (e) => {
            const searchTerm = e.target.value.toLowerCase();
            
            if (searchTerm === '') {
                filteredItems = [...allItems];
            } else {
                filteredItems = allItems.filter(item => {
                    return (
                        (item.title && item.title.toLowerCase().includes(searchTerm)) ||
                        (item.description && item.description.toLowerCase().includes(searchTerm)) ||
                        (item.category && item.category.toLowerCase().includes(searchTerm))
                    );
                });
            }
            
            // Re-render all data lists with filtered results
            
            
            renderDataList_ProductFieldsDataList();
            
            
            
            
            
            
            
            
            
            renderDataList_ProductReviewsDataList();
            
            
            
            
            
            
        });
    }
}

// Initialize button with action
function initializeButton(buttonId, actionType, targetScreen) {
    const button = document.getElementById(buttonId);
    if (button) {
        button.addEventListener('click', (e) => {
            e.preventDefault();
            switch(actionType) {
                case 'Navigate':
                    if (targetScreen) {
                        window.location.href = targetScreen + '.html';
                    }
                    break;
                case 'Add':
                    console.log('Add action triggered');
                    // Implement add functionality
                    break;
                case 'Edit':
                    console.log('Edit action triggered');
                    // Implement edit functionality
                    break;
                case 'Delete':
                    console.log('Delete action triggered');
                    // Implement delete functionality
                    break;
                default:
                    console.log('Action:', actionType);
            }
        });
    }
}

// Utility function to format dates
function formatDate(dateString) {
    const date = new Date(dateString);
    return date.toLocaleDateString('en-US', { year: 'numeric', month: 'long', day: 'numeric' });
}

// Utility function to format currency
function formatCurrency(amount, currency) {
    return new Intl.NumberFormat('en-US', {
        style: 'currency',
        currency: currency || 'EUR'
    }).format(amount);
}