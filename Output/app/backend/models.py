from database import db
from datetime import datetime
from enum import Enum


class TransactionStatus(Enum):
    """Enumeration for TransactionStatus"""
    CANCELLED = "Cancelled"
    COMPLETED = "Completed"
    PENDING = "Pending"
    
class ItemCondition(Enum):
    """Enumeration for ItemCondition"""
    OK = "Ok"
    AWFUL = "Awful"
    BAD = "Bad"
    GOOD = "Good"
    EXCELLENT = "Excellent"
    
class ReportStatus(Enum):
    """Enumeration for ReportStatus"""
    PENDING = "Pending"
    SOLVED = "Solved"
    
class ItemStatus(Enum):
    """Enumeration for ItemStatus"""
    AVAILABLE = "Available"
    SOLD = "Sold"
    RESERVED = "Reserved"
    
class CurrencyType(Enum):
    """Enumeration for CurrencyType"""
    EUR = "EUR"
    GBP = "GBP"
    AUD = "AUD"
    JPY = "JPY"
    USD = "USD"
    
class MediaType(Enum):
    """Enumeration for MediaType"""
    VIDEO = "Video"
    IMAGE = "Image"
    
class NotificationType(Enum):
    """Enumeration for NotificationType"""
    MESSAGENOTIFICATION = "MessageNotification"
    ITEMNOTIFICATION = "ItemNotification"
    
class ReadStatus(Enum):
    """Enumeration for ReadStatus"""
    DELIVERED = "Delivered"
    SENT = "Sent"
    READ = "Read"
    
class User(db.Model):
    """SQLAlchemy model for User"""
    
    __tablename__ = 'users'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    joinDate = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    averageRating = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    userID = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    passwordHash = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    email = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    bio = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    isBanned = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    phone = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    address = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    name = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize User with provided attributes"""
        super(User, self).__init__()
        
        if 'joinDate' in kwargs:
            self.joinDate = kwargs['joinDate']
            
        if 'averageRating' in kwargs:
            self.averageRating = kwargs['averageRating']
            
        if 'userID' in kwargs:
            self.userID = kwargs['userID']
            
        if 'passwordHash' in kwargs:
            self.passwordHash = kwargs['passwordHash']
            
        if 'email' in kwargs:
            self.email = kwargs['email']
            
        if 'bio' in kwargs:
            self.bio = kwargs['bio']
            
        if 'isBanned' in kwargs:
            self.isBanned = kwargs['isBanned']
            
        if 'phone' in kwargs:
            self.phone = kwargs['phone']
            
        if 'address' in kwargs:
            self.address = kwargs['address']
            
        if 'name' in kwargs:
            self.name = kwargs['name']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'joinDate': self.joinDate,
            'averageRating': self.averageRating,
            'userID': self.userID,
            'passwordHash': self.passwordHash,
            'email': self.email,
            'bio': self.bio,
            'isBanned': self.isBanned,
            'phone': self.phone,
            'address': self.address,
            'name': self.name,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'joinDate' in data:
            instance.joinDate = data['joinDate']
                
        if 'averageRating' in data:
            instance.averageRating = data['averageRating']
                
        if 'userID' in data:
            instance.userID = data['userID']
                
        if 'passwordHash' in data:
            instance.passwordHash = data['passwordHash']
                
        if 'email' in data:
            instance.email = data['email']
                
        if 'bio' in data:
            instance.bio = data['bio']
                
        if 'isBanned' in data:
            instance.isBanned = data['isBanned']
                
        if 'phone' in data:
            instance.phone = data['phone']
                
        if 'address' in data:
            instance.address = data['address']
                
        if 'name' in data:
            instance.name = data['name']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<User {self.id}>'
        

class Rating(db.Model):
    """SQLAlchemy model for Rating"""
    
    __tablename__ = 'ratings'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    ratingId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    comment = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    rating = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    date = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Rating with provided attributes"""
        super(Rating, self).__init__()
        
        if 'ratingId' in kwargs:
            self.ratingId = kwargs['ratingId']
            
        if 'comment' in kwargs:
            self.comment = kwargs['comment']
            
        if 'rating' in kwargs:
            self.rating = kwargs['rating']
            
        if 'date' in kwargs:
            self.date = kwargs['date']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'ratingId': self.ratingId,
            'comment': self.comment,
            'rating': self.rating,
            'date': self.date,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'ratingId' in data:
            instance.ratingId = data['ratingId']
                
        if 'comment' in data:
            instance.comment = data['comment']
                
        if 'rating' in data:
            instance.rating = data['rating']
                
        if 'date' in data:
            instance.date = data['date']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Rating {self.id}>'
        

