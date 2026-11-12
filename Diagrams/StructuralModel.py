####################
# STRUCTURAL MODEL #
####################

from besser.BUML.metamodel.structural import (
    Class, Property, Method, Parameter,
    BinaryAssociation, Generalization, DomainModel,
    Enumeration, EnumerationLiteral, Multiplicity,
    StringType, IntegerType, FloatType, BooleanType,
    TimeType, DateType, DateTimeType, TimeDeltaType,
    AnyType, Constraint, AssociationClass, Metadata
)

# Enumerations
ItemStatus: Enumeration = Enumeration(
    name="ItemStatus",
    literals={
            EnumerationLiteral(name="Available"),
			EnumerationLiteral(name="Reserved"),
			EnumerationLiteral(name="Sold")
    }
)

ReadStatus: Enumeration = Enumeration(
    name="ReadStatus",
    literals={
            EnumerationLiteral(name="Sent"),
			EnumerationLiteral(name="Delivered"),
			EnumerationLiteral(name="Read")
    }
)

ReportStatus: Enumeration = Enumeration(
    name="ReportStatus",
    literals={
            EnumerationLiteral(name="Pending"),
			EnumerationLiteral(name="Solved")
    }
)

MediaType: Enumeration = Enumeration(
    name="MediaType",
    literals={
            EnumerationLiteral(name="Image"),
			EnumerationLiteral(name="Video"),
			EnumerationLiteral(name="Sound")
    }
)

ItemCondition: Enumeration = Enumeration(
    name="ItemCondition",
    literals={
            EnumerationLiteral(name="Awful"),
			EnumerationLiteral(name="Bad"),
			EnumerationLiteral(name="Ok"),
			EnumerationLiteral(name="Good"),
			EnumerationLiteral(name="Excellent")
    }
)

NotificationType: Enumeration = Enumeration(
    name="NotificationType",
    literals={
            EnumerationLiteral(name="MessageNotification"),
			EnumerationLiteral(name="ItemNotification"),
			EnumerationLiteral(name="CommunityNotification")
    }
)

CurrencyType: Enumeration = Enumeration(
    name="CurrencyType",
    literals={
            EnumerationLiteral(name="USD"),
			EnumerationLiteral(name="Eur")
    }
)

TransactionStatus: Enumeration = Enumeration(
    name="TransactionStatus",
    literals={
            EnumerationLiteral(name="Pending"),
			EnumerationLiteral(name="Completed"),
			EnumerationLiteral(name="Cancelled")
    }
)

# Classes
User = Class(name="User")
Community = Class(name="Community")
Item = Class(name="Item")
Transaction = Class(name="Transaction")
Message = Class(name="Message")
Chat = Class(name="Chat")
Rating = Class(name="Rating")
Category = Class(name="Category")
Review = Class(name="Review")
Report = Class(name="Report")
Notification = Class(name="Notification")
Media = Class(name="Media")

# User class attributes and methods
User_phone: Property = Property(name="phone", type=StringType)
User_userID: Property = Property(name="userID", type=IntegerType)
User_address: Property = Property(name="address", type=StringType)
User_name: Property = Property(name="name", type=StringType)
User_bio: Property = Property(name="bio", type=StringType)
User_email: Property = Property(name="email", type=StringType)
User_joinDate: Property = Property(name="joinDate", type=DateTimeType)
User_passwordHash: Property = Property(name="passwordHash", type=StringType)
User_averageRating: Property = Property(name="averageRating", type=IntegerType)
User_isBanned: Property = Property(name="isBanned", type=BooleanType)
User.attributes={User_joinDate, User_name, User_email, User_averageRating, User_phone, User_address, User_passwordHash, User_bio, User_userID, User_isBanned}

# Community class attributes and methods
Community_communityId: Property = Property(name="communityId", type=IntegerType)
Community_name: Property = Property(name="name", type=StringType)
Community_description: Property = Property(name="description", type=StringType)
Community_location: Property = Property(name="location", type=StringType)
Community_creationDate: Property = Property(name="creationDate", type=DateTimeType)
Community_visibility: Property = Property(name="visibility", type=BooleanType)
Community.attributes={Community_name, Community_location, Community_communityId, Community_visibility, Community_description, Community_creationDate}

