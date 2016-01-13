.class final Lcom/htc/server/ulog/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "userbehavior.db"

.field private static final DATABASE_VERSION:I = 0x6

.field private static final EVENT_QUEUE_TABLE_NAME:Ljava/lang/String; = "event_queue"

.field private static final IS_DEBUG:Z

.field private static final POLICY_APPID:Ljava/lang/String; = "appid"

.field private static final POLICY_APPID_IDX:I = 0x1

.field private static final POLICY_CATEGORY:Ljava/lang/String; = "category"

.field private static final POLICY_CATEGORY_IDX:I = 0x2

.field private static final POLICY_DEFAULT_VALUE:Ljava/lang/String; = "default_value"

.field private static final POLICY_DEFAULT_VALUE_IDX:I = 0x6

.field private static final POLICY_DUE_DATE:Ljava/lang/String; = "due_date"

.field private static final POLICY_DUE_DATE_IDX:I = 0x5

.field private static final POLICY_ID:Ljava/lang/String; = "_id"

.field private static final POLICY_ID_IDX:I = 0x0

.field private static final POLICY_KEY:Ljava/lang/String; = "key"

.field private static final POLICY_KEY_IDX:I = 0x3

.field private static final POLICY_TABLE_NAME:Ljava/lang/String; = "policy"

.field private static final POLICY_VALUE:Ljava/lang/String; = "value"

.field private static final POLICY_VALUE_IDX:I = 0x4

.field private static final QUEUE_ID:Ljava/lang/String; = "_id"

.field private static final QUEUE_TABLE_NAME:Ljava/lang/String; = "queue"

.field private static final QUEUE_TAG:Ljava/lang/String; = "tag"

.field private static final QUEUE_TIME:Ljava/lang/String; = "time"

.field private static final STATS_APPID:Ljava/lang/String; = "appid"

.field public static final STATS_APPID_IDX:I = 0x1

.field private static final STATS_CATEGORY:Ljava/lang/String; = "category"

.field public static final STATS_CATEGORY_IDX:I = 0x2

.field private static final STATS_COUNT:Ljava/lang/String; = "count"

.field public static final STATS_COUNT_IDX:I = 0x5

.field private static final STATS_COUNT_NAME:Ljava/lang/String; = "count_name"

.field public static final STATS_COUNT_NAME_IDX:I = 0x4

.field private static final STATS_ID:Ljava/lang/String; = "_id"

.field public static final STATS_ID_IDX:I = 0x0

.field private static final STATS_TABLE_NAME:Ljava/lang/String; = "stats"

.field private static final STATS_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final STATS_TIMESTAMP_IDX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UserBehaviorLoggingService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/server/ulog/DatabaseHelper;->IS_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dbName"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "userbehavior.db"

    .end local p2    # "dbName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 82
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[DatabaseHelper constructor]"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private addQueueRecord(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 115
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v2, "value":Landroid/content/ContentValues;
    const-string v3, "tag"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v3, "time"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/server/ulog/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "UserBehaviorLoggingService"

    const-string v4, "error in store dropbox history"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private clearTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/server/ulog/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 168
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    const-string v2, "tag = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 172
    :goto_0
    const-string v2, "UserBehaviorLoggingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "where clause : tag = ?, where args : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v0, :cond_0

    .line 178
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    :cond_0
    :goto_1
    return-void

    .line 171
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    if-eqz v0, :cond_0

    .line 178
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 179
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_2

    .line 178
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 176
    :cond_2
    :goto_2
    throw v2

    .line 179
    :catch_2
    move-exception v3

    goto :goto_2
.end method