class Category(db.Model):
    """SQLAlchemy model for Category"""
    
    __tablename__ = 'categorys'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    description = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    name = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    categoryId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Category with provided attributes"""
        super(Category, self).__init__()
        
        if 'description' in kwargs:
            self.description = kwargs['description']
            
        if 'name' in kwargs:
            self.name = kwargs['name']
            
        if 'categoryId' in kwargs:
            self.categoryId = kwargs['categoryId']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'description': self.description,
            'name': self.name,
            'categoryId': self.categoryId,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'description' in data:
            instance.description = data['description']
                
        if 'name' in data:
            instance.name = data['name']
                
        if 'categoryId' in data:
            instance.categoryId = data['categoryId']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Category {self.id}>'
        

class Report(db.Model):
    """SQLAlchemy model for Report"""
    
    __tablename__ = 'reports'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    reportId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    date = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    status = db.Column(db.Enum(ReportStatus), nullable=True)
            
    details = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Report with provided attributes"""
        super(Report, self).__init__()
        
        if 'reportId' in kwargs:
            self.reportId = kwargs['reportId']
            
        if 'date' in kwargs:
            self.date = kwargs['date']
            
        if 'status' in kwargs:
            self.status = kwargs['status']
            
        if 'details' in kwargs:
            self.details = kwargs['details']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'reportId': self.reportId,
            'date': self.date,
            'status': self.status.value if self.status else None,
            'details': self.details,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'reportId' in data:
            instance.reportId = data['reportId']
                
        if 'date' in data:
            instance.date = data['date']
                
        if 'status' in data:
            if data['status']:
                instance.status = ReportStatus(data['status'])
                
        if 'details' in data:
            instance.details = data['details']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Report {self.id}>'
        

class Message(db.Model):
    """SQLAlchemy model for Message"""
    
    __tablename__ = 'messages'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    content = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    readStatus = db.Column(db.Enum(ReadStatus), nullable=True)
            
    timestamp = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    messageId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Message with provided attributes"""
        super(Message, self).__init__()
        
        if 'content' in kwargs:
            self.content = kwargs['content']
            
        if 'readStatus' in kwargs:
            self.readStatus = kwargs['readStatus']
            
        if 'timestamp' in kwargs:
            self.timestamp = kwargs['timestamp']
            
        if 'messageId' in kwargs:
            self.messageId = kwargs['messageId']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'content': self.content,
            'readStatus': self.readStatus.value if self.readStatus else None,
            'timestamp': self.timestamp,
            'messageId': self.messageId,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'content' in data:
            instance.content = data['content']
                
        if 'readStatus' in data:
            if data['readStatus']:
                instance.readStatus = ReadStatus(data['readStatus'])
                
        if 'timestamp' in data:
            instance.timestamp = data['timestamp']
                
        if 'messageId' in data:
            instance.messageId = data['messageId']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Message {self.id}>'
        

class Item(db.Model):
    """SQLAlchemy model for Item"""
    
    __tablename__ = 'items'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    datePosted = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    category = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    price = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    description = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    exchangeOption = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    title = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    condition = db.Column(db.Enum(ItemCondition), nullable=True)
            
    giveaway = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    status = db.Column(db.Enum(ItemStatus), nullable=True)
            
    itemId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    priceCurrency = db.Column(db.Enum(CurrencyType), nullable=True)
            
    def __init__(self, **kwargs):
        """Initialize Item with provided attributes"""
        super(Item, self).__init__()
        
        if 'datePosted' in kwargs:
            self.datePosted = kwargs['datePosted']
            
        if 'category' in kwargs:
            self.category = kwargs['category']
            
        if 'price' in kwargs:
            self.price = kwargs['price']
            
        if 'description' in kwargs:
            self.description = kwargs['description']
            
        if 'exchangeOption' in kwargs:
            self.exchangeOption = kwargs['exchangeOption']
            
        if 'title' in kwargs:
            self.title = kwargs['title']
            
        if 'condition' in kwargs:
            self.condition = kwargs['condition']
            
        if 'giveaway' in kwargs:
            self.giveaway = kwargs['giveaway']
            
        if 'status' in kwargs:
            self.status = kwargs['status']
            
        if 'itemId' in kwargs:
            self.itemId = kwargs['itemId']
            
        if 'priceCurrency' in kwargs:
            self.priceCurrency = kwargs['priceCurrency']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'datePosted': self.datePosted,
            'category': self.category,
            'price': self.price,
            'description': self.description,
            'exchangeOption': self.exchangeOption,
            'title': self.title,
            'condition': self.condition.value if self.condition else None,
            'giveaway': self.giveaway,
            'status': self.status.value if self.status else None,
            'itemId': self.itemId,
            'priceCurrency': self.priceCurrency.value if self.priceCurrency else None,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'datePosted' in data:
            instance.datePosted = data['datePosted']
                
        if 'category' in data:
            instance.category = data['category']
                
        if 'price' in data:
            instance.price = data['price']
                
        if 'description' in data:
            instance.description = data['description']
                
        if 'exchangeOption' in data:
            instance.exchangeOption = data['exchangeOption']
                
        if 'title' in data:
            instance.title = data['title']
                
        if 'condition' in data:
            if data['condition']:
                instance.condition = ItemCondition(data['condition'])
                
        if 'giveaway' in data:
            instance.giveaway = data['giveaway']
                
        if 'status' in data:
            if data['status']:
                instance.status = ItemStatus(data['status'])
                
        if 'itemId' in data:
            instance.itemId = data['itemId']
                
        if 'priceCurrency' in data:
            if data['priceCurrency']:
                instance.priceCurrency = CurrencyType(data['priceCurrency'])
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Item {self.id}>'
        

class Notification(db.Model):
    """SQLAlchemy model for Notification"""
    
    __tablename__ = 'notifications'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    date = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    type = db.Column(db.Enum(NotificationType), nullable=True)
            
    readStatus = db.Column(db.Enum(ReadStatus), nullable=True)
            
    message = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    notificationId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Notification with provided attributes"""
        super(Notification, self).__init__()
        
        if 'date' in kwargs:
            self.date = kwargs['date']
            
        if 'type' in kwargs:
            self.type = kwargs['type']
            
        if 'readStatus' in kwargs:
            self.readStatus = kwargs['readStatus']
            
        if 'message' in kwargs:
            self.message = kwargs['message']
            
        if 'notificationId' in kwargs:
            self.notificationId = kwargs['notificationId']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'date': self.date,
            'type': self.type.value if self.type else None,
            'readStatus': self.readStatus.value if self.readStatus else None,
            'message': self.message,
            'notificationId': self.notificationId,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'date' in data:
            instance.date = data['date']
                
        if 'type' in data:
            if data['type']:
                instance.type = NotificationType(data['type'])
                
        if 'readStatus' in data:
            if data['readStatus']:
                instance.readStatus = ReadStatus(data['readStatus'])
                
        if 'message' in data:
            instance.message = data['message']
                
        if 'notificationId' in data:
            instance.notificationId = data['notificationId']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Notification {self.id}>'
        