# Item class attributes and methods
Item_itemId: Property = Property(name="itemId", type=IntegerType)
Item_title: Property = Property(name="title", type=StringType)
Item_description: Property = Property(name="description", type=StringType)
Item_category: Property = Property(name="category", type=StringType)
Item_condition: Property = Property(name="condition", type=ItemCondition)
Item_price: Property = Property(name="price", type=FloatType)
Item_priceCurrency: Property = Property(name="priceCurrency", type=CurrencyType)
Item_exchangeOption: Property = Property(name="exchangeOption", type=BooleanType)
Item_giveaway: Property = Property(name="giveaway", type=BooleanType)
Item_datePosted: Property = Property(name="datePosted", type=DateTimeType)
Item_status: Property = Property(name="status", type=ItemStatus)
Item_isBanned: Property = Property(name="isBanned", type=BooleanType)
Item.attributes={Item_datePosted, Item_priceCurrency, Item_title, Item_giveaway, Item_category, Item_isBanned, Item_itemId, Item_condition, Item_exchangeOption, Item_price, Item_status, Item_description}

# Transaction class attributes and methods
Transaction_status: Property = Property(name="status", type=TransactionStatus)
Transaction_transactionId: Property = Property(name="transactionId", type=IntegerType)
Transaction_date: Property = Property(name="date", type=DateTimeType)
Transaction.attributes={Transaction_status, Transaction_transactionId, Transaction_date}

# Message class attributes and methods
Message_messageId: Property = Property(name="messageId", type=IntegerType)
Message_content: Property = Property(name="content", type=IntegerType)
Message_timestamp: Property = Property(name="timestamp", type=DateTimeType)
Message_readStatus: Property = Property(name="readStatus", type=ReadStatus)
Message.attributes={Message_timestamp, Message_messageId, Message_readStatus, Message_content}

# Chat class attributes and methods
Chat_chatId: Property = Property(name="chatId", type=IntegerType)
Chat_creationDate: Property = Property(name="creationDate", type=DateTimeType)
Chat.attributes={Chat_creationDate, Chat_chatId}

# Rating class attributes and methods
Rating_ratingId: Property = Property(name="ratingId", type=IntegerType)
Rating_comment: Property = Property(name="comment", type=StringType)
Rating_date: Property = Property(name="date", type=DateTimeType)
Rating_rating: Property = Property(name="rating", type=IntegerType)
Rating.attributes={Rating_date, Rating_rating, Rating_comment, Rating_ratingId}

# Category class attributes and methods
Category_categoryId: Property = Property(name="categoryId", type=IntegerType)
Category_name: Property = Property(name="name", type=StringType)
Category_description: Property = Property(name="description", type=StringType)
Category.attributes={Category_description, Category_categoryId, Category_name}

# Review class attributes and methods
Review_commentId: Property = Property(name="commentId", type=IntegerType)
Review_content: Property = Property(name="content", type=StringType)
Review_date: Property = Property(name="date", type=DateTimeType)
Review.attributes={Review_date, Review_commentId, Review_content}

# Report class attributes and methods
Report_reportId: Property = Property(name="reportId", type=IntegerType)
Report_details: Property = Property(name="details", type=StringType)
Report_date: Property = Property(name="date", type=DateTimeType)
Report_status: Property = Property(name="status", type=ReportStatus)
Report.attributes={Report_details, Report_status, Report_date, Report_reportId}

# Notification class attributes and methods
Notification_type: Property = Property(name="type", type=NotificationType)
Notification_message: Property = Property(name="message", type=StringType)
Notification_date: Property = Property(name="date", type=DateTimeType)
Notification_readStatus: Property = Property(name="readStatus", type=ReadStatus)
Notification_notificationId: Property = Property(name="notificationId", type=IntegerType)
Notification.attributes={Notification_date, Notification_type, Notification_message, Notification_notificationId, Notification_readStatus}

# Media class attributes and methods
Media_mediaId: Property = Property(name="mediaId", type=IntegerType)
Media_url: Property = Property(name="url", type=StringType)
Media_type: Property = Property(name="type", type=MediaType)
Media.attributes={Media_type, Media_url, Media_mediaId}