.method private getQueueRecords(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v8, 0x0

    .line 139
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/server/ulog/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 142
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const/4 v2, 0x0

    const-string v3, "tag = ?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time"

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 153
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    return-object v8

    .line 145
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time"

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 149
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v9

    .line 150
    .local v9, "ex":Ljava/lang/Exception;
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "error in get dropbox history"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 188
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version: from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 191
    :try_start_0
    const-string v1, "CREATE TABLE queue ( _id INTEGER PRIMARY KEY AUTOINCREMENT, tag TEXT NOT NULL, time TEXT NOT NULL)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    :cond_0
    const/4 v1, 0x2

    if-ge p2, v1, :cond_1

    .line 197
    const-string v1, "CREATE TABLE stats (_id INTEGER PRIMARY KEY AUTOINCREMENT, appid TEXT, category TEXT, timestamp INTEGER NOT NULL, count_name TEXT, count INTEGER DEFAULT 0)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    :cond_1
    const/4 v1, 0x3

    if-ge p2, v1, :cond_2

    .line 206
    const-string v1, "CREATE TABLE policy ( _id INTEGER PRIMARY KEY AUTOINCREMENT, appid TEXT, category TEXT, key TEXT, value TEXT)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 214
    :cond_2
    const/4 v1, 0x4

    if-ge p2, v1, :cond_3

    .line 215
    const-string v1, "CREATE TABLE event_queue ( _id INTEGER PRIMARY KEY AUTOINCREMENT, tag TEXT NOT NULL, time TEXT NOT NULL)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    :cond_3
    const/4 v1, 0x5

    if-ge p2, v1, :cond_4

    .line 221
    const-string v1, "ALTER TABLE policy ADD COLUMN due_date INTEGER DEFAULT -1;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 224
    :cond_4
    const/4 v1, 0x6

    if-ge p2, v1, :cond_5

    .line 226
    const-string v1, "ALTER TABLE policy ADD COLUMN default_value TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_5
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 309
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/htc/server/ulog/DatabaseHelper;->InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 16
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "dueDate"    # J

    .prologue
    .line 318
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[InsertPolicy] appid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", category : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", due date:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v10, 0x0

    .line 320
    .local v10, "bChanged":Z
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 323
    const-string v15, "appid=? AND category=? AND key=?"

    .line 325
    .local v15, "whereClause":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const/4 v3, 0x1

    aput-object p2, v6, v3

    const/4 v3, 0x2

    aput-object p3, v6, v3

    .line 327
    .local v6, "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 328
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 330
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/server/ulog/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 331
    const-string v3, "policy"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "value"

    aput-object v7, v4, v5

    const/4 v5, 0x2

    const-string v7, "due_date"

    aput-object v7, v4, v5

    const-string v5, "appid=? AND category=? AND key=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 337
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor[0]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cursor[1]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cursor[2]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    const-wide/16 v3, -0x1

    cmp-long v3, p5, v3

    if-nez v3, :cond_3

    const/4 v10, 0x0

    .line 369
    :cond_0
    :goto_0
    if-eqz v11, :cond_1

    .line 370
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 371
    const/4 v11, 0x0

    .line 373
    :cond_1
    if-eqz v2, :cond_2

    .line 374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 375
    :goto_1
    const/4 v2, 0x0

    .line 380
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v15    # "whereClause":Ljava/lang/String;
    :cond_2
    :goto_2
    return v10

    .line 341
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v15    # "whereClause":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    :try_start_2
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v3, p5, v3

    if-eqz v3, :cond_0

    .line 342
    :cond_4
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 343
    .local v13, "id":I
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v14, "values":Landroid/content/ContentValues;
    const-string v3, "value"

    move-object/from16 v0, p4

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v3, "due_date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-string v3, "policy"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v2, v3, v14, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    const/4 v10, 0x1

    .line 348
    goto :goto_0

    .line 352
    .end local v13    # "id":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_5
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .restart local v14    # "values":Landroid/content/ContentValues;
    const-string v3, "appid"

    move-object/from16 v0, p1

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v3, "category"

    move-object/from16 v0, p2

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v3, "key"

    move-object/from16 v0, p3

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v3, "value"

    move-object/from16 v0, p4

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v3, "due_date"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-wide/16 v3, -0x1

    cmp-long v3, p5, v3

    if-nez v3, :cond_6

    .line 361
    const-string v3, "default_value"

    move-object/from16 v0, p4

    invoke-virtual {v14, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_6
    const-string v3, "policy"

    const-string v4, "garbge"

    invoke-virtual {v2, v3, v4, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 365
    .end local v14    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 366
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 369
    if-eqz v11, :cond_7

    .line 370
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 371
    const/4 v11, 0x0

    .line 373
    :cond_7
    if-eqz v2, :cond_2

    .line 374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 377
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 368
    :catchall_0
    move-exception v3

    .line 369
    if-eqz v11, :cond_8

    .line 370
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 371
    const/4 v11, 0x0

    .line 373
    :cond_8
    if-eqz v2, :cond_9

    .line 374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 375
    const/4 v2, 0x0

    .line 368
    :cond_9
    :goto_3
    throw v3

    .line 377
    :catch_2
    move-exception v4

    goto :goto_3
.end method

.method public addEventQueueRecord(Ljava/lang/String;J)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 102
    const-string v0, "event_queue"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/server/ulog/DatabaseHelper;->addQueueRecord(Ljava/lang/String;Ljava/lang/String;J)V

    .line 103
    return-void
.end method

.method public addStats(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 20
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "timestamp"    # J
    .param p5, "countName"    # Ljava/lang/String;
    .param p6, "count"    # J

    .prologue
    .line 241
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/server/ulog/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 243
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    const-string v19, "appid=? AND category=? AND count_name=?"

    .line 246
    .local v19, "whereClause":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    const/4 v3, 0x1

    aput-object p2, v6, v3

    const/4 v3, 0x2

    aput-object p5, v6, v3

    .line 247
    .local v6, "whereArgs":[Ljava/lang/String;
    const-string v3, "stats"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "count"

    aput-object v7, v4, v5

    const-string v5, "appid=? AND category=? AND count_name=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 255
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 256
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 258
    .local v12, "id":I
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 259
    .local v16, "oldCount":J
    add-long v14, v16, p6

    .line 261
    .local v14, "newCount":J
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v13, "kvPairs":Landroid/content/ContentValues;
    const-string v3, "count"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 263
    const-string v3, "timestamp"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v13, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    const-string v3, "stats"

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-virtual {v2, v3, v13, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    .end local v12    # "id":I
    .end local v13    # "kvPairs":Landroid/content/ContentValues;
    .end local v14    # "newCount":J
    .end local v16    # "oldCount":J
    :goto_0
    if-eqz v10, :cond_0

    .line 276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v19    # "whereClause":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 267
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v6    # "whereArgs":[Ljava/lang/String;
    .restart local v10    # "c":Landroid/database/Cursor;
    .restart local v19    # "whereClause":Ljava/lang/String;
    :cond_1
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 268
    .local v18, "values":Landroid/content/ContentValues;
    const-string v3, "appid"

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v3, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v3, "timestamp"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    const-string v3, "count_name"

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v3, "count"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 273
    const-string v3, "stats"

    const-string v4, "garbge"

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 278
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v18    # "values":Landroid/content/ContentValues;
    .end local v19    # "whereClause":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 279
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public add_HTC_UB_QueueRecord(Ljava/lang/String;J)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 98
    const-string v0, "queue"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/htc/server/ulog/DatabaseHelper;->addQueueRecord(Ljava/lang/String;Ljava/lang/String;J)V

    .line 99
    return-void
.end method

.method public batchInsertPolicy(Ljava/util/ArrayList;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "sqlParameters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v7, -0x1

    .line 478
    const/4 v5, 0x0

    .line 479
    .local v5, "rowInsertCount":I
    const/4 v0, 0x0

    .line 480
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 482
    .local v3, "insert":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Lcom/htc/server/ulog/DatabaseHelper;->getPolicyCount()I

    move-result v8

    if-eqz v8, :cond_0

    .line 534
    :goto_0
    return v7

    .line 487
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/server/ulog/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 489
    const-string v6, "insert into policy (appid,category,key,value,due_date,default_value) values(?,?,?,?,?,?)"

    .line 490
    .local v6, "sql":Ljava/lang/String;
    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 492
    if-eqz v3, :cond_7

    .line 493
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 494
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 495
    .local v4, "parameters":[Ljava/lang/String;
    const/4 v8, 0x1

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 496
    const/4 v8, 0x2

    const/4 v9, 0x1

    aget-object v9, v4, v9

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 497
    const/4 v8, 0x3

    const/4 v9, 0x2

    aget-object v9, v4, v9

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 498
    const/4 v8, 0x4

    const/4 v9, 0x3

    aget-object v9, v4, v9

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 499
    const/4 v8, 0x5

    const/4 v9, 0x4

    aget-object v9, v4, v9

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 500
    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x4

    aget-object v9, v4, v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v7, :cond_1

    .line 501
    const/4 v8, 0x6

    const/4 v9, 0x3

    aget-object v9, v4, v9

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 505
    :goto_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 506
    add-int/lit8 v5, v5, 0x1

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 503
    :cond_1
    const/4 v8, 0x6

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 516
    .end local v2    # "i":I
    .end local v4    # "parameters":[Ljava/lang/String;
    .end local v6    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    if-eqz v3, :cond_2

    .line 522
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 527
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 528
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    move v7, v5

    .line 534
    goto/16 :goto_0

    .line 508
    .restart local v2    # "i":I
    .restart local v6    # "sql":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 509
    sget-boolean v7, Lcom/htc/server/ulog/DatabaseHelper;->IS_DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "UserBehaviorLoggingService"

    const-string v8, "[BatchInsert] done"

    invoke-static {v7, v8}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 521
    .end local v2    # "i":I
    :goto_5
    if-eqz v3, :cond_6

    .line 522
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 527
    :cond_6
    :goto_6
    if-eqz v0, :cond_3

    .line 528
    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 529
    :catch_1
    move-exception v1

    .line 530
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[batchInsertPolicy]Clocing DB Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v6    # "sql":Ljava/lang/String;
    :goto_7
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 513
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "sql":Ljava/lang/String;
    :cond_7
    :try_start_7
    sget-boolean v7, Lcom/htc/server/ulog/DatabaseHelper;->IS_DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "UserBehaviorLoggingService"

    const-string v8, "[BatchInsert] fail, insert is null"

    invoke-static {v7, v8}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 520
    .end local v6    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 521
    if-eqz v3, :cond_9

    .line 522
    :try_start_8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 527
    :cond_9
    :goto_8
    if-eqz v0, :cond_a

    .line 528
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 520
    :cond_a
    :goto_9
    throw v7

    .line 523
    :catch_2
    move-exception v1

    .line 524
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "UserBehaviorLoggingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[batchInsertPolicy]Closing SQLiteStatement Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 529
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 530
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v8, "UserBehaviorLoggingService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[batchInsertPolicy]Clocing DB Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 523
    :catch_4
    move-exception v1

    .line 524
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[batchInsertPolicy]Closing SQLiteStatement Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 529
    :catch_5
    move-exception v1

    .line 530
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[batchInsertPolicy]Clocing DB Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7

    .line 523
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v6    # "sql":Ljava/lang/String;
    :catch_6
    move-exception v1

    .line 524
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v7, "UserBehaviorLoggingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[batchInsertPolicy]Closing SQLiteStatement Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public clearEventQueueRecords(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "event_queue"

    invoke-direct {p0, v0, p1}, Lcom/htc/server/ulog/DatabaseHelper;->clearTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public clearPolicy()V
    .locals 5

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/htc/server/ulog/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 426
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 428
    :try_start_0
    const-string v2, "policy"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 433
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 434
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v2

    .line 433
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 432
    :goto_1
    throw v2

    .line 434
    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public clear_HTC_UB_QueueRecords(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 157
    const-string v0, "queue"

    invoke-direct {p0, v0, p1}, Lcom/htc/server/ulog/DatabaseHelper;->clearTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public getAndClearStatsRecords()Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 284
    const/4 v8, 0x0

    .line 286
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/server/ulog/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 287
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "stats"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "timestamp"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 288
    if-eqz v8, :cond_0

    .line 289
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 290
    :cond_0
    const-string v1, "DELETE FROM stats"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v8

    .line 291
    :catch_0
    move-exception v9

    .line 292
    .local v9, "ex":Ljava/lang/Exception;
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "error in get stats records"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getEventQueueRecords()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 134
    const-string v0, "event_queue"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/htc/server/ulog/DatabaseHelper;->getQueueRecords(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getPolicy()Landroid/os/Bundle;
    .locals 19

    .prologue
    .line 384
    const/4 v9, 0x0

    .local v9, "appid":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "category":Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "key":Ljava/lang/String;
    const/16 v17, 0x0

    .line 385
    .local v17, "value":Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 386
    .local v12, "dueDate":J
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 387
    .local v16, "policyBundle":Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/server/ulog/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 388
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_5

    .line 389
    const/4 v10, 0x0

    .line 391
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "policy"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 392
    if-eqz v10, :cond_3

    .line 393
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v6, v12

    .end local v12    # "dueDate":J
    .local v6, "dueDate":J
    move-object/from16 v5, v17

    .end local v17    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    move-object v4, v15

    .end local v15    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    move-object v3, v11

    .end local v11    # "category":Ljava/lang/String;
    .local v3, "category":Ljava/lang/String;
    move-object v2, v9

    .line 394
    .end local v9    # "appid":Ljava/lang/String;
    .local v2, "appid":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 395
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 396
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 397
    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 398
    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 399
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 400
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "default_value":Ljava/lang/String;
    move-object/from16 v1, v16

    .line 402
    invoke-static/range {v1 .. v8}, Lcom/htc/utils/ulog/Util;->putPolicy(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 406
    .end local v8    # "default_value":Ljava/lang/String;
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v14

    .line 410
    .local v14, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    if-eqz v10, :cond_0

    .line 414
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 420
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_3
    return-object v16

    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_1
    move-object/from16 v1, v16

    .line 405
    :try_start_4
    invoke-static/range {v1 .. v7}, Lcom/htc/utils/ulog/Util;->putPolicy(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 412
    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v10, :cond_2

    .line 414
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 412
    :cond_2
    :goto_5
    throw v1

    .line 415
    :catch_1
    move-exception v18

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_3

    .end local v2    # "appid":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "dueDate":J
    .restart local v9    # "appid":Ljava/lang/String;
    .restart local v11    # "category":Ljava/lang/String;
    .restart local v12    # "dueDate":J
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_3
    move-wide v6, v12

    .end local v12    # "dueDate":J
    .restart local v6    # "dueDate":J
    move-object/from16 v5, v17

    .end local v17    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    move-object v4, v15

    .end local v15    # "key":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    move-object v3, v11

    .end local v11    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    move-object v2, v9

    .line 412
    .end local v9    # "appid":Ljava/lang/String;
    .restart local v2    # "appid":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_0

    .line 414
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 412
    .end local v2    # "appid":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "dueDate":J
    .restart local v9    # "appid":Ljava/lang/String;
    .restart local v11    # "category":Ljava/lang/String;
    .restart local v12    # "dueDate":J
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-wide v6, v12

    .end local v12    # "dueDate":J
    .restart local v6    # "dueDate":J
    move-object/from16 v5, v17

    .end local v17    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    move-object v4, v15

    .end local v15    # "key":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    move-object v3, v11

    .end local v11    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    move-object v2, v9

    .end local v9    # "appid":Ljava/lang/String;
    .restart local v2    # "appid":Ljava/lang/String;
    goto :goto_4

    .line 409
    .end local v2    # "appid":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "dueDate":J
    .restart local v9    # "appid":Ljava/lang/String;
    .restart local v11    # "category":Ljava/lang/String;
    .restart local v12    # "dueDate":J
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :catch_3
    move-exception v14

    move-wide v6, v12

    .end local v12    # "dueDate":J
    .restart local v6    # "dueDate":J
    move-object/from16 v5, v17

    .end local v17    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    move-object v4, v15

    .end local v15    # "key":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    move-object v3, v11

    .end local v11    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    move-object v2, v9

    .end local v9    # "appid":Ljava/lang/String;
    .restart local v2    # "appid":Ljava/lang/String;
    goto :goto_2

    .end local v2    # "appid":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "dueDate":J
    .end local v10    # "c":Landroid/database/Cursor;
    .restart local v9    # "appid":Ljava/lang/String;
    .restart local v11    # "category":Ljava/lang/String;
    .restart local v12    # "dueDate":J
    .restart local v15    # "key":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_5
    move-wide v6, v12

    .end local v12    # "dueDate":J
    .restart local v6    # "dueDate":J
    move-object/from16 v5, v17

    .end local v17    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    move-object v4, v15

    .end local v15    # "key":Ljava/lang/String;
    .restart local v4    # "key":Ljava/lang/String;
    move-object v3, v11

    .end local v11    # "category":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    move-object v2, v9

    .end local v9    # "appid":Ljava/lang/String;
    .restart local v2    # "appid":Ljava/lang/String;
    goto :goto_3
.end method

.method public getPolicyCount()I
    .locals 8

    .prologue
    .line 441
    const/4 v3, 0x0

    .line 442
    .local v3, "rowCount":I
    const/4 v0, 0x0

    .line 443
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 445
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/server/ulog/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 446
    const-string v4, "select count(*) from policy"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_2

    .line 448
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 449
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 458
    :goto_0
    if-eqz v0, :cond_0

    .line 459
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 464
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 465
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 470
    :cond_1
    :goto_2
    return v3

    .line 452
    :cond_2
    :try_start_3
    const-string v4, "UserBehaviorLoggingService"

    const-string v5, "[Select from Policy Table] The policy table doens\'t exist"

    invoke-static {v4, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 453
    :catch_0
    move-exception v2

    .line 454
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "UserBehaviorLoggingService"

    const-string v5, "[get readableDB fails] method: getPolicyCount"

    invoke-static {v4, v5}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 458
    if-eqz v0, :cond_3

    .line 459
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 464
    :cond_3
    :goto_3
    if-eqz v1, :cond_1

    .line 465
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 466
    :catch_1
    move-exception v2

    .line 467
    const-string v4, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getPolicyCount]Clocing DB Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_4
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 457
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 458
    if-eqz v0, :cond_4

    .line 459
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 464
    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    .line 465
    :try_start_8
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 457
    :cond_5
    :goto_6
    throw v4

    .line 460
    :catch_2
    move-exception v2

    .line 461
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "UserBehaviorLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPolicyCount]Closing Cursor Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 466
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 467
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v5, "UserBehaviorLoggingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getPolicyCount]Clocing DB Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 460
    :catch_4
    move-exception v2

    .line 461
    const-string v4, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getPolicyCount]Closing Cursor Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 460
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v2

    .line 461
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getPolicyCount]Closing Cursor Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 466
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 467
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v4, "UserBehaviorLoggingService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getPolicyCount]Clocing DB Exception,Method: batchInsertPolicy  Error msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4
.end method

.method public get_HTC_UB_QueueRecords(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "queue"

    invoke-direct {p0, v0, p1}, Lcom/htc/server/ulog/DatabaseHelper;->getQueueRecords(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 87
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[onCreate]"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/server/ulog/DatabaseHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 89
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 93
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[onUpgrade]"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/server/ulog/DatabaseHelper;->updateDatabase(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 95
    return-void
.end method