class Chat(db.Model):
    """SQLAlchemy model for Chat"""
    
    __tablename__ = 'chats'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    creationDate = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    chatId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Chat with provided attributes"""
        super(Chat, self).__init__()
        
        if 'creationDate' in kwargs:
            self.creationDate = kwargs['creationDate']
            
        if 'chatId' in kwargs:
            self.chatId = kwargs['chatId']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'creationDate': self.creationDate,
            'chatId': self.chatId,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'creationDate' in data:
            instance.creationDate = data['creationDate']
                
        if 'chatId' in data:
            instance.chatId = data['chatId']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Chat {self.id}>'
        

class Media(db.Model):
    """SQLAlchemy model for Media"""
    
    __tablename__ = 'medias'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    type = db.Column(db.Enum(MediaType), nullable=True)
            
    url = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    mediaId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Media with provided attributes"""
        super(Media, self).__init__()
        
        if 'type' in kwargs:
            self.type = kwargs['type']
            
        if 'url' in kwargs:
            self.url = kwargs['url']
            
        if 'mediaId' in kwargs:
            self.mediaId = kwargs['mediaId']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'type': self.type.value if self.type else None,
            'url': self.url,
            'mediaId': self.mediaId,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'type' in data:
            if data['type']:
                instance.type = MediaType(data['type'])
                
        if 'url' in data:
            instance.url = data['url']
                
        if 'mediaId' in data:
            instance.mediaId = data['mediaId']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Media {self.id}>'
        

class Review(db.Model):
    """SQLAlchemy model for Review"""
    
    __tablename__ = 'reviews'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    content = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    date = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    commentId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Review with provided attributes"""
        super(Review, self).__init__()
        
        if 'content' in kwargs:
            self.content = kwargs['content']
            
        if 'date' in kwargs:
            self.date = kwargs['date']
            
        if 'commentId' in kwargs:
            self.commentId = kwargs['commentId']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'content': self.content,
            'date': self.date,
            'commentId': self.commentId,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'content' in data:
            instance.content = data['content']
                
        if 'date' in data:
            instance.date = data['date']
                
        if 'commentId' in data:
            instance.commentId = data['commentId']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Review {self.id}>'
        

class Transaction(db.Model):
    """SQLAlchemy model for Transaction"""
    
    __tablename__ = 'transactions'
    
    # Primary key - using the first integer attribute as ID or creating a default one
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    
    
    # Attributes
    status = db.Column(db.Enum(TransactionStatus), nullable=True)
            
    date = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    transactionId = db.Column(db.Text, nullable=True)  # Default for unknown types
            
    def __init__(self, **kwargs):
        """Initialize Transaction with provided attributes"""
        super(Transaction, self).__init__()
        
        if 'status' in kwargs:
            self.status = kwargs['status']
            
        if 'date' in kwargs:
            self.date = kwargs['date']
            
        if 'transactionId' in kwargs:
            self.transactionId = kwargs['transactionId']
            

    def to_dict(self):
        """Convert model instance to dictionary"""
        return {
            'id': self.id,
            'status': self.status.value if self.status else None,
            'date': self.date,
            'transactionId': self.transactionId,
        }

    @classmethod
    def from_dict(cls, data):
        """Create model instance from dictionary"""
        instance = cls()
        
        if 'status' in data:
            if data['status']:
                instance.status = TransactionStatus(data['status'])
                
        if 'date' in data:
            instance.date = data['date']
                
        if 'transactionId' in data:
            instance.transactionId = data['transactionId']
                
        return instance

    def __repr__(self):
        """String representation of the model"""
        
        return f'<Transaction {self.id}>'
        