# Relationships
Message_User_3: BinaryAssociation = BinaryAssociation(
    name="Message_User_3",
    ends={
        Property(name="message_4", type=Message, multiplicity=Multiplicity(1, 1)),
        Property(name="user_6", type=User, multiplicity=Multiplicity(1, 1))
    }
)
User_Item: BinaryAssociation = BinaryAssociation(
    name="User_Item",
    ends={
        Property(name="user", type=User, multiplicity=Multiplicity(1, 1)),
        Property(name="item", type=Item, multiplicity=Multiplicity(0, 9999))
    }
)
Receiver: BinaryAssociation = BinaryAssociation(
    name="Receiver",
    ends={
        Property(name="message_5", type=Message, multiplicity=Multiplicity(0, 9999)),
        Property(name="user_7", type=User, multiplicity=Multiplicity(1, 1))
    }
)
User_Community: BinaryAssociation = BinaryAssociation(
    name="User_Community",
    ends={
        Property(name="user_1", type=User, multiplicity=Multiplicity(0, 9999)),
        Property(name="community", type=Community, multiplicity=Multiplicity(0, 9999))
    }
)
Sender: BinaryAssociation = BinaryAssociation(
    name="Sender",
    ends={
        Property(name="user_2", type=User, multiplicity=Multiplicity(1, 1)),
        Property(name="message", type=Message, multiplicity=Multiplicity(0, 9999))
    }
)
Message_User_4: BinaryAssociation = BinaryAssociation(
    name="Message_User_4",
    ends={
        Property(name="message_6", type=Message, multiplicity=Multiplicity(1, 1)),
        Property(name="user_8", type=User, multiplicity=Multiplicity(1, 1))
    }
)
Message_User: BinaryAssociation = BinaryAssociation(
    name="Message_User",
    ends={
        Property(name="message_1", type=Message, multiplicity=Multiplicity(1, 1)),
        Property(name="user_3", type=User, multiplicity=Multiplicity(1, 1))
    }
)
Rated: BinaryAssociation = BinaryAssociation(
    name="Rated",
    ends={
        Property(name="rating", type=Rating, multiplicity=Multiplicity(0, 9999)),
        Property(name="user_9", type=User, multiplicity=Multiplicity(1, 1))
    }
)
Message_User_1: BinaryAssociation = BinaryAssociation(
    name="Message_User_1",
    ends={
        Property(name="message_2", type=Message, multiplicity=Multiplicity(1, 1)),
        Property(name="user_4", type=User, multiplicity=Multiplicity(1, 1))
    }
)
Ratee: BinaryAssociation = BinaryAssociation(
    name="Ratee",
    ends={
        Property(name="rating_1", type=Rating, multiplicity=Multiplicity(0, 9999)),
        Property(name="user_10", type=User, multiplicity=Multiplicity(1, 1))
    }
)
Message_User_2: BinaryAssociation = BinaryAssociation(
    name="Message_User_2",
    ends={
        Property(name="message_3", type=Message, multiplicity=Multiplicity(1, 1)),
        Property(name="user_5", type=User, multiplicity=Multiplicity(1, 1))
    }
)
User_Transaction: BinaryAssociation = BinaryAssociation(
    name="User_Transaction",
    ends={
        Property(name="user_11", type=User, multiplicity=Multiplicity(2, 2)),
        Property(name="transaction", type=Transaction, multiplicity=Multiplicity(0, 9999))
    }
)
Item_Transaction: BinaryAssociation = BinaryAssociation(
    name="Item_Transaction",
    ends={
        Property(name="item_1", type=Item, multiplicity=Multiplicity(1, 9999)),
        Property(name="transaction_1", type=Transaction, multiplicity=Multiplicity(0, 9999))
    }
)
Chat_User: BinaryAssociation = BinaryAssociation(
    name="Chat_User",
    ends={
        Property(name="chat_1", type=Chat, multiplicity=Multiplicity(0, 9999)),
        Property(name="user_12", type=User, multiplicity=Multiplicity(2, 9999))
    }
)
Item_Review: BinaryAssociation = BinaryAssociation(
    name="Item_Review",
    ends={
        Property(name="item_2", type=Item, multiplicity=Multiplicity(1, 1)),
        Property(name="review", type=Review, multiplicity=Multiplicity(0, 9999))
    }
)
Item_Category: BinaryAssociation = BinaryAssociation(
    name="Item_Category",
    ends={
        Property(name="item_4", type=Item, multiplicity=Multiplicity(0, 9999)),
        Property(name="category", type=Category, multiplicity=Multiplicity(0, 9999))
    }
)
ReportItem: BinaryAssociation = BinaryAssociation(
    name="ReportItem",
    ends={
        Property(name="item_3", type=Item, multiplicity=Multiplicity(0, 1)),
        Property(name="report", type=Report, multiplicity=Multiplicity(0, 9999))
    }
)
Review_User: BinaryAssociation = BinaryAssociation(
    name="Review_User",
    ends={
        Property(name="review_1", type=Review, multiplicity=Multiplicity(0, 9999)),
        Property(name="user_13", type=User, multiplicity=Multiplicity(1, 1))
    }
)
Message_Chat: BinaryAssociation = BinaryAssociation(
    name="Message_Chat",
    ends={
        Property(name="message_7", type=Message, multiplicity=Multiplicity(0, 9999)),
        Property(name="chat", type=Chat, multiplicity=Multiplicity(1, 1), is_composite=True)
    }
)
Media_Item: BinaryAssociation = BinaryAssociation(
    name="Media_Item",
    ends={
        Property(name="media", type=Media, multiplicity=Multiplicity(0, 9999)),
        Property(name="item_5", type=Item, multiplicity=Multiplicity(0, 1))
    }
)
Created: BinaryAssociation = BinaryAssociation(
    name="Created",
    ends={
        Property(name="report_1", type=Report, multiplicity=Multiplicity(0, 9999)),
        Property(name="user_14", type=User, multiplicity=Multiplicity(1, 1))
    }
)
User_Media: BinaryAssociation = BinaryAssociation(
    name="User_Media",
    ends={
        Property(name="user_17", type=User, multiplicity=Multiplicity(0, 1)),
        Property(name="media_1", type=Media, multiplicity=Multiplicity(1, 1))
    }
)
Community_Community: BinaryAssociation = BinaryAssociation(
    name="Community_Community",
    ends={
        Property(name="Parent", type=Community, multiplicity=Multiplicity(0, 1)),
        Property(name="Child", type=Community, multiplicity=Multiplicity(0, 9999))
    }
)
ReportedUser: BinaryAssociation = BinaryAssociation(
    name="ReportedUser",
    ends={
        Property(name="report_2", type=Report, multiplicity=Multiplicity(0, 9999)),
        Property(name="user_15", type=User, multiplicity=Multiplicity(0, 1))
    }
)
Notification_User: BinaryAssociation = BinaryAssociation(
    name="Notification_User",
    ends={
        Property(name="notification", type=Notification, multiplicity=Multiplicity(0, 9999)),
        Property(name="user_16", type=User, multiplicity=Multiplicity(1, 1))
    }
)

