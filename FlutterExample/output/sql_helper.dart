 
 
import 'package:sqflite/sqflite.dart' as sql;
import 'package:logger/logger.dart';

final Logger logger = Logger();

class SQLHelper {


static const String tableItems = 'items';
static const String tableUsers = 'users';
static const String tableMessages = 'messages';
static const String tableReviews = 'reviews';
static const String tableNotifications = 'notifications';
static const String tableRatings = 'ratings';
static const String tableMedias = 'medias';
static const String tableCommunitys = 'communitys';
static const String tableReports = 'reports';
static const String tableChats = 'chats';
static const String tableCategorys = 'categorys';
static const String tableTransactions = 'transactions';
static const String tableItemcategory = 'item_category';
static const String tableUsertransaction = 'user_transaction';
static const String tableChatuser = 'chat_user';
static const String tableItemtransaction = 'item_transaction';
static const String tableUsercommunity = 'user_community';
static const String columnItemId = 'itemid';
static const String columnCategoryId = 'categoryid';
static const String columnUserId = 'userid';
static const String columnTransactionId = 'transactionid';
static const String columnChatId = 'chatid';
static const String columnUserId = 'userid';
static const String columnTransactionId = 'transactionid';
static const String columnItemId = 'itemid';
static const String columnUserId = 'userid';
static const String columnCommunityId = 'communityid';
static const String columnId = 'id';
static const String columnTimestamp = 'timestamp';
static const String columnReadStatus = 'readStatus';
static const String columnContent = 'content';
static const String columnMessageId = 'messageId';
static const String columnAverageRating = 'averageRating';
static const String columnAddress = 'address';
static const String columnEmail = 'email';
static const String columnBio = 'bio';
static const String columnJoinDate = 'joinDate';
static const String columnUserID = 'userID';
static const String columnIsBanned = 'isBanned';
static const String columnName = 'name';
static const String columnPhone = 'phone';
static const String columnPasswordHash = 'passwordHash';
static const String columnCommunityId = 'communityId';
static const String columnDescription = 'description';
static const String columnCreationDate = 'creationDate';
static const String columnVisibility = 'visibility';
static const String columnLocation = 'location';
static const String columnTransactionId = 'transactionId';
static const String columnDate = 'date';
static const String columnStatus = 'status';
static const String columnChatId = 'chatId';
static const String columnPrice = 'price';
static const String columnGiveaway = 'giveaway';
static const String columnCategory = 'category';
static const String columnPriceCurrency = 'priceCurrency';
static const String columnItemId = 'itemId';
static const String columnDatePosted = 'datePosted';
static const String columnTitle = 'title';
static const String columnCondition = 'condition';
static const String columnExchangeOption = 'exchangeOption';
static const String columnCommentId = 'commentId';
static const String columnType = 'type';
static const String columnMessage = 'message';
static const String columnNotificationId = 'notificationId';
static const String columnRating = 'rating';
static const String columnComment = 'comment';
static const String columnRatingId = 'ratingId';
static const String columnReportId = 'reportId';
static const String columnDetails = 'details';
static const String columnUrl = 'url';
static const String columnMediaId = 'mediaId';
static const String columnCategoryId = 'categoryId';
static const String columnuserid = 'userid';
static const String columnmessageid = 'messageid';
static const String columnmessageid = 'messageid';
static const String columnmessageid = 'messageid';
static const String columnmessageid = 'messageid';
static const String columnmessageid = 'messageid';
static const String columnmediaid = 'mediaid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnchatid = 'chatid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnitemid = 'itemid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';
static const String columnitemid = 'itemid';
static const String columnuserid = 'userid';
static const String columnuserid = 'userid';


static Future<void> createTables(sql.Database database) async {
    await database.execute("""
    CREATE TABLE $tableItems(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnPrice,
        $columnGiveaway,
        $columnCategory TEXT,
        $columnPriceCurrency,
        $columnItemId INTEGER,
        $columnStatus,
        $columnDatePosted TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnTitle TEXT,
        $columnCondition,
        $columnExchangeOption,
        $columnDescription TEXT,
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId)
    )
    """);
    await database.execute("""
    CREATE TABLE $tableUsers(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnAverageRating INTEGER,
        $columnAddress TEXT,
        $columnEmail TEXT,
        $columnBio TEXT,
        $columnJoinDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnUserID INTEGER,
        $columnIsBanned,
        $columnName TEXT,
        $columnPhone TEXT,
        $columnPasswordHash TEXT,
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMedias($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMedias($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMedias($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMedias($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMessages($columnId),
        $columnmessageid INTEGER,                 
        FOREIGN KEY ($columnmessageid) REFERENCES $tableMedias($columnId),
        $columnmediaid INTEGER,                 
        FOREIGN KEY ($columnmediaid) REFERENCES $tableMessages($columnId),
        $columnmediaid INTEGER,                 
        FOREIGN KEY ($columnmediaid) REFERENCES $tableMessages($columnId),
        $columnmediaid INTEGER,                 
        FOREIGN KEY ($columnmediaid) REFERENCES $tableMessages($columnId),
        $columnmediaid INTEGER,                 
        FOREIGN KEY ($columnmediaid) REFERENCES $tableMessages($columnId),
        $columnmediaid INTEGER,                 
        FOREIGN KEY ($columnmediaid) REFERENCES $tableMessages($columnId),
        $columnmediaid INTEGER,                 
        FOREIGN KEY ($columnmediaid) REFERENCES $tableMedias($columnId)
    )
    """);
    await database.execute("""
    CREATE TABLE $tableMessages(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnTimestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnReadStatus,
        $columnContent INTEGER,
        $columnMessageId INTEGER,
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableChats($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableChats($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnchatid INTEGER,                 
        FOREIGN KEY ($columnchatid) REFERENCES $tableUsers($columnId),
        $columnchatid INTEGER,                 
        FOREIGN KEY ($columnchatid) REFERENCES $tableUsers($columnId),
        $columnchatid INTEGER,                 
        FOREIGN KEY ($columnchatid) REFERENCES $tableChats($columnId),
        $columnchatid INTEGER,                 
        FOREIGN KEY ($columnchatid) REFERENCES $tableUsers($columnId),
        $columnchatid INTEGER,                 
        FOREIGN KEY ($columnchatid) REFERENCES $tableUsers($columnId),
        $columnchatid INTEGER,                 
        FOREIGN KEY ($columnchatid) REFERENCES $tableUsers($columnId),
        $columnchatid INTEGER,                 
        FOREIGN KEY ($columnchatid) REFERENCES $tableUsers($columnId),
        $columnchatid INTEGER,                 
        FOREIGN KEY ($columnchatid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableChats($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableChats($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableChats($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableChats($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableChats($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId)
    )
    """);
    await database.execute("""
    CREATE TABLE $tableReviews(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnContent TEXT,
        $columnCommentId INTEGER,
        $columnitemid INTEGER,                 
        FOREIGN KEY ($columnitemid) REFERENCES $tableItems($columnId),
        $columnitemid INTEGER,                 
        FOREIGN KEY ($columnitemid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableItems($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId)
    )
    """);
    await database.execute("""
    CREATE TABLE $tableNotifications(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnType,
        $columnReadStatus,
        $columnMessage TEXT,
        $columnNotificationId INTEGER,
        $columnDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId)
    )
    """);
    await database.execute("""
    CREATE TABLE $tableRatings(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnRating INTEGER,
        $columnDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnComment TEXT,
        $columnRatingId INTEGER,
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId)
    )
    """);
    await database.execute("""
    CREATE TABLE $tableMedias(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnUrl TEXT,
        $columnType,
        $columnMediaId INTEGER,
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableItems($columnId),
        $columnitemid INTEGER,                 
        FOREIGN KEY ($columnitemid) REFERENCES $tableUsers($columnId),
        $columnitemid INTEGER,                 
        FOREIGN KEY ($columnitemid) REFERENCES $tableItems($columnId)
    )
    """);
    await database.execute("""
    CREATE TABLE $tableCommunitys(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnCommunityId INTEGER,
        $columnDescription TEXT,
        $columnName TEXT,
        $columnCreationDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnVisibility,
        $columnLocation TEXT
    )
    """);
    await database.execute("""
    CREATE TABLE $tableReports(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnReportId INTEGER,
        $columnDetails TEXT,
        $columnStatus,
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId),
        $columnuserid INTEGER,                 
        FOREIGN KEY ($columnuserid) REFERENCES $tableUsers($columnId)
    )
    """);
    await database.execute("""
    CREATE TABLE $tableChats(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnChatId INTEGER,
        $columnCreationDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )
    """);
    await database.execute("""
    CREATE TABLE $tableCategorys(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnCategoryId INTEGER,
        $columnDescription TEXT,
        $columnName TEXT
    )
    """);
    await database.execute("""
    CREATE TABLE $tableTransactions(
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        $columnTransactionId INTEGER,
        $columnDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        $columnStatus
    )
    """);
    await database.execute("""
      CREATE TABLE $tableItemcategory(
        $columnItemId INTEGER,
        $columnCategoryId INTEGER,
        PRIMARY KEY ($columnItemId, $columnCategoryId)
        $columnUserId INTEGER,
        $columnTransactionId INTEGER,
        PRIMARY KEY ($columnUserId, $columnTransactionId)
        $columnChatId INTEGER,
        $columnUserId INTEGER,
        PRIMARY KEY ($columnChatId, $columnUserId)
        $columnTransactionId INTEGER,
        $columnItemId INTEGER,
        PRIMARY KEY ($columnTransactionId, $columnItemId)
        $columnUserId INTEGER,
        $columnCommunityId INTEGER,
        PRIMARY KEY ($columnUserId, $columnCommunityId),
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCategoryId) REFERENCES $tableCategorys($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnChatId) REFERENCES $tableChats($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCommunityId) REFERENCES $tableCommunitys($columnId) ON DELETE CASCADE
      )
    """);
    await database.execute("""
      CREATE TABLE $tableUsertransaction(
        $columnItemId INTEGER,
        $columnCategoryId INTEGER,
        PRIMARY KEY ($columnItemId, $columnCategoryId)
        $columnUserId INTEGER,
        $columnTransactionId INTEGER,
        PRIMARY KEY ($columnUserId, $columnTransactionId)
        $columnChatId INTEGER,
        $columnUserId INTEGER,
        PRIMARY KEY ($columnChatId, $columnUserId)
        $columnTransactionId INTEGER,
        $columnItemId INTEGER,
        PRIMARY KEY ($columnTransactionId, $columnItemId)
        $columnUserId INTEGER,
        $columnCommunityId INTEGER,
        PRIMARY KEY ($columnUserId, $columnCommunityId),
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCategoryId) REFERENCES $tableCategorys($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnChatId) REFERENCES $tableChats($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCommunityId) REFERENCES $tableCommunitys($columnId) ON DELETE CASCADE
      )
    """);
    await database.execute("""
      CREATE TABLE $tableChatuser(
        $columnItemId INTEGER,
        $columnCategoryId INTEGER,
        PRIMARY KEY ($columnItemId, $columnCategoryId)
        $columnUserId INTEGER,
        $columnTransactionId INTEGER,
        PRIMARY KEY ($columnUserId, $columnTransactionId)
        $columnChatId INTEGER,
        $columnUserId INTEGER,
        PRIMARY KEY ($columnChatId, $columnUserId)
        $columnTransactionId INTEGER,
        $columnItemId INTEGER,
        PRIMARY KEY ($columnTransactionId, $columnItemId)
        $columnUserId INTEGER,
        $columnCommunityId INTEGER,
        PRIMARY KEY ($columnUserId, $columnCommunityId),
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCategoryId) REFERENCES $tableCategorys($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnChatId) REFERENCES $tableChats($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCommunityId) REFERENCES $tableCommunitys($columnId) ON DELETE CASCADE
      )
    """);
    await database.execute("""
      CREATE TABLE $tableItemtransaction(
        $columnItemId INTEGER,
        $columnCategoryId INTEGER,
        PRIMARY KEY ($columnItemId, $columnCategoryId)
        $columnUserId INTEGER,
        $columnTransactionId INTEGER,
        PRIMARY KEY ($columnUserId, $columnTransactionId)
        $columnChatId INTEGER,
        $columnUserId INTEGER,
        PRIMARY KEY ($columnChatId, $columnUserId)
        $columnTransactionId INTEGER,
        $columnItemId INTEGER,
        PRIMARY KEY ($columnTransactionId, $columnItemId)
        $columnUserId INTEGER,
        $columnCommunityId INTEGER,
        PRIMARY KEY ($columnUserId, $columnCommunityId),
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCategoryId) REFERENCES $tableCategorys($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnChatId) REFERENCES $tableChats($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCommunityId) REFERENCES $tableCommunitys($columnId) ON DELETE CASCADE
      )
    """);
    await database.execute("""
      CREATE TABLE $tableUsercommunity(
        $columnItemId INTEGER,
        $columnCategoryId INTEGER,
        PRIMARY KEY ($columnItemId, $columnCategoryId)
        $columnUserId INTEGER,
        $columnTransactionId INTEGER,
        PRIMARY KEY ($columnUserId, $columnTransactionId)
        $columnChatId INTEGER,
        $columnUserId INTEGER,
        PRIMARY KEY ($columnChatId, $columnUserId)
        $columnTransactionId INTEGER,
        $columnItemId INTEGER,
        PRIMARY KEY ($columnTransactionId, $columnItemId)
        $columnUserId INTEGER,
        $columnCommunityId INTEGER,
        PRIMARY KEY ($columnUserId, $columnCommunityId),
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCategoryId) REFERENCES $tableCategorys($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnChatId) REFERENCES $tableChats($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnTransactionId) REFERENCES $tableTransactions($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnItemId) REFERENCES $tableItems($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnUserId) REFERENCES $tableUsers($columnId) ON DELETE CASCADE,
        FOREIGN KEY ($columnCommunityId) REFERENCES $tableCommunitys($columnId) ON DELETE CASCADE
      )
    """);
    } 
  
  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'Class_Diagram.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }
  static List<String> itemList = []; // Initialize an empty item list
  static List<String> categoryList = []; // Initialize an empty category list
  static List<String> userList = []; // Initialize an empty user list
  static List<String> transactionList = []; // Initialize an empty transaction list
  static List<String> chatList = []; // Initialize an empty chat list
  static List<String> userList = []; // Initialize an empty user list
  static List<String> transactionList = []; // Initialize an empty transaction list
  static List<String> itemList = []; // Initialize an empty item list
  static List<String> userList = []; // Initialize an empty user list
  static List<String> communityList = []; // Initialize an empty community list



//for create operation on Items
  static Future<int> createItem(
    float8 price,
    bool giveaway,
    String category,
     priceCurrency,
    int? itemId,
     status,
    String title,
     condition,
    bool exchangeOption,
    String description,
    List<int> categoryIds,,
    List<int> transactionIds, 
    int? userid
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnPrice: price,
    columnGiveaway: giveaway,
    columnCategory: category,
    columnPriceCurrency: priceCurrency,
    columnItemId: itemId,
    columnStatus: status,
    columnTitle: title,
    columnCondition: condition,
    columnExchangeOption: exchangeOption,
    columnDescription: description, 
    columnuserid: userid
    };

