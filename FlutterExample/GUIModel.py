####################
# GUI MODEL #
####################

from besser.BUML.metamodel.gui import *
from besser.BUML.metamodel.structural import *

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
			EnumerationLiteral(name="Video")
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
			EnumerationLiteral(name="EUR"),
			EnumerationLiteral(name="GBP"),
			EnumerationLiteral(name="JPY"),
			EnumerationLiteral(name="AUD")
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
User.attributes={User_passwordHash, User_address, User_email, User_phone, User_averageRating, User_name, User_isBanned, User_joinDate, User_userID, User_bio}

# Community class attributes and methods
Community_communityId: Property = Property(name="communityId", type=IntegerType)
Community_name: Property = Property(name="name", type=StringType)
Community_description: Property = Property(name="description", type=StringType)
Community_location: Property = Property(name="location", type=StringType)
Community_creationDate: Property = Property(name="creationDate", type=DateTimeType)
Community_visibility: Property = Property(name="visibility", type=BooleanType)
Community.attributes={Community_description, Community_visibility, Community_communityId, Community_location, Community_name, Community_creationDate}

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
Item.attributes={Item_condition, Item_exchangeOption, Item_description, Item_status, Item_price, Item_giveaway, Item_itemId, Item_category, Item_title, Item_priceCurrency, Item_datePosted}

# Transaction class attributes and methods
Transaction_status: Property = Property(name="status", type=TransactionStatus)
Transaction_transactionId: Property = Property(name="transactionId", type=IntegerType)
Transaction_date: Property = Property(name="date", type=DateTimeType)
Transaction.attributes={Transaction_transactionId, Transaction_date, Transaction_status}

# Message class attributes and methods
Message_messageId: Property = Property(name="messageId", type=IntegerType)
Message_content: Property = Property(name="content", type=IntegerType)
Message_timestamp: Property = Property(name="timestamp", type=DateTimeType)
Message_readStatus: Property = Property(name="readStatus", type=ReadStatus)
Message.attributes={Message_timestamp, Message_readStatus, Message_content, Message_messageId}

# Chat class attributes and methods
Chat_chatId: Property = Property(name="chatId", type=IntegerType)
Chat_creationDate: Property = Property(name="creationDate", type=DateTimeType)
Chat.attributes={Chat_chatId, Chat_creationDate}

# Rating class attributes and methods
Rating_ratingId: Property = Property(name="ratingId", type=IntegerType)
Rating_comment: Property = Property(name="comment", type=StringType)
Rating_date: Property = Property(name="date", type=DateTimeType)
Rating_rating: Property = Property(name="rating", type=IntegerType)
Rating.attributes={Rating_date, Rating_ratingId, Rating_comment, Rating_rating}

# Category class attributes and methods
Category_categoryId: Property = Property(name="categoryId", type=IntegerType)
Category_name: Property = Property(name="name", type=StringType)
Category_description: Property = Property(name="description", type=StringType)
Category.attributes={Category_categoryId, Category_description, Category_name}

# Review class attributes and methods
Review_commentId: Property = Property(name="commentId", type=IntegerType)
Review_content: Property = Property(name="content", type=StringType)
Review_date: Property = Property(name="date", type=DateTimeType)
Review.attributes={Review_date, Review_content, Review_commentId}

# Report class attributes and methods
Report_reportId: Property = Property(name="reportId", type=IntegerType)
Report_details: Property = Property(name="details", type=StringType)
Report_date: Property = Property(name="date", type=DateTimeType)
Report_status: Property = Property(name="status", type=ReportStatus)
Report.attributes={Report_date, Report_reportId, Report_details, Report_status}

# Notification class attributes and methods
Notification_message: Property = Property(name="message", type=StringType)
Notification_date: Property = Property(name="date", type=DateTimeType)
Notification_readStatus: Property = Property(name="readStatus", type=ReadStatus)
Notification_notificationId: Property = Property(name="notificationId", type=IntegerType)
Notification_type: Property = Property(name="type", type=NotificationType)
Notification.attributes={Notification_date, Notification_type, Notification_readStatus, Notification_message, Notification_notificationId}

# Media class attributes and methods
Media_mediaId: Property = Property(name="mediaId", type=IntegerType)
Media_url: Property = Property(name="url", type=StringType)
Media_type: Property = Property(name="type", type=MediaType)
Media.attributes={Media_url, Media_type, Media_mediaId}

####################
# Module MainModule #
####################

# Screen: MainPage
MainPage: Screen = Screen(
    name="MainPage",
    description="Main landing screen of the application",
    x_dpi="x_dpi",
    y_dpi="y_dpi",
    screen_size="Small",
    is_main_page=True,
    view_elements=set()
)

# Screen: ItemVisualizationPage
ItemVisualizationPage: Screen = Screen(
    name="ItemVisualizationPage",
    description="Screen to browse and explore items",
    x_dpi="x_dpi",
    y_dpi="y_dpi",
    screen_size="Small",
    is_main_page=False,
    view_elements=set()
)

# View Element: MainPageButton in Screen: MainPage
mainPageButton: Button = Button(
    name="MainPageButton",
    description="Go back to main page button",
    label="Main Page",
    buttonType=ButtonType.IconButton,
    actionType=ButtonActionType.Navigate,
    targetScreen=MainPage,
)