# Domain Model
domain_model = DomainModel(
    name="Class_Diagram",
    types={User, Community, Item, Transaction, Message, Chat, Rating, Category, Review, Report, Notification, Media, ItemStatus, ReadStatus, ReportStatus, MediaType, ItemCondition, NotificationType, CurrencyType, TransactionStatus},
    associations={Message_User_3, User_Item, Receiver, User_Community, Sender, Message_User_4, Message_User, Rated, Message_User_1, Ratee, Message_User_2, User_Transaction, Item_Transaction, Chat_User, Item_Review, Item_Category, ReportItem, Review_User, Message_Chat, Media_Item, Created, User_Media, Community_Community, ReportedUser, Notification_User},
    generalizations={},
    metadata=None
)


######################
# PROJECT DEFINITION #
######################

from besser.BUML.metamodel.project import Project
from besser.BUML.metamodel.structural.structural import Metadata

metadata = Metadata(description="New project")
project = Project(
    name="tacs",
    models=[domain_model],
    owner="User",
    metadata=metadata
)

# ####################
# # STRUCTURAL MODEL #
# ####################

# from besser.BUML.metamodel.structural import (
#     Class, Property, Method, Parameter,
#     BinaryAssociation, Generalization, DomainModel,
#     Enumeration, EnumerationLiteral, Multiplicity,
#     StringType, IntegerType, FloatType, BooleanType,
#     TimeType, DateType, DateTimeType, TimeDeltaType,
#     AnyType, Constraint, AssociationClass, Metadata
# )