    final id = await db.insert(
      tableItems, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
                                                
      final batch = db.batch();
      for (int categoryId in categoryIds) {
        final categoryData =
          await db.query(tableCategorys, where: '$columnId = ?', whereArgs: [categoryId]);
            if (categoryData.isNotEmpty) {
               final itemCategoryData = {
                  columnItemId: id,
                  columnCategoryId: categoryId,
                };
        batch.insert(
          tableItemcategory,
          itemCategoryData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Category ID is not found in Categorys table, delete the inserted row in Items table
            await db.delete(tableItems, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Category ID $categoryId does not exist in categorys table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final itemUserData = {
                  columnItemId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          itemUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Items table
            await db.delete(tableItems, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final itemUserData = {
                  columnItemId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          itemUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Items table
            await db.delete(tableItems, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final itemTransactionData = {
                  columnItemId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableUsertransaction,
          itemTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Items table
            await db.delete(tableItems, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final itemUserData = {
                  columnItemId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          itemUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Items table
            await db.delete(tableItems, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final itemTransactionData = {
                  columnItemId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          itemTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Items table
            await db.delete(tableItems, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final itemUserData = {
                  columnItemId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          itemUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Items table
            await db.delete(tableItems, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final itemUserData = {
                  columnItemId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          itemUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Items table
            await db.delete(tableItems, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();
    return id;
  }

//for create operation on Users
  static Future<int> createUser(
    int? averageRating,
    String address,
    String email,
    String bio,
    int? userID,
    bool isBanned,
    String name,
    String phone,
    String passwordHash,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds, 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? mediaid 
    int? mediaid 
    int? mediaid 
    int? mediaid 
    int? mediaid 
    int? mediaid
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnAverageRating: averageRating,
    columnAddress: address,
    columnEmail: email,
    columnBio: bio,
    columnUserID: userID,
    columnIsBanned: isBanned,
    columnName: name,
    columnPhone: phone,
    columnPasswordHash: passwordHash, 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmediaid: mediaid 
    columnmediaid: mediaid 
    columnmediaid: mediaid 
    columnmediaid: mediaid 
    columnmediaid: mediaid 
    columnmediaid: mediaid
    };

    final id = await db.insert(
      tableUsers, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableUsertransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final userChatData = {
                  columnUserId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          userChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int communityId in communityIds) {
        final communityData =
          await db.query(tableCommunitys, where: '$columnId = ?', whereArgs: [communityId]);
            if (communityData.isNotEmpty) {
               final userCommunityData = {
                  columnUserId: id,
                  columnCommunityId: communityId,
                };
        batch.insert(
          tableUsercommunity,
          userCommunityData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Community ID is not found in Communitys table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Community ID $communityId does not exist in communitys table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableUsertransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final userChatData = {
                  columnUserId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          userChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int communityId in communityIds) {
        final communityData =
          await db.query(tableCommunitys, where: '$columnId = ?', whereArgs: [communityId]);
            if (communityData.isNotEmpty) {
               final userCommunityData = {
                  columnUserId: id,
                  columnCommunityId: communityId,
                };
        batch.insert(
          tableUsercommunity,
          userCommunityData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Community ID is not found in Communitys table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Community ID $communityId does not exist in communitys table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableUsertransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final userChatData = {
                  columnUserId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          userChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int communityId in communityIds) {
        final communityData =
          await db.query(tableCommunitys, where: '$columnId = ?', whereArgs: [communityId]);
            if (communityData.isNotEmpty) {
               final userCommunityData = {
                  columnUserId: id,
                  columnCommunityId: communityId,
                };
        batch.insert(
          tableUsercommunity,
          userCommunityData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Community ID is not found in Communitys table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Community ID $communityId does not exist in communitys table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableUsertransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final userChatData = {
                  columnUserId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          userChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int communityId in communityIds) {
        final communityData =
          await db.query(tableCommunitys, where: '$columnId = ?', whereArgs: [communityId]);
            if (communityData.isNotEmpty) {
               final userCommunityData = {
                  columnUserId: id,
                  columnCommunityId: communityId,
                };
        batch.insert(
          tableUsercommunity,
          userCommunityData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Community ID is not found in Communitys table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Community ID $communityId does not exist in communitys table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableUsertransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final userChatData = {
                  columnUserId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          userChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int communityId in communityIds) {
        final communityData =
          await db.query(tableCommunitys, where: '$columnId = ?', whereArgs: [communityId]);
            if (communityData.isNotEmpty) {
               final userCommunityData = {
                  columnUserId: id,
                  columnCommunityId: communityId,
                };
        batch.insert(
          tableUsercommunity,
          userCommunityData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Community ID is not found in Communitys table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Community ID $communityId does not exist in communitys table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableUsertransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final userChatData = {
                  columnUserId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          userChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int transactionId in transactionIds) {
        final transactionData =
          await db.query(tableTransactions, where: '$columnId = ?', whereArgs: [transactionId]);
            if (transactionData.isNotEmpty) {
               final userTransactionData = {
                  columnUserId: id,
                  columnTransactionId: transactionId,
                };
        batch.insert(
          tableItemtransaction,
          userTransactionData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Transaction ID is not found in Transactions table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Transaction ID $transactionId does not exist in transactions table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final userItemData = {
                  columnUserId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          userItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int communityId in communityIds) {
        final communityData =
          await db.query(tableCommunitys, where: '$columnId = ?', whereArgs: [communityId]);
            if (communityData.isNotEmpty) {
               final userCommunityData = {
                  columnUserId: id,
                  columnCommunityId: communityId,
                };
        batch.insert(
          tableUsercommunity,
          userCommunityData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Community ID is not found in Communitys table, delete the inserted row in Users table
            await db.delete(tableUsers, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Community ID $communityId does not exist in communitys table');
        }
      }
      await batch.commit();
    return id;
  }

//for create operation on Messages
  static Future<int> createMessage(
     readStatus,
    int? content,
    int? messageId 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnReadStatus: readStatus,
    columnContent: content,
    columnMessageId: messageId, 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid
    };

    final id = await db.insert(
      tableMessages, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int chatId in chatIds) {
        final chatData =
          await db.query(tableChats, where: '$columnId = ?', whereArgs: [chatId]);
            if (chatData.isNotEmpty) {
               final messageChatData = {
                  columnMessageId: id,
                  columnChatId: chatId,
                };
        batch.insert(
          tableChatuser,
          messageChatData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Chat ID is not found in Chats table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Chat ID $chatId does not exist in chats table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final messageUserData = {
                  columnMessageId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          messageUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Messages table
            await db.delete(tableMessages, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();
    return id;
  }

//for create operation on Reviews
  static Future<int> createReview(
    String content,
    int? commentId 
    int? itemid 
    int? itemid 
    int? userid 
    int? userid
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnContent: content,
    columnCommentId: commentId, 
    columnitemid: itemid 
    columnitemid: itemid 
    columnuserid: userid 
    columnuserid: userid
    };

    final id = await db.insert(
      tableReviews, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final reviewItemData = {
                  columnReviewId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          reviewItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final reviewItemData = {
                  columnReviewId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          reviewItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final reviewItemData = {
                  columnReviewId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          reviewItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final reviewItemData = {
                  columnReviewId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          reviewItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final reviewItemData = {
                  columnReviewId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          reviewItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final reviewItemData = {
                  columnReviewId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          reviewItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reviewUserData = {
                  columnReviewId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reviewUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reviews table
            await db.delete(tableReviews, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();
    return id;
  }

//for create operation on Notifications
  static Future<int> createNotification(
     type,
     readStatus,
    String message,
    int? notificationId, 
    int? userid
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnType: type,
    columnReadStatus: readStatus,
    columnMessage: message,
    columnNotificationId: notificationId, 
    columnuserid: userid
    };

    final id = await db.insert(
      tableNotifications, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final notificationUserData = {
                  columnNotificationId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          notificationUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Notifications table
            await db.delete(tableNotifications, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final notificationUserData = {
                  columnNotificationId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          notificationUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Notifications table
            await db.delete(tableNotifications, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final notificationUserData = {
                  columnNotificationId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          notificationUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Notifications table
            await db.delete(tableNotifications, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final notificationUserData = {
                  columnNotificationId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          notificationUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Notifications table
            await db.delete(tableNotifications, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final notificationUserData = {
                  columnNotificationId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          notificationUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Notifications table
            await db.delete(tableNotifications, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();
    return id;
  }

//for create operation on Ratings
  static Future<int> createRating(
    int? rating,
    String comment,
    int? ratingId 
    int? userid 
    int? userid 
    int? userid 
    int? userid
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnRating: rating,
    columnComment: comment,
    columnRatingId: ratingId, 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid
    };

    final id = await db.insert(
      tableRatings, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final ratingUserData = {
                  columnRatingId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          ratingUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Ratings table
            await db.delete(tableRatings, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();
    return id;
  }

//for create operation on Medias
  static Future<int> createMedia(
    String url,
     type,
    int? mediaId 
    int? userid 
    int? userid 
    int? itemid 
    int? itemid
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnUrl: url,
    columnType: type,
    columnMediaId: mediaId, 
    columnuserid: userid 
    columnuserid: userid 
    columnitemid: itemid 
    columnitemid: itemid
    };

    final id = await db.insert(
      tableMedias, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final mediaItemData = {
                  columnMediaId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          mediaItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final mediaItemData = {
                  columnMediaId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          mediaItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final mediaItemData = {
                  columnMediaId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          mediaItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final mediaItemData = {
                  columnMediaId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          mediaItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final mediaItemData = {
                  columnMediaId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemcategory,
          mediaItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int itemId in itemIds) {
        final itemData =
          await db.query(tableItems, where: '$columnId = ?', whereArgs: [itemId]);
            if (itemData.isNotEmpty) {
               final mediaItemData = {
                  columnMediaId: id,
                  columnItemId: itemId,
                };
        batch.insert(
          tableItemtransaction,
          mediaItemData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If Item ID is not found in Items table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('Item ID $itemId does not exist in items table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final mediaUserData = {
                  columnMediaId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          mediaUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Medias table
            await db.delete(tableMedias, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();
    return id;
  }

//for create operation on Communitys
  static Future<int> createCommunity(
    int? communityId,
    String description,
    String name,
    bool visibility,
    String location
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnCommunityId: communityId,
    columnDescription: description,
    columnName: name,
    columnVisibility: visibility,
    columnLocation: location,
    };

    final id = await db.insert(
      tableCommunitys, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );

    return id;
  }

//for create operation on Reports
  static Future<int> createReport(
    int? reportId,
    String details,
     status 
    int? userid 
    int? userid 
    int? userid 
    int? userid
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnReportId: reportId,
    columnDetails: details,
    columnStatus: status, 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid
    };

    final id = await db.insert(
      tableReports, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsertransaction,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableChatuser,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();                                                
      final batch = db.batch();
      for (int userId in userIds) {
        final userData =
          await db.query(tableUsers, where: '$columnId = ?', whereArgs: [userId]);
            if (userData.isNotEmpty) {
               final reportUserData = {
                  columnReportId: id,
                  columnUserId: userId,
                };
        batch.insert(
          tableUsercommunity,
          reportUserData,
          conflictAlgorithm: sql.ConflictAlgorithm.ignore,
          );
        } else {
          // If User ID is not found in Users table, delete the inserted row in Reports table
            await db.delete(tableReports, where: '$columnId = ?', whereArgs: [id]);
            throw Exception('User ID $userId does not exist in users table');
        }
      }
      await batch.commit();
    return id;
  }

//for create operation on Chats
  static Future<int> createChat(
    int? chatId,
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnChatId: chatId,
    };

    final id = await db.insert(
      tableChats, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );

    return id;
  }

//for create operation on Categorys
  static Future<int> createCategory(
    int? categoryId,
    String description,
    String name
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnCategoryId: categoryId,
    columnDescription: description,
    columnName: name,
    };

    final id = await db.insert(
      tableCategorys, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );

    return id;
  }

//for create operation on Transactions
  static Future<int> createTransaction(
    int? transactionId,
     status
  )
    async {
    final db = await SQLHelper.db();
    await db.execute('PRAGMA foreign_keys = ON;');

    final data = {
    columnTransactionId: transactionId,
    columnStatus: status,
    };

    final id = await db.insert(
      tableTransactions, 
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );

    return id;
  }


  // Read all Items
  static Future<List<Map<String, dynamic>>> getItems() async {
    final db = await SQLHelper.db();
    return db.query(tableItems, orderBy: columnId);
  }

  // Read all Users
  static Future<List<Map<String, dynamic>>> getUsers() async {
    final db = await SQLHelper.db();
    return db.query(tableUsers, orderBy: columnId);
  }

  // Read all Messages
  static Future<List<Map<String, dynamic>>> getMessages() async {
    final db = await SQLHelper.db();
    return db.query(tableMessages, orderBy: columnId);
  }

  // Read all Reviews
  static Future<List<Map<String, dynamic>>> getReviews() async {
    final db = await SQLHelper.db();
    return db.query(tableReviews, orderBy: columnId);
  }

  // Read all Notifications
  static Future<List<Map<String, dynamic>>> getNotifications() async {
    final db = await SQLHelper.db();
    return db.query(tableNotifications, orderBy: columnId);
  }

  // Read all Ratings
  static Future<List<Map<String, dynamic>>> getRatings() async {
    final db = await SQLHelper.db();
    return db.query(tableRatings, orderBy: columnId);
  }

  // Read all Medias
  static Future<List<Map<String, dynamic>>> getMedias() async {
    final db = await SQLHelper.db();
    return db.query(tableMedias, orderBy: columnId);
  }

  // Read all Communitys
  static Future<List<Map<String, dynamic>>> getCommunitys() async {
    final db = await SQLHelper.db();
    return db.query(tableCommunitys, orderBy: columnId);
  }

  // Read all Reports
  static Future<List<Map<String, dynamic>>> getReports() async {
    final db = await SQLHelper.db();
    return db.query(tableReports, orderBy: columnId);
  }

  // Read all Chats
  static Future<List<Map<String, dynamic>>> getChats() async {
    final db = await SQLHelper.db();
    return db.query(tableChats, orderBy: columnId);
  }

  // Read all Categorys
  static Future<List<Map<String, dynamic>>> getCategorys() async {
    final db = await SQLHelper.db();
    return db.query(tableCategorys, orderBy: columnId);
  }

  // Read all Transactions
  static Future<List<Map<String, dynamic>>> getTransactions() async {
    final db = await SQLHelper.db();
    return db.query(tableTransactions, orderBy: columnId);
  }


  // Read a single Item by id
  static Future<String?> getItem(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableItems, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single User by id
  static Future<String?> getUser(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableUsers, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Message by id
  static Future<String?> getMessage(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableMessages, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Review by id
  static Future<String?> getReview(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableReviews, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Notification by id
  static Future<String?> getNotification(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableNotifications, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Rating by id
  static Future<String?> getRating(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableRatings, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Media by id
  static Future<String?> getMedia(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableMedias, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Community by id
  static Future<String?> getCommunity(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableCommunitys, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Report by id
  static Future<String?> getReport(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableReports, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Chat by id
  static Future<String?> getChat(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableChats, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Category by id
  static Future<String?> getCategory(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableCategorys, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}

  // Read a single Transaction by id
  static Future<String?> getTransaction(int id) async {
    final db = await SQLHelper.db();
    final result = await db.query(tableTransactions, where: "$columnId = ?", whereArgs: [id], limit: 1);
    if (result.isNotEmpty) {
    return result.first[columnName] as String?;
  }
  return null;  
}


//for Update operation on Item by id
  static Future<int> updateItem(
    int id,
    float8 price,
    bool giveaway,
    String category,
     priceCurrency,
    int? itemId,
     status,
    String title,
     condition,
    bool exchangeOption,
    String description,
    List<int> categoryIds,,
    List<int> transactionIds, 
    int? userid
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnPrice: price,
    columnGiveaway: giveaway,
    columnCategory: category,
    columnPriceCurrency: priceCurrency,
    columnItemId: itemId,
    columnStatus: status,
    columnDatePosted: DateTime.now().toString(),
    columnTitle: title,
    columnCondition: condition,
    columnExchangeOption: exchangeOption,
    columnDescription: description, 
    columnuserid: userid
    };
    final result = await db.transaction((txn) async {
      // Update the Item details
      await txn.update(tableItems, data, where: "$columnId = ?", whereArgs: [id]); 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnItemId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final itemCategoryData = {columnItemId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, itemCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnItemId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final itemUserData = {columnItemId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, itemUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnItemId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final itemTransactionData = {columnItemId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, itemTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnItemId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final itemChatData = {columnItemId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, itemChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnItemId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final itemUserData = {columnItemId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, itemUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnItemId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final itemTransactionData = {columnItemId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, itemTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnItemId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final itemUserData = {columnItemId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, itemUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnItemId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final itemCommunityData = {columnItemId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, itemCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on User by id
  static Future<int> updateUser(
    int id,
    int? averageRating,
    String address,
    String email,
    String bio,
    int? userID,
    bool isBanned,
    String name,
    String phone,
    String passwordHash,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds,,
    List<int> transactionIds,,
    List<int> chatIds,,
    List<int> communityIds, 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? messageid 
    int? mediaid 
    int? mediaid 
    int? mediaid 
    int? mediaid 
    int? mediaid 
    int? mediaid
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnAverageRating: averageRating,
    columnAddress: address,
    columnEmail: email,
    columnBio: bio,
    columnJoinDate: DateTime.now().toString(),
    columnUserID: userID,
    columnIsBanned: isBanned,
    columnName: name,
    columnPhone: phone,
    columnPasswordHash: passwordHash, 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmessageid: messageid 
    columnmediaid: mediaid 
    columnmediaid: mediaid 
    columnmediaid: mediaid 
    columnmediaid: mediaid 
    columnmediaid: mediaid 
    columnmediaid: mediaid
    };
    final result = await db.transaction((txn) async {
      // Update the User details
      await txn.update(tableUsers, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final userCategoryData = {columnUserId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, userCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final userChatData = {columnUserId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, userChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final userTransactionData = {columnUserId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, userTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final userItemData = {columnUserId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, userItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnUserId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final userCommunityData = {columnUserId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, userCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Message by id
  static Future<int> updateMessage(
    int id,
     readStatus,
    int? content,
    int? messageId 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? chatid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid 
    int? userid
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnTimestamp: DateTime.now().toString(),
    columnReadStatus: readStatus,
    columnContent: content,
    columnMessageId: messageId, 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnchatid: chatid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid
    };
    final result = await db.transaction((txn) async {
      // Update the Message details
      await txn.update(tableMessages, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final messageCategoryData = {columnMessageId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, messageCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final messageChatData = {columnMessageId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, messageChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final messageTransactionData = {columnMessageId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, messageTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final messageItemData = {columnMessageId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, messageItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final messageUserData = {columnMessageId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, messageUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMessageId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final messageCommunityData = {columnMessageId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, messageCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Review by id
  static Future<int> updateReview(
    int id,
    String content,
    int? commentId 
    int? itemid 
    int? itemid 
    int? userid 
    int? userid
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnDate: DateTime.now().toString(),
    columnContent: content,
    columnCommentId: commentId, 
    columnitemid: itemid 
    columnitemid: itemid 
    columnuserid: userid 
    columnuserid: userid
    };
    final result = await db.transaction((txn) async {
      // Update the Review details
      await txn.update(tableReviews, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reviewItemData = {columnReviewId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, reviewItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final reviewCategoryData = {columnReviewId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, reviewCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reviewTransactionData = {columnReviewId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, reviewTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final reviewChatData = {columnReviewId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, reviewChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reviewTransactionData = {columnReviewId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, reviewTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reviewItemData = {columnReviewId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, reviewItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final reviewCommunityData = {columnReviewId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, reviewCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reviewItemData = {columnReviewId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, reviewItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final reviewCategoryData = {columnReviewId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, reviewCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reviewTransactionData = {columnReviewId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, reviewTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final reviewChatData = {columnReviewId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, reviewChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reviewTransactionData = {columnReviewId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, reviewTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reviewItemData = {columnReviewId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, reviewItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final reviewCommunityData = {columnReviewId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, reviewCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reviewItemData = {columnReviewId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, reviewItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final reviewCategoryData = {columnReviewId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, reviewCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reviewTransactionData = {columnReviewId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, reviewTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final reviewChatData = {columnReviewId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, reviewChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reviewTransactionData = {columnReviewId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, reviewTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reviewItemData = {columnReviewId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, reviewItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final reviewCommunityData = {columnReviewId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, reviewCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reviewItemData = {columnReviewId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, reviewItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final reviewCategoryData = {columnReviewId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, reviewCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reviewTransactionData = {columnReviewId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, reviewTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final reviewChatData = {columnReviewId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, reviewChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reviewTransactionData = {columnReviewId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, reviewTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reviewItemData = {columnReviewId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, reviewItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reviewUserData = {columnReviewId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, reviewUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnReviewId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final reviewCommunityData = {columnReviewId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, reviewCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Notification by id
  static Future<int> updateNotification(
    int id,
     type,
     readStatus,
    String message,
    int? notificationId, 
    int? userid
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnType: type,
    columnReadStatus: readStatus,
    columnMessage: message,
    columnNotificationId: notificationId,
    columnDate: DateTime.now().toString(), 
    columnuserid: userid
    };
    final result = await db.transaction((txn) async {
      // Update the Notification details
      await txn.update(tableNotifications, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final notificationItemData = {columnNotificationId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, notificationItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final notificationCategoryData = {columnNotificationId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, notificationCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final notificationUserData = {columnNotificationId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, notificationUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final notificationTransactionData = {columnNotificationId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, notificationTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final notificationChatData = {columnNotificationId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, notificationChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final notificationUserData = {columnNotificationId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, notificationUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final notificationTransactionData = {columnNotificationId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, notificationTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final notificationItemData = {columnNotificationId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, notificationItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final notificationUserData = {columnNotificationId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, notificationUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnNotificationId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final notificationCommunityData = {columnNotificationId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, notificationCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Rating by id
  static Future<int> updateRating(
    int id,
    int? rating,
    String comment,
    int? ratingId 
    int? userid 
    int? userid 
    int? userid 
    int? userid
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnRating: rating,
    columnDate: DateTime.now().toString(),
    columnComment: comment,
    columnRatingId: ratingId, 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid
    };
    final result = await db.transaction((txn) async {
      // Update the Rating details
      await txn.update(tableRatings, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final ratingItemData = {columnRatingId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, ratingItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final ratingCategoryData = {columnRatingId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, ratingCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final ratingTransactionData = {columnRatingId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, ratingTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final ratingChatData = {columnRatingId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, ratingChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final ratingTransactionData = {columnRatingId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, ratingTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final ratingItemData = {columnRatingId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, ratingItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final ratingCommunityData = {columnRatingId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, ratingCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final ratingItemData = {columnRatingId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, ratingItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final ratingCategoryData = {columnRatingId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, ratingCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final ratingTransactionData = {columnRatingId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, ratingTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final ratingChatData = {columnRatingId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, ratingChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final ratingTransactionData = {columnRatingId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, ratingTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final ratingItemData = {columnRatingId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, ratingItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final ratingCommunityData = {columnRatingId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, ratingCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final ratingItemData = {columnRatingId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, ratingItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final ratingCategoryData = {columnRatingId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, ratingCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final ratingTransactionData = {columnRatingId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, ratingTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final ratingChatData = {columnRatingId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, ratingChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final ratingTransactionData = {columnRatingId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, ratingTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final ratingItemData = {columnRatingId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, ratingItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final ratingCommunityData = {columnRatingId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, ratingCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final ratingItemData = {columnRatingId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, ratingItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final ratingCategoryData = {columnRatingId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, ratingCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final ratingTransactionData = {columnRatingId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, ratingTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final ratingChatData = {columnRatingId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, ratingChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final ratingTransactionData = {columnRatingId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, ratingTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final ratingItemData = {columnRatingId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, ratingItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final ratingUserData = {columnRatingId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, ratingUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnRatingId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final ratingCommunityData = {columnRatingId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, ratingCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Media by id
  static Future<int> updateMedia(
    int id,
    String url,
     type,
    int? mediaId 
    int? userid 
    int? userid 
    int? itemid 
    int? itemid
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnUrl: url,
    columnType: type,
    columnMediaId: mediaId, 
    columnuserid: userid 
    columnuserid: userid 
    columnitemid: itemid 
    columnitemid: itemid
    };
    final result = await db.transaction((txn) async {
      // Update the Media details
      await txn.update(tableMedias, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final mediaItemData = {columnMediaId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, mediaItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final mediaCategoryData = {columnMediaId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, mediaCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final mediaTransactionData = {columnMediaId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, mediaTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final mediaChatData = {columnMediaId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, mediaChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final mediaTransactionData = {columnMediaId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, mediaTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final mediaItemData = {columnMediaId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, mediaItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final mediaCommunityData = {columnMediaId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, mediaCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final mediaItemData = {columnMediaId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, mediaItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final mediaCategoryData = {columnMediaId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, mediaCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final mediaTransactionData = {columnMediaId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, mediaTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final mediaChatData = {columnMediaId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, mediaChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final mediaTransactionData = {columnMediaId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, mediaTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final mediaItemData = {columnMediaId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, mediaItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final mediaCommunityData = {columnMediaId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, mediaCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final mediaItemData = {columnMediaId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, mediaItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final mediaCategoryData = {columnMediaId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, mediaCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final mediaTransactionData = {columnMediaId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, mediaTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final mediaChatData = {columnMediaId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, mediaChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final mediaTransactionData = {columnMediaId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, mediaTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final mediaItemData = {columnMediaId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, mediaItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final mediaCommunityData = {columnMediaId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, mediaCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final mediaItemData = {columnMediaId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, mediaItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final mediaCategoryData = {columnMediaId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, mediaCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final mediaTransactionData = {columnMediaId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, mediaTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final mediaChatData = {columnMediaId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, mediaChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final mediaTransactionData = {columnMediaId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, mediaTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final mediaItemData = {columnMediaId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, mediaItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final mediaUserData = {columnMediaId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, mediaUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnMediaId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final mediaCommunityData = {columnMediaId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, mediaCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Community by id
  static Future<int> updateCommunity(
    int id,
    int? communityId,
    String description,
    String name,
    bool visibility,
    String location
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnCommunityId: communityId,
    columnDescription: description,
    columnName: name,
    columnCreationDate: DateTime.now().toString(),
    columnVisibility: visibility,
    columnLocation: location,
    };
    final result = await db.transaction((txn) async {
      // Update the Community details
      await txn.update(tableCommunitys, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Report by id
  static Future<int> updateReport(
    int id,
    int? reportId,
    String details,
     status 
    int? userid 
    int? userid 
    int? userid 
    int? userid
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnDate: DateTime.now().toString(),
    columnReportId: reportId,
    columnDetails: details,
    columnStatus: status, 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid 
    columnuserid: userid
    };
    final result = await db.transaction((txn) async {
      // Update the Report details
      await txn.update(tableReports, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reportItemData = {columnReportId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, reportItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final reportCategoryData = {columnReportId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, reportCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reportTransactionData = {columnReportId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, reportTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final reportChatData = {columnReportId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, reportChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reportTransactionData = {columnReportId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, reportTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reportItemData = {columnReportId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, reportItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final reportCommunityData = {columnReportId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, reportCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reportItemData = {columnReportId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, reportItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final reportCategoryData = {columnReportId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, reportCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reportTransactionData = {columnReportId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, reportTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final reportChatData = {columnReportId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, reportChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reportTransactionData = {columnReportId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, reportTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reportItemData = {columnReportId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, reportItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final reportCommunityData = {columnReportId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, reportCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reportItemData = {columnReportId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, reportItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final reportCategoryData = {columnReportId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, reportCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reportTransactionData = {columnReportId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, reportTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final reportChatData = {columnReportId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, reportChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reportTransactionData = {columnReportId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, reportTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reportItemData = {columnReportId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, reportItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final reportCommunityData = {columnReportId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, reportCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemcategory table   
          await txn.delete(tableItemcategory, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reportItemData = {columnReportId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemcategory, reportItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemcategory, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final categoryId in categoryIds) {
             final reportCategoryData = {columnReportId: id,columnCategoryId: categoryId,
             };
               await txn.insert(tableItemcategory, reportCategoryData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usertransaction table   
          await txn.delete(tableUsertransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableUsertransaction, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsertransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reportTransactionData = {columnReportId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableUsertransaction, reportTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Chatuser table   
          await txn.delete(tableChatuser, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final chatId in chatIds) {
             final reportChatData = {columnReportId: id,columnChatId: chatId,
             };
               await txn.insert(tableChatuser, reportChatData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableChatuser, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableChatuser, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Itemtransaction table   
          await txn.delete(tableItemtransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final transactionId in transactionIds) {
             final reportTransactionData = {columnReportId: id,columnTransactionId: transactionId,
             };
               await txn.insert(tableItemtransaction, reportTransactionData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableItemtransaction, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final itemId in itemIds) {
             final reportItemData = {columnReportId: id,columnItemId: itemId,
             };
               await txn.insert(tableItemtransaction, reportItemData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  } 
        // Update Usercommunity table   
          await txn.delete(tableUsercommunity, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final userId in userIds) {
             final reportUserData = {columnReportId: id,columnUserId: userId,
             };
               await txn.insert(tableUsercommunity, reportUserData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }   
          await txn.delete(tableUsercommunity, where: '$columnReportId = ?', whereArgs: [id]);
            
            for (final communityId in communityIds) {
             final reportCommunityData = {columnReportId: id,columnCommunityId: communityId,
             };
               await txn.insert(tableUsercommunity, reportCommunityData); 
    }   
     return 1; // Return a success indicator
    });
 
    return result;
  }

//for Update operation on Chat by id
  static Future<int> updateChat(
    int id,
    int? chatId,
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnChatId: chatId,
    columnCreationDate: DateTime.now().toString(),
    };
    final result = await db.transaction((txn) async {
      // Update the Chat details
      await txn.update(tableChats, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Category by id
  static Future<int> updateCategory(
    int id,
    int? categoryId,
    String description,
    String name
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnCategoryId: categoryId,
    columnDescription: description,
    columnName: name,
    };
    final result = await db.transaction((txn) async {
      // Update the Category details
      await txn.update(tableCategorys, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }

//for Update operation on Transaction by id
  static Future<int> updateTransaction(
    int id,
    int? transactionId,
     status
    ) 
    async {
    final db = await SQLHelper.db();

    final data = {
    columnTransactionId: transactionId,
    columnDate: DateTime.now().toString(),
    columnStatus: status,
    };
    final result = await db.transaction((txn) async {
      // Update the Transaction details
      await txn.update(tableTransactions, data, where: "$columnId = ?", whereArgs: [id]);
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }
     return 1; // Return a success indicator
    });
    return result;
  }


// for delete operation on Item by id
static Future<void> deleteItem(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      
      // Update Reviews assigned to the Item being deleted
      await txn.update(tableReviews, {columnitemid: null}, where: '$columnitemid = ?', whereArgs: [id]);
      // Update Medias assigned to the Item being deleted
      await txn.update(tableMedias, {columnitemid: null}, where: '$columnitemid = ?', whereArgs: [id]);
      // Set Item ID to null in item_category table for the deleted Item
      await txn.update(tableItemcategory, {columnItemId: null},
          where: '$columnItemId = ?', whereArgs: [id]);

          await txn.delete(tableItemcategory, where: "$columnItemId IS NULL");
      // Set Item ID to null in item_transaction table for the deleted Item
      await txn.update(tableItemtransaction, {columnItemId: null},
          where: '$columnItemId = ?', whereArgs: [id]);

          await txn.delete(tableItemtransaction, where: "$columnItemId IS NULL");

   // Delete the Item
      await txn.delete(tableItems, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Item: $err");
  }
}

// for delete operation on User by id
static Future<void> deleteUser(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      
      // Update Items assigned to the User being deleted
      await txn.update(tableItems, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Messages assigned to the User being deleted
      await txn.update(tableMessages, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Messages assigned to the User being deleted
      await txn.update(tableMessages, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Messages assigned to the User being deleted
      await txn.update(tableMessages, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Messages assigned to the User being deleted
      await txn.update(tableMessages, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Messages assigned to the User being deleted
      await txn.update(tableMessages, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Messages assigned to the User being deleted
      await txn.update(tableMessages, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Messages assigned to the User being deleted
      await txn.update(tableMessages, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Reviews assigned to the User being deleted
      await txn.update(tableReviews, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Notifications assigned to the User being deleted
      await txn.update(tableNotifications, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Ratings assigned to the User being deleted
      await txn.update(tableRatings, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Ratings assigned to the User being deleted
      await txn.update(tableRatings, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Medias assigned to the User being deleted
      await txn.update(tableMedias, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Reports assigned to the User being deleted
      await txn.update(tableReports, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Update Reports assigned to the User being deleted
      await txn.update(tableReports, {columnuserid: null}, where: '$columnuserid = ?', whereArgs: [id]);
      // Set User ID to null in user_transaction table for the deleted User
      await txn.update(tableUsertransaction, {columnUserId: null},
          where: '$columnUserId = ?', whereArgs: [id]);

          await txn.delete(tableUsertransaction, where: "$columnUserId IS NULL");
      // Set User ID to null in chat_user table for the deleted User
      await txn.update(tableChatuser, {columnUserId: null},
          where: '$columnUserId = ?', whereArgs: [id]);

          await txn.delete(tableChatuser, where: "$columnUserId IS NULL");
      // Set User ID to null in user_community table for the deleted User
      await txn.update(tableUsercommunity, {columnUserId: null},
          where: '$columnUserId = ?', whereArgs: [id]);

          await txn.delete(tableUsercommunity, where: "$columnUserId IS NULL");

   // Delete the User
      await txn.delete(tableUsers, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the User: $err");
  }
}

// for delete operation on Message by id
static Future<void> deleteMessage(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      
      // Update Users assigned to the Message being deleted
      await txn.update(tableUsers, {columnmessageid: null}, where: '$columnmessageid = ?', whereArgs: [id]);
      // Update Users assigned to the Message being deleted
      await txn.update(tableUsers, {columnmessageid: null}, where: '$columnmessageid = ?', whereArgs: [id]);
      // Update Users assigned to the Message being deleted
      await txn.update(tableUsers, {columnmessageid: null}, where: '$columnmessageid = ?', whereArgs: [id]);
      // Update Users assigned to the Message being deleted
      await txn.update(tableUsers, {columnmessageid: null}, where: '$columnmessageid = ?', whereArgs: [id]);
      // Update Users assigned to the Message being deleted
      await txn.update(tableUsers, {columnmessageid: null}, where: '$columnmessageid = ?', whereArgs: [id]);

   // Delete the Message
      await txn.delete(tableMessages, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Message: $err");
  }
}

// for delete operation on Review by id
static Future<void> deleteReview(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      

   // Delete the Review
      await txn.delete(tableReviews, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Review: $err");
  }
}

// for delete operation on Notification by id
static Future<void> deleteNotification(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      

   // Delete the Notification
      await txn.delete(tableNotifications, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Notification: $err");
  }
}

// for delete operation on Rating by id
static Future<void> deleteRating(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      

   // Delete the Rating
      await txn.delete(tableRatings, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Rating: $err");
  }
}

// for delete operation on Media by id
static Future<void> deleteMedia(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      
      // Update Users assigned to the Media being deleted
      await txn.update(tableUsers, {columnmediaid: null}, where: '$columnmediaid = ?', whereArgs: [id]);

   // Delete the Media
      await txn.delete(tableMedias, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Media: $err");
  }
}

// for delete operation on Community by id
static Future<void> deleteCommunity(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      
      // Set Community ID to null in user_community table for the deleted Community
      await txn.update(tableUsercommunity, {columnCommunityId: null},
          where: '$columnCommunityId = ?', whereArgs: [id]);

          await txn.delete(tableUsercommunity, where: "$columnCommunityId IS NULL");

   // Delete the Community
      await txn.delete(tableCommunitys, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Community: $err");
  }
}

// for delete operation on Report by id
static Future<void> deleteReport(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      

   // Delete the Report
      await txn.delete(tableReports, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Report: $err");
  }
}

// for delete operation on Chat by id
static Future<void> deleteChat(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      
      // Update Messages assigned to the Chat being deleted
      await txn.update(tableMessages, {columnchatid: null}, where: '$columnchatid = ?', whereArgs: [id]);
      // Set Chat ID to null in chat_user table for the deleted Chat
      await txn.update(tableChatuser, {columnChatId: null},
          where: '$columnChatId = ?', whereArgs: [id]);

          await txn.delete(tableChatuser, where: "$columnChatId IS NULL");

   // Delete the Chat
      await txn.delete(tableChats, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Chat: $err");
  }
}

// for delete operation on Category by id
static Future<void> deleteCategory(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      
      // Set Category ID to null in item_category table for the deleted Category
      await txn.update(tableItemcategory, {columnCategoryId: null},
          where: '$columnCategoryId = ?', whereArgs: [id]);

          await txn.delete(tableItemcategory, where: "$columnCategoryId IS NULL");

   // Delete the Category
      await txn.delete(tableCategorys, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Category: $err");
  }
}

// for delete operation on Transaction by id
static Future<void> deleteTransaction(int id) async {
    final db = await SQLHelper.db();
    try {
       await db.transaction((txn) async {
      
      // Set Transaction ID to null in user_transaction table for the deleted Transaction
      await txn.update(tableUsertransaction, {columnTransactionId: null},
          where: '$columnTransactionId = ?', whereArgs: [id]);

          await txn.delete(tableUsertransaction, where: "$columnTransactionId IS NULL");
      // Set Transaction ID to null in item_transaction table for the deleted Transaction
      await txn.update(tableItemtransaction, {columnTransactionId: null},
          where: '$columnTransactionId = ?', whereArgs: [id]);

          await txn.delete(tableItemtransaction, where: "$columnTransactionId IS NULL");

   // Delete the Transaction
      await txn.delete(tableTransactions, where: "$columnId = ?", whereArgs: [id]);
    });

  } catch (err) {
    logger.e("Something went wrong when deleting the Transaction: $err");
  }
}


static Future<int> getItemIdByName(String itemName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableItems, where: '$columnName = ?', whereArgs: [itemName]);

    if (result.isNotEmpty) {
      final itemId = result.first[columnId] as int;
      return itemId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getUserIdByName(String userName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableUsers, where: '$columnName = ?', whereArgs: [userName]);

    if (result.isNotEmpty) {
      final userId = result.first[columnId] as int;
      return userId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getMessageIdByName(String messageName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableMessages, where: '$columnName = ?', whereArgs: [messageName]);

    if (result.isNotEmpty) {
      final messageId = result.first[columnId] as int;
      return messageId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getReviewIdByName(String reviewName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableReviews, where: '$columnName = ?', whereArgs: [reviewName]);

    if (result.isNotEmpty) {
      final reviewId = result.first[columnId] as int;
      return reviewId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getNotificationIdByName(String notificationName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableNotifications, where: '$columnName = ?', whereArgs: [notificationName]);

    if (result.isNotEmpty) {
      final notificationId = result.first[columnId] as int;
      return notificationId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getRatingIdByName(String ratingName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableRatings, where: '$columnName = ?', whereArgs: [ratingName]);

    if (result.isNotEmpty) {
      final ratingId = result.first[columnId] as int;
      return ratingId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getMediaIdByName(String mediaName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableMedias, where: '$columnName = ?', whereArgs: [mediaName]);

    if (result.isNotEmpty) {
      final mediaId = result.first[columnId] as int;
      return mediaId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getCommunityIdByName(String communityName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableCommunitys, where: '$columnName = ?', whereArgs: [communityName]);

    if (result.isNotEmpty) {
      final communityId = result.first[columnId] as int;
      return communityId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getReportIdByName(String reportName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableReports, where: '$columnName = ?', whereArgs: [reportName]);

    if (result.isNotEmpty) {
      final reportId = result.first[columnId] as int;
      return reportId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getChatIdByName(String chatName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableChats, where: '$columnName = ?', whereArgs: [chatName]);

    if (result.isNotEmpty) {
      final chatId = result.first[columnId] as int;
      return chatId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getCategoryIdByName(String categoryName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableCategorys, where: '$columnName = ?', whereArgs: [categoryName]);

    if (result.isNotEmpty) {
      final categoryId = result.first[columnId] as int;
      return categoryId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }

static Future<int> getTransactionIdByName(String transactionName) async {
    final db = await SQLHelper.db();

    final result =
        await db.query(tableTransactions, where: '$columnName = ?', whereArgs: [transactionName]);

    if (result.isNotEmpty) {
      final transactionId = result.first[columnId] as int;
      return transactionId;
    }
    return 0; // Return 0 or another appropriate value instead of an empty string
  }


static Future<List<String>> getItemNamesByIds(List<int> itemIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> itemRecords = await db.query(
    tableItems,
    columns: [columnName],
    where: '$columnId IN (${ itemIds.map((id) => '?').join(', ')})',
    whereArgs: itemIds,
  );

  final List<String> itemNames =
      itemRecords.map((record) => record[columnName] as String).toList();

  return itemNames;
}

static Future<List<String>> getUserNamesByIds(List<int> userIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> userRecords = await db.query(
    tableUsers,
    columns: [columnName],
    where: '$columnId IN (${ userIds.map((id) => '?').join(', ')})',
    whereArgs: userIds,
  );

  final List<String> userNames =
      userRecords.map((record) => record[columnName] as String).toList();

  return userNames;
}

static Future<List<String>> getMessageNamesByIds(List<int> messageIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> messageRecords = await db.query(
    tableMessages,
    columns: [columnName],
    where: '$columnId IN (${ messageIds.map((id) => '?').join(', ')})',
    whereArgs: messageIds,
  );

  final List<String> messageNames =
      messageRecords.map((record) => record[columnName] as String).toList();

  return messageNames;
}

static Future<List<String>> getReviewNamesByIds(List<int> reviewIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> reviewRecords = await db.query(
    tableReviews,
    columns: [columnName],
    where: '$columnId IN (${ reviewIds.map((id) => '?').join(', ')})',
    whereArgs: reviewIds,
  );

  final List<String> reviewNames =
      reviewRecords.map((record) => record[columnName] as String).toList();

  return reviewNames;
}

static Future<List<String>> getNotificationNamesByIds(List<int> notificationIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> notificationRecords = await db.query(
    tableNotifications,
    columns: [columnName],
    where: '$columnId IN (${ notificationIds.map((id) => '?').join(', ')})',
    whereArgs: notificationIds,
  );

  final List<String> notificationNames =
      notificationRecords.map((record) => record[columnName] as String).toList();

  return notificationNames;
}

static Future<List<String>> getRatingNamesByIds(List<int> ratingIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> ratingRecords = await db.query(
    tableRatings,
    columns: [columnName],
    where: '$columnId IN (${ ratingIds.map((id) => '?').join(', ')})',
    whereArgs: ratingIds,
  );

  final List<String> ratingNames =
      ratingRecords.map((record) => record[columnName] as String).toList();

  return ratingNames;
}

static Future<List<String>> getMediaNamesByIds(List<int> mediaIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> mediaRecords = await db.query(
    tableMedias,
    columns: [columnName],
    where: '$columnId IN (${ mediaIds.map((id) => '?').join(', ')})',
    whereArgs: mediaIds,
  );

  final List<String> mediaNames =
      mediaRecords.map((record) => record[columnName] as String).toList();

  return mediaNames;
}

static Future<List<String>> getCommunityNamesByIds(List<int> communityIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> communityRecords = await db.query(
    tableCommunitys,
    columns: [columnName],
    where: '$columnId IN (${ communityIds.map((id) => '?').join(', ')})',
    whereArgs: communityIds,
  );

  final List<String> communityNames =
      communityRecords.map((record) => record[columnName] as String).toList();

  return communityNames;
}

static Future<List<String>> getReportNamesByIds(List<int> reportIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> reportRecords = await db.query(
    tableReports,
    columns: [columnName],
    where: '$columnId IN (${ reportIds.map((id) => '?').join(', ')})',
    whereArgs: reportIds,
  );

  final List<String> reportNames =
      reportRecords.map((record) => record[columnName] as String).toList();

  return reportNames;
}

static Future<List<String>> getChatNamesByIds(List<int> chatIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> chatRecords = await db.query(
    tableChats,
    columns: [columnName],
    where: '$columnId IN (${ chatIds.map((id) => '?').join(', ')})',
    whereArgs: chatIds,
  );

  final List<String> chatNames =
      chatRecords.map((record) => record[columnName] as String).toList();

  return chatNames;
}

static Future<List<String>> getCategoryNamesByIds(List<int> categoryIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> categoryRecords = await db.query(
    tableCategorys,
    columns: [columnName],
    where: '$columnId IN (${ categoryIds.map((id) => '?').join(', ')})',
    whereArgs: categoryIds,
  );

  final List<String> categoryNames =
      categoryRecords.map((record) => record[columnName] as String).toList();

  return categoryNames;
}

static Future<List<String>> getTransactionNamesByIds(List<int> transactionIds) async {
  final db = await SQLHelper.db();
  
  final List<Map<String, dynamic>> transactionRecords = await db.query(
    tableTransactions,
    columns: [columnName],
    where: '$columnId IN (${ transactionIds.map((id) => '?').join(', ')})',
    whereArgs: transactionIds,
  );

  final List<String> transactionNames =
      transactionRecords.map((record) => record[columnName] as String).toList();

  return transactionNames;
}

static Future<List<String>> getItemNamesByCategoryId(int categoryId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> itemRecords = await db.rawQuery('''
    SELECT $tableItems.$columnName
    FROM $tableItems
    INNER JOIN $tableItemcategory ON $tableItems.$columnId = $tableItemcategory.$columnItemId
    WHERE $tableItemcategory.$columnCategoryId = ?
  ''', [categoryId]);

  final List<String> itemNames =
      itemRecords.map((record) => record[columnName] as String).toList();

  return itemNames;
}

static Future<List<String>> getCategoryNamesByItemId(int itemId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> categoryRecords = await db.rawQuery('''
    SELECT $tableCategorys.$columnName
    FROM $tableCategorys
    INNER JOIN $tableItemcategory ON $tableCategorys.$columnId = $tableItemcategory.$columnCategoryId
    WHERE $tableItemcategory.$columnItemId = ?
  ''', [itemId]);

  final List<String> categoryNames =
      categoryRecords.map((record) => record[columnName] as String).toList();

  return categoryNames;
}
static Future<List<String>> getUserNamesByTransactionId(int transactionId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> userRecords = await db.rawQuery('''
    SELECT $tableUsers.$columnName
    FROM $tableUsers
    INNER JOIN $tableUsertransaction ON $tableUsers.$columnId = $tableUsertransaction.$columnUserId
    WHERE $tableUsertransaction.$columnTransactionId = ?
  ''', [transactionId]);

  final List<String> userNames =
      userRecords.map((record) => record[columnName] as String).toList();

  return userNames;
}

static Future<List<String>> getTransactionNamesByUserId(int userId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> transactionRecords = await db.rawQuery('''
    SELECT $tableTransactions.$columnName
    FROM $tableTransactions
    INNER JOIN $tableUsertransaction ON $tableTransactions.$columnId = $tableUsertransaction.$columnTransactionId
    WHERE $tableUsertransaction.$columnUserId = ?
  ''', [userId]);

  final List<String> transactionNames =
      transactionRecords.map((record) => record[columnName] as String).toList();

  return transactionNames;
}
static Future<List<String>> getChatNamesByUserId(int userId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> chatRecords = await db.rawQuery('''
    SELECT $tableChats.$columnName
    FROM $tableChats
    INNER JOIN $tableChatuser ON $tableChats.$columnId = $tableChatuser.$columnChatId
    WHERE $tableChatuser.$columnUserId = ?
  ''', [userId]);

  final List<String> chatNames =
      chatRecords.map((record) => record[columnName] as String).toList();

  return chatNames;
}

static Future<List<String>> getUserNamesByChatId(int chatId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> userRecords = await db.rawQuery('''
    SELECT $tableUsers.$columnName
    FROM $tableUsers
    INNER JOIN $tableChatuser ON $tableUsers.$columnId = $tableChatuser.$columnUserId
    WHERE $tableChatuser.$columnChatId = ?
  ''', [chatId]);

  final List<String> userNames =
      userRecords.map((record) => record[columnName] as String).toList();

  return userNames;
}
static Future<List<String>> getTransactionNamesByItemId(int itemId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> transactionRecords = await db.rawQuery('''
    SELECT $tableTransactions.$columnName
    FROM $tableTransactions
    INNER JOIN $tableItemtransaction ON $tableTransactions.$columnId = $tableItemtransaction.$columnTransactionId
    WHERE $tableItemtransaction.$columnItemId = ?
  ''', [itemId]);

  final List<String> transactionNames =
      transactionRecords.map((record) => record[columnName] as String).toList();

  return transactionNames;
}

static Future<List<String>> getItemNamesByTransactionId(int transactionId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> itemRecords = await db.rawQuery('''
    SELECT $tableItems.$columnName
    FROM $tableItems
    INNER JOIN $tableItemtransaction ON $tableItems.$columnId = $tableItemtransaction.$columnItemId
    WHERE $tableItemtransaction.$columnTransactionId = ?
  ''', [transactionId]);

  final List<String> itemNames =
      itemRecords.map((record) => record[columnName] as String).toList();

  return itemNames;
}
static Future<List<String>> getUserNamesByCommunityId(int communityId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> userRecords = await db.rawQuery('''
    SELECT $tableUsers.$columnName
    FROM $tableUsers
    INNER JOIN $tableUsercommunity ON $tableUsers.$columnId = $tableUsercommunity.$columnUserId
    WHERE $tableUsercommunity.$columnCommunityId = ?
  ''', [communityId]);

  final List<String> userNames =
      userRecords.map((record) => record[columnName] as String).toList();

  return userNames;
}

static Future<List<String>> getCommunityNamesByUserId(int userId) async {
  final db = await SQLHelper.db();

  final List<Map<String, dynamic>> communityRecords = await db.rawQuery('''
    SELECT $tableCommunitys.$columnName
    FROM $tableCommunitys
    INNER JOIN $tableUsercommunity ON $tableCommunitys.$columnId = $tableUsercommunity.$columnCommunityId
    WHERE $tableUsercommunity.$columnUserId = ?
  ''', [userId]);

  final List<String> communityNames =
      communityRecords.map((record) => record[columnName] as String).toList();

  return communityNames;
} 

// Fetch existing items from the database
static Future<List<String>> getAllItems() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableItems, columns: [columnName]);
    final List<String> items =
        results.map((row) => row[columnName] as String).toList();
    return items;
  } 

// Fetch existing users from the database
static Future<List<String>> getAllUsers() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableUsers, columns: [columnName]);
    final List<String> users =
        results.map((row) => row[columnName] as String).toList();
    return users;
  } 

// Fetch existing messages from the database
static Future<List<String>> getAllMessages() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableMessages, columns: [columnName]);
    final List<String> messages =
        results.map((row) => row[columnName] as String).toList();
    return messages;
  } 

// Fetch existing reviews from the database
static Future<List<String>> getAllReviews() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableReviews, columns: [columnName]);
    final List<String> reviews =
        results.map((row) => row[columnName] as String).toList();
    return reviews;
  } 

// Fetch existing notifications from the database
static Future<List<String>> getAllNotifications() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableNotifications, columns: [columnName]);
    final List<String> notifications =
        results.map((row) => row[columnName] as String).toList();
    return notifications;
  } 

// Fetch existing ratings from the database
static Future<List<String>> getAllRatings() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableRatings, columns: [columnName]);
    final List<String> ratings =
        results.map((row) => row[columnName] as String).toList();
    return ratings;
  } 

// Fetch existing medias from the database
static Future<List<String>> getAllMedias() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableMedias, columns: [columnName]);
    final List<String> medias =
        results.map((row) => row[columnName] as String).toList();
    return medias;
  } 

// Fetch existing communitys from the database
static Future<List<String>> getAllCommunitys() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableCommunitys, columns: [columnName]);
    final List<String> communitys =
        results.map((row) => row[columnName] as String).toList();
    return communitys;
  } 

// Fetch existing reports from the database
static Future<List<String>> getAllReports() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableReports, columns: [columnName]);
    final List<String> reports =
        results.map((row) => row[columnName] as String).toList();
    return reports;
  } 

// Fetch existing chats from the database
static Future<List<String>> getAllChats() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableChats, columns: [columnName]);
    final List<String> chats =
        results.map((row) => row[columnName] as String).toList();
    return chats;
  } 

// Fetch existing categorys from the database
static Future<List<String>> getAllCategorys() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableCategorys, columns: [columnName]);
    final List<String> categorys =
        results.map((row) => row[columnName] as String).toList();
    return categorys;
  } 

// Fetch existing transactions from the database
static Future<List<String>> getAllTransactions() async {
    final db = await SQLHelper.db();
    final List<Map<String, dynamic>> results =
        await db.query(tableTransactions, columns: [columnName]);
    final List<String> transactions =
        results.map((row) => row[columnName] as String).toList();
    return transactions;
  }
}
