# Data Source: ItemsDataSourceElement for DataList: RecentItemsDataList in Screen: MainPage
itemsDataSourceElement: DataSourceElement = DataSourceElement(
    name="ItemsDataSourceElement",
    dataSourceClass=Item,
    fields=[Item_title, Item_description],
)

# View Element: RecentItemsDataList in Screen: MainPage
recentItemsDataList: DataList = DataList(
    name="RecentItemsDataList",
    description="List of recently added items",
    list_sources={itemsDataSourceElement},
)

# View Element: PopularItemsDataList in Screen: MainPage
popularItemsDataList: DataList = DataList(
    name="PopularItemsDataList",
    description="List of most popular items",
    list_sources={itemsDataSourceElement},
)

# View Element: ChatPageButton in Screen: MainPage
chatPageButton: Button = Button(
    name="ChatPageButton",
    description="Navigate to Chat Page",
    label="Chat Page",
    buttonType=ButtonType.RaisedButton,
    actionType=ButtonActionType.Navigate,
    targetScreen=MainPage,
)

# View Element: UserPageButton in Screen: MainPage
userPageButton: Button = Button(
    name="UserPageButton",
    description="Navigate to User Page",
    label="User Page",
    buttonType=ButtonType.RaisedButton,
    actionType=ButtonActionType.Navigate,
    targetScreen=MainPage,
)

# View Element: CommunitiesPageButton in Screen: MainPage
communitiesPageButton: Button = Button(
    name="CommunitiesPageButton",
    description="Navigate to Communities Page",
    label="Communities Page",
    buttonType=ButtonType.RaisedButton,
    actionType=ButtonActionType.Navigate,
    targetScreen=MainPage,
)

# View Element: SearchProductInput in Screen: MainPage
searchProductInput: InputField = InputField(
    name="SearchProductInput",
    description="Search products",
    type=InputFieldType.Search,
    validationRules=None,
)

# View Element: NotificationsPageButton in Screen: MainPage
notificationsPageButton: Button = Button(
    name="NotificationsPageButton",
    description="Navigate to Notifications Page",
    label="Notifications Page",
    buttonType=ButtonType.RaisedButton,
    actionType=ButtonActionType.Navigate,
    targetScreen=MainPage,
)

MainPage.view_elements.add(mainPageButton)
MainPage.view_elements.add(recentItemsDataList)
MainPage.view_elements.add(popularItemsDataList)
MainPage.view_elements.add(chatPageButton)
MainPage.view_elements.add(userPageButton)
MainPage.view_elements.add(communitiesPageButton)
MainPage.view_elements.add(searchProductInput)
MainPage.view_elements.add(notificationsPageButton)

# Data Source: ProductDataSourceElement for DataList: ProductFieldsDataList in Screen: ItemVisualizationPage
productDataSourceElement: DataSourceElement = DataSourceElement(
    name="ProductDataSourceElement",
    dataSourceClass=Item,
    fields=[Item_condition, Item_exchangeOption, Item_description, Item_price, Item_giveaway, Item_category, Item_title, Item_datePosted],
)

# View Element: ProductFieldsDataList in Screen: ItemVisualizationPage
productFieldsDataList: DataList = DataList(
    name="ProductFieldsDataList",
    description="List of product fields",
    list_sources={productDataSourceElement},
)

# View Element: AddReviewButton in Screen: ItemVisualizationPage
addReviewButton: Button = Button(
    name="AddReviewButton",
    description="Add a Review to a product",
    label="Add Review",
    buttonType=ButtonType.IconButton,
    actionType=ButtonActionType.Add,
    targetScreen=None,
)

# View Element: AcquireItemButton in Screen: ItemVisualizationPage
acquireItemButton: Button = Button(
    name="AcquireItemButton",
    description="Acquire an Item",
    label="Acquire Item",
    buttonType=ButtonType.IconButton,
    actionType=ButtonActionType.Add,
    targetScreen=None,
)

# Data Source: ReviewDataSourceElement for DataList: ProductReviewsDataList in Screen: ItemVisualizationPage
reviewDataSourceElement: DataSourceElement = DataSourceElement(
    name="ReviewDataSourceElement",
    dataSourceClass=Review,
    fields=[Review_date, Review_content],
)

# View Element: ProductReviewsDataList in Screen: ItemVisualizationPage
productReviewsDataList: DataList = DataList(
    name="ProductReviewsDataList",
    description="List of product reviews",
    list_sources={reviewDataSourceElement},
)

ItemVisualizationPage.view_elements.add(mainPageButton)
ItemVisualizationPage.view_elements.add(productFieldsDataList)
ItemVisualizationPage.view_elements.add(chatPageButton)
ItemVisualizationPage.view_elements.add(userPageButton)
ItemVisualizationPage.view_elements.add(communitiesPageButton)
ItemVisualizationPage.view_elements.add(addReviewButton)
ItemVisualizationPage.view_elements.add(acquireItemButton)
ItemVisualizationPage.view_elements.add(productReviewsDataList)
ItemVisualizationPage.view_elements.add(notificationsPageButton)

MainModule: Module = Module(
    name="MainModule",
    screens={MainPage, ItemVisualizationPage}
)

gui_model: GUIModel = GUIModel(
    name="MainGUIModel",
    package="com.example.myapp",
    versionCode="1",
    versionName="1.0",
    description="GUI with MainPage and ItemVisualizationPage",
    screenCompatibility="True",
    modules={MainModule}
)