# # Enumerations
# ItemCondition: Enumeration = Enumeration(
#     name="ItemCondition",
#     literals={
#             EnumerationLiteral(name="Awful"),
# 			EnumerationLiteral(name="Bad"),
# 			EnumerationLiteral(name="Ok"),
# 			EnumerationLiteral(name="Good"),
# 			EnumerationLiteral(name="Excellent")
#     }
# )

# CurrencyType: Enumeration = Enumeration(
#     name="CurrencyType",
#     literals={
#             EnumerationLiteral(name="USD"),
# 			EnumerationLiteral(name="Eur")
#     }
# )

# TransactionStatus: Enumeration = Enumeration(
#     name="TransactionStatus",
#     literals={
#             EnumerationLiteral(name="Pending"),
# 			EnumerationLiteral(name="Completed"),
# 			EnumerationLiteral(name="Cancelled")
#     }
# )

# ItemStatus: Enumeration = Enumeration(
#     name="ItemStatus",
#     literals={
#             EnumerationLiteral(name="Available"),
# 			EnumerationLiteral(name="Reserved"),
# 			EnumerationLiteral(name="Sold")
#     }
# )

# ReadStatus: Enumeration = Enumeration(
#     name="ReadStatus",
#     literals={
#             EnumerationLiteral(name="Sent"),
# 			EnumerationLiteral(name="Delivered"),
# 			EnumerationLiteral(name="Read")
#     }
# )

# ReportStatus: Enumeration = Enumeration(
#     name="ReportStatus",
#     literals={
#             EnumerationLiteral(name="Pending"),
# 			EnumerationLiteral(name="Solved")
#     }
# )

# MediaType: Enumeration = Enumeration(
#     name="MediaType",
#     literals={
#             EnumerationLiteral(name="Image"),
# 			EnumerationLiteral(name="Video"),
# 			EnumerationLiteral(name="Sound")
#     }
# )

# # Classes
# User = Class(name="User")
# Community = Class(name="Community")
# Item = Class(name="Item")
# Transaction = Class(name="Transaction")
# Message = Class(name="Message")
# Chat = Class(name="Chat")
# Rating = Class(name="Rating")
# Category = Class(name="Category")
# Review = Class(name="Review")
# Report = Class(name="Report")
# Notification = Class(name="Notification")
# Media = Class(name="Media")

# # User class attributes and methods
# User_userID: Property = Property(name="userID", type=IntegerType)
# User_name: Property = Property(name="name", type=StringType)
# User_email: Property = Property(name="email", type=StringType)
# User_passwordHash: Property = Property(name="passwordHash", type=StringType)
# User_phone: Property = Property(name="phone", type=StringType)
# User_address: Property = Property(name="address", type=StringType)
# User_bio: Property = Property(name="bio", type=StringType)
# User_joinDate: Property = Property(name="joinDate", type=DateTimeType)
# User_averageRating: Property = Property(name="averageRating", type=FloatType)
# User_status: Property = Property(name="status", type=BooleanType)
# User.attributes={User_address, User_bio, User_joinDate, User_averageRating, User_passwordHash, User_userID, User_phone, User_name, User_email, User_status}

# # Community class attributes and methods
# Community_communityId: Property = Property(name="communityId", type=IntegerType)
# Community_name: Property = Property(name="name", type=StringType)
# Community_description: Property = Property(name="description", type=StringType)
# Community_location: Property = Property(name="location", type=StringType)
# Community_creationDate: Property = Property(name="creationDate", type=DateTimeType)
# Community_visibility: Property = Property(name="visibility", type=BooleanType)
# Community.attributes={Community_description, Community_name, Community_visibility, Community_creationDate, Community_location, Community_communityId}

