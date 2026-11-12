// MainPage.js - Screen-specific functionality
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
    
    
    // Initialize Button: ChatPageButton
    initializeButton('btn-chatpagebutton', 'Navigate', 'MainPage');
    
    
    
    // Initialize DataList: PopularItemsDataList
    renderDataList_PopularItemsDataList();
    
    
    
    // Initialize Button: UserPageButton
    initializeButton('btn-userpagebutton', 'Navigate', 'MainPage');
    
    
    
    // Initialize DataList: RecentItemsDataList
    renderDataList_RecentItemsDataList();
    
    
    
    // Initialize Button: MainPageButton
    initializeButton('btn-mainpagebutton', 'Navigate', 'MainPage');
    
    
    
    
    // Initialize Search Input: SearchProductInput
    initializeSearchInput('SearchProductInput');
    
    
    
}





// Render DataList: PopularItemsDataList
function renderDataList_PopularItemsDataList() {
    
    const container1 = document.getElementById('list-PopularItemsDataList-1');
    if (container1) {
        container1.innerHTML = '';
        
        
        // MainPage: Display all items as clickable cards
        filteredItems.forEach(item => {
            const itemCard = document.createElement('a');
            itemCard.className = 'list-item';
            itemCard.href = 'ItemVisualizationPage.html?id=' + item.itemId;
            itemCard.setAttribute('data-item-id', item.itemId);
            
            let cardHTML = '';
            
            if (item.title) {
                let value = item.title;
                
                // Format specific fields for better display
                
                
                cardHTML += `
                    <div class="field">
                        <span class="field-label">title:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
            }
            
            if (item.description) {
                let value = item.description;
                
                // Format specific fields for better display
                
                
                cardHTML += `
                    <div class="field">
                        <span class="field-label">description:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
            }
            
            
            itemCard.innerHTML = cardHTML;
            container1.appendChild(itemCard);
        });
        
    }
    
}





// Render DataList: RecentItemsDataList
function renderDataList_RecentItemsDataList() {
    
    const container1 = document.getElementById('list-RecentItemsDataList-1');
    if (container1) {
        container1.innerHTML = '';
        
        
        // MainPage: Display all items as clickable cards
        filteredItems.forEach(item => {
            const itemCard = document.createElement('a');
            itemCard.className = 'list-item';
            itemCard.href = 'ItemVisualizationPage.html?id=' + item.itemId;
            itemCard.setAttribute('data-item-id', item.itemId);
            
            let cardHTML = '';
            
            if (item.title) {
                let value = item.title;
                
                // Format specific fields for better display
                
                
                cardHTML += `
                    <div class="field">
                        <span class="field-label">title:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
            }
            
            if (item.description) {
                let value = item.description;
                
                // Format specific fields for better display
                
                
                cardHTML += `
                    <div class="field">
                        <span class="field-label">description:</span>
                        <span class="field-value">${value}</span>
                    </div>
                `;
            }
            
            
            itemCard.innerHTML = cardHTML;
            container1.appendChild(itemCard);
        });
        
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
            
            
            
            
            renderDataList_PopularItemsDataList();
            
            
            
            
            
            renderDataList_RecentItemsDataList();
            
            
            
            
            
            
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