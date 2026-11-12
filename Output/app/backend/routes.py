from flask import request, jsonify
from database import db
from models import User, Rating, Category, Report, Message, Item, Notification, Chat, Media, Review, Transaction


def register_routes(app):
    """Register all CRUD routes for the application"""
    
    @app.route('/health', methods=['GET'])
    def health_check():
        """Health check endpoint"""
        return jsonify({'status': 'healthy', 'message': 'Backend API is running'}), 200

    
    # ========== User CRUD Routes ==========
    
    @app.route('/users', methods=['GET'])
    def get_users():
        """Get all users"""
        try:
            users = User.query.all()
            return jsonify([user.to_dict() for user in users]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/users/<int:id>', methods=['GET'])
    def get_user(id):
        """Get a specific user by ID"""
        try:
            user = User.query.get_or_404(id)
            return jsonify(user.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/users', methods=['POST'])
    def create_user():
        """Create a new user"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            user = User()
            
            if 'joinDate' in data:
                user.joinDate = data['joinDate']
            
            if 'averageRating' in data:
                user.averageRating = data['averageRating']
            
            if 'userID' in data:
                user.userID = data['userID']
            
            if 'passwordHash' in data:
                user.passwordHash = data['passwordHash']
            
            if 'email' in data:
                user.email = data['email']
            
            if 'bio' in data:
                user.bio = data['bio']
            
            if 'isBanned' in data:
                user.isBanned = data['isBanned']
            
            if 'phone' in data:
                user.phone = data['phone']
            
            if 'address' in data:
                user.address = data['address']
            
            if 'name' in data:
                user.name = data['name']
            
            
            db.session.add(user)
            db.session.commit()
            
            return jsonify(user.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/users/<int:id>', methods=['PUT'])
    def update_user(id):
        """Update an existing user"""
        try:
            user = User.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'joinDate' in data:
                user.joinDate = data['joinDate']
            
            if 'averageRating' in data:
                user.averageRating = data['averageRating']
            
            if 'userID' in data:
                user.userID = data['userID']
            
            if 'passwordHash' in data:
                user.passwordHash = data['passwordHash']
            
            if 'email' in data:
                user.email = data['email']
            
            if 'bio' in data:
                user.bio = data['bio']
            
            if 'isBanned' in data:
                user.isBanned = data['isBanned']
            
            if 'phone' in data:
                user.phone = data['phone']
            
            if 'address' in data:
                user.address = data['address']
            
            if 'name' in data:
                user.name = data['name']
            
            
            db.session.commit()
            
            return jsonify(user.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/users/<int:id>', methods=['DELETE'])
    def delete_user(id):
        """Delete a user"""
        try:
            user = User.query.get_or_404(id)
            db.session.delete(user)
            db.session.commit()
            
            return jsonify({'message': 'User deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Rating CRUD Routes ==========
    
    @app.route('/ratings', methods=['GET'])
    def get_ratings():
        """Get all ratings"""
        try:
            ratings = Rating.query.all()
            return jsonify([rating.to_dict() for rating in ratings]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/ratings/<int:id>', methods=['GET'])
    def get_rating(id):
        """Get a specific rating by ID"""
        try:
            rating = Rating.query.get_or_404(id)
            return jsonify(rating.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/ratings', methods=['POST'])
    def create_rating():
        """Create a new rating"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            rating = Rating()
            
            if 'ratingId' in data:
                rating.ratingId = data['ratingId']
            
            if 'comment' in data:
                rating.comment = data['comment']
            
            if 'rating' in data:
                rating.rating = data['rating']
            
            if 'date' in data:
                rating.date = data['date']
            
            
            db.session.add(rating)
            db.session.commit()
            
            return jsonify(rating.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/ratings/<int:id>', methods=['PUT'])
    def update_rating(id):
        """Update an existing rating"""
        try:
            rating = Rating.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'ratingId' in data:
                rating.ratingId = data['ratingId']
            
            if 'comment' in data:
                rating.comment = data['comment']
            
            if 'rating' in data:
                rating.rating = data['rating']
            
            if 'date' in data:
                rating.date = data['date']
            
            
            db.session.commit()
            
            return jsonify(rating.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/ratings/<int:id>', methods=['DELETE'])
    def delete_rating(id):
        """Delete a rating"""
        try:
            rating = Rating.query.get_or_404(id)
            db.session.delete(rating)
            db.session.commit()
            
            return jsonify({'message': 'Rating deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Category CRUD Routes ==========
    
    @app.route('/categorys', methods=['GET'])
    def get_categorys():
        """Get all categorys"""
        try:
            categorys = Category.query.all()
            return jsonify([category.to_dict() for category in categorys]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/categorys/<int:id>', methods=['GET'])
    def get_category(id):
        """Get a specific category by ID"""
        try:
            category = Category.query.get_or_404(id)
            return jsonify(category.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/categorys', methods=['POST'])
    def create_category():
        """Create a new category"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            category = Category()
            
            if 'description' in data:
                category.description = data['description']
            
            if 'name' in data:
                category.name = data['name']
            
            if 'categoryId' in data:
                category.categoryId = data['categoryId']
            
            
            db.session.add(category)
            db.session.commit()
            
            return jsonify(category.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/categorys/<int:id>', methods=['PUT'])
    def update_category(id):
        """Update an existing category"""
        try:
            category = Category.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'description' in data:
                category.description = data['description']
            
            if 'name' in data:
                category.name = data['name']
            
            if 'categoryId' in data:
                category.categoryId = data['categoryId']
            
            
            db.session.commit()
            
            return jsonify(category.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/categorys/<int:id>', methods=['DELETE'])
    def delete_category(id):
        """Delete a category"""
        try:
            category = Category.query.get_or_404(id)
            db.session.delete(category)
            db.session.commit()
            
            return jsonify({'message': 'Category deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Report CRUD Routes ==========
    
    @app.route('/reports', methods=['GET'])
    def get_reports():
        """Get all reports"""
        try:
            reports = Report.query.all()
            return jsonify([report.to_dict() for report in reports]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/reports/<int:id>', methods=['GET'])
    def get_report(id):
        """Get a specific report by ID"""
        try:
            report = Report.query.get_or_404(id)
            return jsonify(report.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/reports', methods=['POST'])
    def create_report():
        """Create a new report"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            report = Report()
            
            if 'reportId' in data:
                report.reportId = data['reportId']
            
            if 'date' in data:
                report.date = data['date']
            
            if 'status' in data:
                report.status = data['status']
            
            if 'details' in data:
                report.details = data['details']
            
            
            db.session.add(report)
            db.session.commit()
            
            return jsonify(report.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/reports/<int:id>', methods=['PUT'])
    def update_report(id):
        """Update an existing report"""
        try:
            report = Report.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'reportId' in data:
                report.reportId = data['reportId']
            
            if 'date' in data:
                report.date = data['date']
            
            if 'status' in data:
                report.status = data['status']
            
            if 'details' in data:
                report.details = data['details']
            
            
            db.session.commit()
            
            return jsonify(report.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/reports/<int:id>', methods=['DELETE'])
    def delete_report(id):
        """Delete a report"""
        try:
            report = Report.query.get_or_404(id)
            db.session.delete(report)
            db.session.commit()
            
            return jsonify({'message': 'Report deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Message CRUD Routes ==========
    
    @app.route('/messages', methods=['GET'])
    def get_messages():
        """Get all messages"""
        try:
            messages = Message.query.all()
            return jsonify([message.to_dict() for message in messages]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/messages/<int:id>', methods=['GET'])
    def get_message(id):
        """Get a specific message by ID"""
        try:
            message = Message.query.get_or_404(id)
            return jsonify(message.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/messages', methods=['POST'])
    def create_message():
        """Create a new message"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            message = Message()
            
            if 'content' in data:
                message.content = data['content']
            
            if 'readStatus' in data:
                message.readStatus = data['readStatus']
            
            if 'timestamp' in data:
                message.timestamp = data['timestamp']
            
            if 'messageId' in data:
                message.messageId = data['messageId']
            
            
            db.session.add(message)
            db.session.commit()
            
            return jsonify(message.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/messages/<int:id>', methods=['PUT'])
    def update_message(id):
        """Update an existing message"""
        try:
            message = Message.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'content' in data:
                message.content = data['content']
            
            if 'readStatus' in data:
                message.readStatus = data['readStatus']
            
            if 'timestamp' in data:
                message.timestamp = data['timestamp']
            
            if 'messageId' in data:
                message.messageId = data['messageId']
            
            
            db.session.commit()
            
            return jsonify(message.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/messages/<int:id>', methods=['DELETE'])
    def delete_message(id):
        """Delete a message"""
        try:
            message = Message.query.get_or_404(id)
            db.session.delete(message)
            db.session.commit()
            
            return jsonify({'message': 'Message deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Item CRUD Routes ==========
    
    @app.route('/items', methods=['GET'])
    def get_items():
        """Get all items"""
        try:
            items = Item.query.all()
            return jsonify([item.to_dict() for item in items]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/items/<int:id>', methods=['GET'])
    def get_item(id):
        """Get a specific item by ID"""
        try:
            item = Item.query.get_or_404(id)
            return jsonify(item.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/items', methods=['POST'])
    def create_item():
        """Create a new item"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            item = Item()
            
            if 'datePosted' in data:
                item.datePosted = data['datePosted']
            
            if 'category' in data:
                item.category = data['category']
            
            if 'price' in data:
                item.price = data['price']
            
            if 'description' in data:
                item.description = data['description']
            
            if 'exchangeOption' in data:
                item.exchangeOption = data['exchangeOption']
            
            if 'title' in data:
                item.title = data['title']
            
            if 'condition' in data:
                item.condition = data['condition']
            
            if 'giveaway' in data:
                item.giveaway = data['giveaway']
            
            if 'status' in data:
                item.status = data['status']
            
            if 'itemId' in data:
                item.itemId = data['itemId']
            
            if 'priceCurrency' in data:
                item.priceCurrency = data['priceCurrency']
            
            
            db.session.add(item)
            db.session.commit()
            
            return jsonify(item.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/items/<int:id>', methods=['PUT'])
    def update_item(id):
        """Update an existing item"""
        try:
            item = Item.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'datePosted' in data:
                item.datePosted = data['datePosted']
            
            if 'category' in data:
                item.category = data['category']
            
            if 'price' in data:
                item.price = data['price']
            
            if 'description' in data:
                item.description = data['description']
            
            if 'exchangeOption' in data:
                item.exchangeOption = data['exchangeOption']
            
            if 'title' in data:
                item.title = data['title']
            
            if 'condition' in data:
                item.condition = data['condition']
            
            if 'giveaway' in data:
                item.giveaway = data['giveaway']
            
            if 'status' in data:
                item.status = data['status']
            
            if 'itemId' in data:
                item.itemId = data['itemId']
            
            if 'priceCurrency' in data:
                item.priceCurrency = data['priceCurrency']
            
            
            db.session.commit()
            
            return jsonify(item.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/items/<int:id>', methods=['DELETE'])
    def delete_item(id):
        """Delete a item"""
        try:
            item = Item.query.get_or_404(id)
            db.session.delete(item)
            db.session.commit()
            
            return jsonify({'message': 'Item deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Notification CRUD Routes ==========
    
    @app.route('/notifications', methods=['GET'])
    def get_notifications():
        """Get all notifications"""
        try:
            notifications = Notification.query.all()
            return jsonify([notification.to_dict() for notification in notifications]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/notifications/<int:id>', methods=['GET'])
    def get_notification(id):
        """Get a specific notification by ID"""
        try:
            notification = Notification.query.get_or_404(id)
            return jsonify(notification.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/notifications', methods=['POST'])
    def create_notification():
        """Create a new notification"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            notification = Notification()
            
            if 'date' in data:
                notification.date = data['date']
            
            if 'type' in data:
                notification.type = data['type']
            
            if 'readStatus' in data:
                notification.readStatus = data['readStatus']
            
            if 'message' in data:
                notification.message = data['message']
            
            if 'notificationId' in data:
                notification.notificationId = data['notificationId']
            
            
            db.session.add(notification)
            db.session.commit()
            
            return jsonify(notification.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/notifications/<int:id>', methods=['PUT'])
    def update_notification(id):
        """Update an existing notification"""
        try:
            notification = Notification.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'date' in data:
                notification.date = data['date']
            
            if 'type' in data:
                notification.type = data['type']
            
            if 'readStatus' in data:
                notification.readStatus = data['readStatus']
            
            if 'message' in data:
                notification.message = data['message']
            
            if 'notificationId' in data:
                notification.notificationId = data['notificationId']
            
            
            db.session.commit()
            
            return jsonify(notification.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/notifications/<int:id>', methods=['DELETE'])
    def delete_notification(id):
        """Delete a notification"""
        try:
            notification = Notification.query.get_or_404(id)
            db.session.delete(notification)
            db.session.commit()
            
            return jsonify({'message': 'Notification deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Chat CRUD Routes ==========
    
    @app.route('/chats', methods=['GET'])
    def get_chats():
        """Get all chats"""
        try:
            chats = Chat.query.all()
            return jsonify([chat.to_dict() for chat in chats]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/chats/<int:id>', methods=['GET'])
    def get_chat(id):
        """Get a specific chat by ID"""
        try:
            chat = Chat.query.get_or_404(id)
            return jsonify(chat.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/chats', methods=['POST'])
    def create_chat():
        """Create a new chat"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            chat = Chat()
            
            if 'creationDate' in data:
                chat.creationDate = data['creationDate']
            
            if 'chatId' in data:
                chat.chatId = data['chatId']
            
            
            db.session.add(chat)
            db.session.commit()
            
            return jsonify(chat.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/chats/<int:id>', methods=['PUT'])
    def update_chat(id):
        """Update an existing chat"""
        try:
            chat = Chat.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'creationDate' in data:
                chat.creationDate = data['creationDate']
            
            if 'chatId' in data:
                chat.chatId = data['chatId']
            
            
            db.session.commit()
            
            return jsonify(chat.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/chats/<int:id>', methods=['DELETE'])
    def delete_chat(id):
        """Delete a chat"""
        try:
            chat = Chat.query.get_or_404(id)
            db.session.delete(chat)
            db.session.commit()
            
            return jsonify({'message': 'Chat deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Media CRUD Routes ==========
    
    @app.route('/medias', methods=['GET'])
    def get_medias():
        """Get all medias"""
        try:
            medias = Media.query.all()
            return jsonify([media.to_dict() for media in medias]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/medias/<int:id>', methods=['GET'])
    def get_media(id):
        """Get a specific media by ID"""
        try:
            media = Media.query.get_or_404(id)
            return jsonify(media.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/medias', methods=['POST'])
    def create_media():
        """Create a new media"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            media = Media()
            
            if 'type' in data:
                media.type = data['type']
            
            if 'url' in data:
                media.url = data['url']
            
            if 'mediaId' in data:
                media.mediaId = data['mediaId']
            
            
            db.session.add(media)
            db.session.commit()
            
            return jsonify(media.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/medias/<int:id>', methods=['PUT'])
    def update_media(id):
        """Update an existing media"""
        try:
            media = Media.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'type' in data:
                media.type = data['type']
            
            if 'url' in data:
                media.url = data['url']
            
            if 'mediaId' in data:
                media.mediaId = data['mediaId']
            
            
            db.session.commit()
            
            return jsonify(media.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/medias/<int:id>', methods=['DELETE'])
    def delete_media(id):
        """Delete a media"""
        try:
            media = Media.query.get_or_404(id)
            db.session.delete(media)
            db.session.commit()
            
            return jsonify({'message': 'Media deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Review CRUD Routes ==========
    
    @app.route('/reviews', methods=['GET'])
    def get_reviews():
        """Get all reviews"""
        try:
            reviews = Review.query.all()
            return jsonify([review.to_dict() for review in reviews]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/reviews/<int:id>', methods=['GET'])
    def get_review(id):
        """Get a specific review by ID"""
        try:
            review = Review.query.get_or_404(id)
            return jsonify(review.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/reviews', methods=['POST'])
    def create_review():
        """Create a new review"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            review = Review()
            
            if 'content' in data:
                review.content = data['content']
            
            if 'date' in data:
                review.date = data['date']
            
            if 'commentId' in data:
                review.commentId = data['commentId']
            
            
            db.session.add(review)
            db.session.commit()
            
            return jsonify(review.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/reviews/<int:id>', methods=['PUT'])
    def update_review(id):
        """Update an existing review"""
        try:
            review = Review.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'content' in data:
                review.content = data['content']
            
            if 'date' in data:
                review.date = data['date']
            
            if 'commentId' in data:
                review.commentId = data['commentId']
            
            
            db.session.commit()
            
            return jsonify(review.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/reviews/<int:id>', methods=['DELETE'])
    def delete_review(id):
        """Delete a review"""
        try:
            review = Review.query.get_or_404(id)
            db.session.delete(review)
            db.session.commit()
            
            return jsonify({'message': 'Review deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    
    # ========== Transaction CRUD Routes ==========
    
    @app.route('/transactions', methods=['GET'])
    def get_transactions():
        """Get all transactions"""
        try:
            transactions = Transaction.query.all()
            return jsonify([transaction.to_dict() for transaction in transactions]), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 500

    @app.route('/transactions/<int:id>', methods=['GET'])
    def get_transaction(id):
        """Get a specific transaction by ID"""
        try:
            transaction = Transaction.query.get_or_404(id)
            return jsonify(transaction.to_dict()), 200
        except Exception as e:
            return jsonify({'error': str(e)}), 404

    @app.route('/transactions', methods=['POST'])
    def create_transaction():
        """Create a new transaction"""
        try:
            data = request.get_json()
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            transaction = Transaction()
            
            if 'status' in data:
                transaction.status = data['status']
            
            if 'date' in data:
                transaction.date = data['date']
            
            if 'transactionId' in data:
                transaction.transactionId = data['transactionId']
            
            
            db.session.add(transaction)
            db.session.commit()
            
            return jsonify(transaction.to_dict()), 201
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/transactions/<int:id>', methods=['PUT'])
    def update_transaction(id):
        """Update an existing transaction"""
        try:
            transaction = Transaction.query.get_or_404(id)
            data = request.get_json()
            
            if not data:
                return jsonify({'error': 'No data provided'}), 400
            
            
            if 'status' in data:
                transaction.status = data['status']
            
            if 'date' in data:
                transaction.date = data['date']
            
            if 'transactionId' in data:
                transaction.transactionId = data['transactionId']
            
            
            db.session.commit()
            
            return jsonify(transaction.to_dict()), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    @app.route('/transactions/<int:id>', methods=['DELETE'])
    def delete_transaction(id):
        """Delete a transaction"""
        try:
            transaction = Transaction.query.get_or_404(id)
            db.session.delete(transaction)
            db.session.commit()
            
            return jsonify({'message': 'Transaction deleted successfully'}), 200
        except Exception as e:
            db.session.rollback()
            return jsonify({'error': str(e)}), 500

    