# # Item class attributes and methods
# Item_title: Property = Property(name="title", type=StringType)
# Item_description: Property = Property(name="description", type=StringType)
# Item_category: Property = Property(name="category", type=StringType)
# Item_condition: Property = Property(name="condition", type=ItemCondition)
# Item_price: Property = Property(name="price", type=IntegerType)
# Item_priceCurrency: Property = Property(name="priceCurrency", type=CurrencyType)
# Item_exchangeOption: Property = Property(name="exchangeOption", type=BooleanType)
# Item_giveaway: Property = Property(name="giveaway", type=BooleanType)
# Item_datePosted: Property = Property(name="datePosted", type=DateTimeType)
# Item_status: Property = Property(name="status", type=ItemStatus)
# Item_itemId: Property = Property(name="itemId", type=IntegerType)
# Item.attributes={Item_price, Item_category, Item_exchangeOption, Item_description, Item_giveaway, Item_status, Item_priceCurrency, Item_datePosted, Item_itemId, Item_title, Item_condition}

# # Transaction class attributes and methods
# Transaction_transactionId: Property = Property(name="transactionId", type=IntegerType)
# Transaction_date: Property = Property(name="date", type=DateTimeType)
# Transaction_status: Property = Property(name="status", type=TransactionStatus)
# Transaction.attributes={Transaction_date, Transaction_status, Transaction_transactionId}

# # Message class attributes and methods
# Message_messageId: Property = Property(name="messageId", type=IntegerType)
# Message_content: Property = Property(name="content", type=StringType)
# Message_timestamp: Property = Property(name="timestamp", type=DateTimeType)
# Message_readStatus: Property = Property(name="readStatus", type=ReadStatus)
# Message.attributes={Message_content, Message_messageId, Message_readStatus, Message_timestamp}

# # Chat class attributes and methods
# Chat_chatId: Property = Property(name="chatId", type=IntegerType)
# Chat_creationDate: Property = Property(name="creationDate", type=DateTimeType)
# Chat.attributes={Chat_creationDate, Chat_chatId}

# # Rating class attributes and methods
# Rating_ratingId: Property = Property(name="ratingId", type=IntegerType)
# Rating_comment: Property = Property(name="comment", type=StringType)
# Rating_date: Property = Property(name="date", type=DateTimeType)
# Rating.attributes={Rating_date, Rating_comment, Rating_ratingId}

# # Category class attributes and methods
# Category_name: Property = Property(name="name", type=StringType)
# Category_description: Property = Property(name="description", type=StringType)
# Category_parentCategory: Property = Property(name="parentCategory", type=StringType)
# Category_categoryId: Property = Property(name="categoryId", type=IntegerType)
# Category.attributes={Category_parentCategory, Category_categoryId, Category_description, Category_name}

# # Review class attributes and methods
# Review_commentId: Property = Property(name="commentId", type=IntegerType)
# Review_content: Property = Property(name="content", type=StringType)
# Review_date: Property = Property(name="date", type=DateTimeType)
# Review.attributes={Review_content, Review_date, Review_commentId}

# # Report class attributes and methods
# Report_reportId: Property = Property(name="reportId", type=IntegerType)
# Report_details: Property = Property(name="details", type=StringType)
# Report_date: Property = Property(name="date", type=DateTimeType)
# Report_status: Property = Property(name="status", type=ReportStatus)
# Report.attributes={Report_reportId, Report_status, Report_date, Report_details}

# # Notification class attributes and methods
# Notification_notificationId: Property = Property(name="notificationId", type=IntegerType)
# Notification_type: Property = Property(name="type", type=StringType)
# Notification_message: Property = Property(name="message", type=StringType)
# Notification_date: Property = Property(name="date", type=StringType)
# Notification_readStatus: Property = Property(name="readStatus", type=ReadStatus)
# Notification.attributes={Notification_readStatus, Notification_type, Notification_date, Notification_notificationId, Notification_message}

# # Media class attributes and methods
# Media_mediaId: Property = Property(name="mediaId", type=IntegerType)
# Media_url: Property = Property(name="url", type=StringType)
# Media_type: Property = Property(name="type", type=MediaType)
# Media.attributes={Media_type, Media_url, Media_mediaId}

# # Relationships
# Message_User: BinaryAssociation = BinaryAssociation(
#     name="Message_User",
#     ends={
#         Property(name="user_3", type=User, multiplicity=Multiplicity(1, 1)),
#         Property(name="message_1", type=Message, multiplicity=Multiplicity(1, 1))
#     }
# )
# Message_User_1: BinaryAssociation = BinaryAssociation(
#     name="Message_User_1",
#     ends={
#         Property(name="message_2", type=Message, multiplicity=Multiplicity(1, 1)),
#         Property(name="user_4", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# Message_User_2: BinaryAssociation = BinaryAssociation(
#     name="Message_User_2",
#     ends={
#         Property(name="message_3", type=Message, multiplicity=Multiplicity(1, 1)),
#         Property(name="user_5", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# User_Item: BinaryAssociation = BinaryAssociation(
#     name="User_Item",
#     ends={
#         Property(name="user", type=User, multiplicity=Multiplicity(1, 1)),
#         Property(name="item", type=Item, multiplicity=Multiplicity(0, 9999))
#     }
# )
# Message_User_3: BinaryAssociation = BinaryAssociation(
#     name="Message_User_3",
#     ends={
#         Property(name="message_4", type=Message, multiplicity=Multiplicity(1, 1)),
#         Property(name="user_6", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# User_Community: BinaryAssociation = BinaryAssociation(
#     name="User_Community",
#     ends={
#         Property(name="user_1", type=User, multiplicity=Multiplicity(0, 9999)),
#         Property(name="community", type=Community, multiplicity=Multiplicity(0, 9999))
#     }
# )
# Receiver: BinaryAssociation = BinaryAssociation(
#     name="Receiver",
#     ends={
#         Property(name="message_5", type=Message, multiplicity=Multiplicity(0, 9999)),
#         Property(name="user_7", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# Sender: BinaryAssociation = BinaryAssociation(
#     name="Sender",
#     ends={
#         Property(name="user_2", type=User, multiplicity=Multiplicity(1, 1)),
#         Property(name="message", type=Message, multiplicity=Multiplicity(0, 9999))
#     }
# )
# Message_User_4: BinaryAssociation = BinaryAssociation(
#     name="Message_User_4",
#     ends={
#         Property(name="message_6", type=Message, multiplicity=Multiplicity(1, 1)),
#         Property(name="user_8", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# ReportItem: BinaryAssociation = BinaryAssociation(
#     name="ReportItem",
#     ends={
#         Property(name="item_3", type=Item, multiplicity=Multiplicity(0, 1)),
#         Property(name="report", type=Report, multiplicity=Multiplicity(0, 9999))
#     }
# )
# Rated: BinaryAssociation = BinaryAssociation(
#     name="Rated",
#     ends={
#         Property(name="rating", type=Rating, multiplicity=Multiplicity(0, 9999)),
#         Property(name="user_9", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# Message_Chat: BinaryAssociation = BinaryAssociation(
#     name="Message_Chat",
#     ends={
#         Property(name="message_7", type=Message, multiplicity=Multiplicity(0, 9999)),
#         Property(name="chat", type=Chat, multiplicity=Multiplicity(1, 1), is_composite=True)
#     }
# )
# Ratee: BinaryAssociation = BinaryAssociation(
#     name="Ratee",
#     ends={
#         Property(name="rating_1", type=Rating, multiplicity=Multiplicity(0, 9999)),
#         Property(name="user_10", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# Chat_User: BinaryAssociation = BinaryAssociation(
#     name="Chat_User",
#     ends={
#         Property(name="chat_1", type=Chat, multiplicity=Multiplicity(0, 9999)),
#         Property(name="user_12", type=User, multiplicity=Multiplicity(2, 9999))
#     }
# )
# User_Transaction: BinaryAssociation = BinaryAssociation(
#     name="User_Transaction",
#     ends={
#         Property(name="user_11", type=User, multiplicity=Multiplicity(2, 2)),
#         Property(name="transaction", type=Transaction, multiplicity=Multiplicity(0, 9999))
#     }
# )
# Item_Category: BinaryAssociation = BinaryAssociation(
#     name="Item_Category",
#     ends={
#         Property(name="item_4", type=Item, multiplicity=Multiplicity(0, 9999)),
#         Property(name="category", type=Category, multiplicity=Multiplicity(0, 9999))
#     }
# )
# Item_Transaction: BinaryAssociation = BinaryAssociation(
#     name="Item_Transaction",
#     ends={
#         Property(name="item_1", type=Item, multiplicity=Multiplicity(1, 9999)),
#         Property(name="transaction_1", type=Transaction, multiplicity=Multiplicity(0, 9999))
#     }
# )
# Review_User: BinaryAssociation = BinaryAssociation(
#     name="Review_User",
#     ends={
#         Property(name="review_1", type=Review, multiplicity=Multiplicity(0, 9999)),
#         Property(name="user_13", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# Item_Review: BinaryAssociation = BinaryAssociation(
#     name="Item_Review",
#     ends={
#         Property(name="item_2", type=Item, multiplicity=Multiplicity(1, 1)),
#         Property(name="review", type=Review, multiplicity=Multiplicity(0, 9999))
#     }
# )
# Created: BinaryAssociation = BinaryAssociation(
#     name="Created",
#     ends={
#         Property(name="report_1", type=Report, multiplicity=Multiplicity(0, 9999)),
#         Property(name="user_14", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# Community_Community: BinaryAssociation = BinaryAssociation(
#     name="Community_Community",
#     ends={
#         Property(name="Parent", type=Community, multiplicity=Multiplicity(0, 1)),
#         Property(name="Child", type=Community, multiplicity=Multiplicity(0, 9999))
#     }
# )
# ReportedUser: BinaryAssociation = BinaryAssociation(
#     name="ReportedUser",
#     ends={
#         Property(name="report_2", type=Report, multiplicity=Multiplicity(0, 9999)),
#         Property(name="user_15", type=User, multiplicity=Multiplicity(0, 1))
#     }
# )
# Notification_User: BinaryAssociation = BinaryAssociation(
#     name="Notification_User",
#     ends={
#         Property(name="notification", type=Notification, multiplicity=Multiplicity(0, 9999)),
#         Property(name="user_16", type=User, multiplicity=Multiplicity(1, 1))
#     }
# )
# Media_Item: BinaryAssociation = BinaryAssociation(
#     name="Media_Item",
#     ends={
#         Property(name="media", type=Media, multiplicity=Multiplicity(0, 9999)),
#         Property(name="item_5", type=Item, multiplicity=Multiplicity(0, 1))
#     }
# )
# User_Media: BinaryAssociation = BinaryAssociation(
#     name="User_Media",
#     ends={
#         Property(name="user_17", type=User, multiplicity=Multiplicity(0, 1)),
#         Property(name="media_1", type=Media, multiplicity=Multiplicity(1, 1))
#     }
# )

# # Domain Model
# domain_model = DomainModel(
#     name="Class_Diagram",
#     types={User, Community, Item, Transaction, Message, Chat, Rating, Category, Review, Report, Notification, Media, ItemCondition, CurrencyType, TransactionStatus, ItemStatus, ReadStatus, ReportStatus, MediaType},
#     associations={Message_User, Message_User_1, Message_User_2, User_Item, Message_User_3, User_Community, Receiver, Sender, Message_User_4, ReportItem, Rated, Message_Chat, Ratee, Chat_User, User_Transaction, Item_Category, Item_Transaction, Review_User, Item_Review, Created, Community_Community, ReportedUser, Notification_User, Media_Item, User_Media},
#     generalizations={}
# )


# ######################
# # PROJECT DEFINITION #
# ######################

# from besser.BUML.metamodel.project import Project
# from besser.BUML.metamodel.structural.structural import Metadata

# metadata = Metadata(description="New project")
# project = Project(
#     name="tacs",
#     models=[domain_model],
#     owner="User",
#     metadata=metadata
# )
