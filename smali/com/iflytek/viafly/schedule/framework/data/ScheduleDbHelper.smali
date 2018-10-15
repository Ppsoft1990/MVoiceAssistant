.class Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ScheduleDbHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "DbRemind_1_1001.db"

.field public static final DATABASE_VERSION_10:I = 0xa

.field public static final DATABASE_VERSION_11:I = 0xb

.field public static final DATABASE_VERSION_12:I = 0xc

.field public static final DATABASE_VERSION_4:I = 0x4

.field public static final DATABASE_VERSION_5:I = 0x5

.field public static final DATABASE_VERSION_6:I = 0x6

.field public static final DATABASE_VERSION_7:I = 0x7

.field public static final DATABASE_VERSION_8:I = 0x8

.field public static final DATABASE_VERSION_9:I = 0x9

.field public static final OPERATION_ERROR_INT:I = -0x1

.field public static final SEPARATOR_FIELD:Ljava/lang/String; = "|"

.field public static final SEPARATOR_SEGMENT:Ljava/lang/String; = ","

.field public static final TABLE_NAME:Ljava/lang/String; = "table_remind"

.field private static final TAG:Ljava/lang/String; = "ScheduleDbHelper"

.field public static final TEMP_DATABASE_NAME:Ljava/lang/String; = "temp_DbRemind_1_1001.db"

.field public static final TEMP_TABLE_NAME:Ljava/lang/String; = "temp_table_remind"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mObjLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const-string/jumbo v0, "DbRemind_1_1001.db"

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    .line 141
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mContext:Landroid/content/Context;

    .line 142
    return-void
.end method

.method private attachScheduleValue(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Landroid/content/ContentValues;
    .locals 10
    .param p1, "remind"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 621
    if-eqz p1, :cond_7

    .line 622
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v1, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 625
    const-string/jumbo v6, "id"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    :cond_0
    const-string/jumbo v6, "time_stamp"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTimeStamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 628
    const-string/jumbo v6, "rawtext"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRawtext()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string/jumbo v6, "content"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const-string/jumbo v6, "action"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const-string/jumbo v6, "repeat_type"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDateTimeInfor()Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v7

    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->save(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const-string/jumbo v6, "title"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTitleOrigin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v0

    .line 634
    .local v0, "business":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    const-string/jumbo v7, "sort"

    if-nez v0, :cond_3

    const-string/jumbo v6, ""

    :goto_0
    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string/jumbo v6, "trigger_time"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getTriggerTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 636
    const-string/jumbo v6, "is_open"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getOpenFlagValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 637
    const-string/jumbo v6, "is_complete"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getCompletedFlagValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 639
    const-string/jumbo v6, "forward_time"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getForwardTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 640
    const-string/jumbo v6, "delay_time"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelayTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 641
    const-string/jumbo v6, "is_ring"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingFlagValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 643
    const-string/jumbo v6, "ring_type"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingType()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_1
    const-string/jumbo v6, "ring_path"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getRingPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string/jumbo v6, "action"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 649
    const-string/jumbo v6, "come_from"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getFrom()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_2
    const-string/jumbo v6, "personal_ringtone_id"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getPersonalRingtoneId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 654
    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getEntendFieldList()Ljava/util/List;

    move-result-object v5

    .line 655
    .local v5, "scheduleExtendFields":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;>;"
    invoke-static {v5}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 656
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 657
    .local v3, "extendJsonObject":Lorg/json/JSONObject;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    .line 659
    .local v4, "scheduleExtendField":Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;
    :try_start_0
    invoke-virtual {v4}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 660
    :catch_0
    move-exception v2

    .line 661
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "ScheduleDbHelper"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 634
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "extendJsonObject":Lorg/json/JSONObject;
    .end local v4    # "scheduleExtendField":Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;
    .end local v5    # "scheduleExtendFields":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;>;"
    :cond_3
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->name()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 664
    .restart local v3    # "extendJsonObject":Lorg/json/JSONObject;
    .restart local v5    # "scheduleExtendFields":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;>;"
    :cond_4
    const-string/jumbo v6, "extend_field"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    .end local v3    # "extendJsonObject":Lorg/json/JSONObject;
    :cond_5
    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v6

    if-nez v6, :cond_6

    .line 667
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    invoke-virtual {p1, v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    .line 669
    :cond_6
    const-string/jumbo v6, "type"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    const-string/jumbo v6, "is_alarm_news"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAlarmNewsFlag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    const-string/jumbo v6, "is_auto_delay"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getAutoDelayFlag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string/jumbo v6, "is_shake"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getShakeFlag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 673
    const-string/jumbo v6, "delay_setting"

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelaySetting()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    const-string/jumbo v6, "ScheduleDbHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "attachScheduleValue() | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v0    # "business":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .end local v1    # "contentValues":Landroid/content/ContentValues;
    .end local v5    # "scheduleExtendFields":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;>;"
    :goto_2
    return-object v1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 183
    const-string/jumbo v2, "ScheduleDbHelper"

    const-string/jumbo v3, "createNewTable()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-nez p1, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 191
    :goto_0
    if-nez p1, :cond_0

    .line 243
    :goto_1
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 189
    const-string/jumbo v2, "ScheduleDbHelper"

    const-string/jumbo v3, "getWritableDatabase() error!"

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-string/jumbo v1, "drop table if exists [table_remind]"

    .line 198
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "CREATE TABLE [table_remind] ([id] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,[rawtext] TEXT,[content] TEXT,[repeat_type] TEXT,[title] TEXT,[sort] TEXT,[trigger_time] LONG,[time_stamp] LONG,[is_open] INTEGER,[is_complete] INTEGER,[forward_time] LONG,[delay_time] LONG,[is_ring] INTEGER,[ring_type] TEXT,[ring_path] TEXT,[action] TEXT,[come_from] TEXT,[extend_field] TEXT,[personal_ringtone_id] INTEGER,[is_alarm_news] INTEGER,[is_auto_delay] INTEGER,[is_shake] INTEGER,[delay_setting] INTEGER,[type] TEXT);CREATE INDEX [unique_id] ON [table_remind] ([id]);CREATE INDEX [remind_trigger_time] ON [table_remind] ([trigger_time])"

    .line 239
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 240
    .end local v1    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 241
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ScheduleDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string/jumbo v2, "ScheduleDbHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteTable() | name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 174
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "drop table if exists ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1    # "sql":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ScheduleDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tabName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 537
    if-nez p1, :cond_1

    .line 539
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 544
    :goto_0
    if-nez p1, :cond_1

    .line 570
    :cond_0
    :goto_1
    return v3

    .line 540
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 542
    const-string/jumbo v5, "ScheduleDbHelper"

    const-string/jumbo v6, "getWritableDatabase() error!"

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 548
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz p2, :cond_0

    .line 552
    const/4 v3, 0x0

    .line 553
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 556
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select count(*) as c from sqlite_master where type =\'table\' and name =\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 557
    .local v4, "sql":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 558
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 559
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 560
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 561
    const/4 v3, 0x1

    .line 564
    .end local v0    # "count":I
    :cond_2
    if-eqz v1, :cond_0

    .line 565
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 567
    .end local v4    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 568
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "ScheduleDbHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private obtainScheduleValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 976
    if-nez p1, :cond_0

    .line 977
    const/4 v5, 0x0

    .line 1042
    :goto_0
    return-object v5

    .line 979
    :cond_0
    new-instance v5, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {v5}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 980
    .local v5, "remind":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const-string/jumbo v8, "id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setId(I)V

    .line 981
    const-string/jumbo v8, "time_stamp"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTimeStamp(J)V

    .line 982
    const-string/jumbo v8, "rawtext"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRawtext(Ljava/lang/String;)V

    .line 983
    const-string/jumbo v8, "content"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 984
    const-string/jumbo v8, "action"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAction(Ljava/lang/String;)V

    .line 988
    const-string/jumbo v8, "repeat_type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, "datetimeInfor":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 990
    :cond_1
    const-string/jumbo v8, "trigger_time"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 991
    const-string/jumbo v8, "ScheduleDbHelper"

    const-string/jumbo v9, "-------->> obtainScheduleValue() | datetimeInfor=null -> look as onceDate schedule!"

    invoke-static {v8, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :goto_1
    const-string/jumbo v8, "title"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTitle(Ljava/lang/String;)V

    .line 997
    const-string/jumbo v8, "sort"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 998
    .local v7, "sort":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1000
    :try_start_0
    invoke-static {v7}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    :cond_2
    :goto_2
    const-string/jumbo v8, "trigger_time"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 1007
    const-string/jumbo v8, "is_open"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlagValue(I)V

    .line 1008
    const-string/jumbo v8, "is_complete"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setCompletedFlagValue(I)V

    .line 1010
    const-string/jumbo v8, "forward_time"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setForwardTime(J)V

    .line 1011
    const-string/jumbo v8, "delay_time"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 1013
    const-string/jumbo v8, "is_ring"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingFlagValue(I)V

    .line 1014
    const-string/jumbo v8, "ring_type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 1015
    const-string/jumbo v8, "ring_path"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 1017
    const-string/jumbo v8, "action"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAction(Ljava/lang/String;)V

    .line 1019
    const-string/jumbo v8, "come_from"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1020
    .local v3, "fromString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1022
    :try_start_1
    invoke-static {v3}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1028
    :cond_3
    :goto_3
    const-string/jumbo v8, "extend_field"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1029
    .local v2, "extendJsonStr":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setExtendJsonStr(Ljava/lang/String;)V

    .line 1031
    const-string/jumbo v8, "personal_ringtone_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1032
    .local v4, "personalRingtoneId":I
    invoke-virtual {v5, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setPersonalRingtoneId(I)V

    .line 1034
    const-string/jumbo v8, "type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1035
    .local v6, "scheduleTypeStr":Ljava/lang/String;
    invoke-static {v6}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    .line 1037
    const-string/jumbo v8, "is_alarm_news"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAlarmNewsFlag(I)V

    .line 1038
    const-string/jumbo v8, "is_auto_delay"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    .line 1039
    const-string/jumbo v8, "is_shake"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setShakeFlag(I)V

    .line 1040
    const-string/jumbo v8, "delay_setting"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V

    goto/16 :goto_0

    .line 993
    .end local v2    # "extendJsonStr":Ljava/lang/String;
    .end local v3    # "fromString":Ljava/lang/String;
    .end local v4    # "personalRingtoneId":I
    .end local v6    # "scheduleTypeStr":Ljava/lang/String;
    .end local v7    # "sort":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->read(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    goto/16 :goto_1

    .line 1001
    .restart local v7    # "sort":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1002
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ScheduleDbHelper"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1023
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "fromString":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1024
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "ScheduleDbHelper"

    const-string/jumbo v9, ""

    invoke-static {v8, v9, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method private updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 46
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 246
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v42, "updateTable()"

    invoke-static/range {v41 .. v42}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-nez p1, :cond_1

    .line 249
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 254
    :goto_0
    if-nez p1, :cond_1

    .line 255
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v42, "db == null, error!"

    invoke-static/range {v41 .. v42}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    :goto_1
    return-void

    .line 250
    :catch_0
    move-exception v12

    .line 251
    .local v12, "e":Ljava/lang/Exception;
    const/16 p1, 0x0

    .line 252
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v42, "getWritableDatabase() error!"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 260
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    const-string/jumbo v41, "table_remind"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->isTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_3

    .line 261
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 264
    :cond_3
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v29, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/16 v20, 0x0

    .line 267
    .local v20, "oldColumnsObject":Ljava/lang/Object;
    :try_start_1
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "com.iflytek.viafly.schedule.framework.data.Columns_Ver"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    .end local v20    # "oldColumnsObject":Ljava/lang/Object;
    :goto_2
    move-object/from16 v6, v20

    .line 272
    check-cast v6, Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;

    .line 274
    .local v6, "columnsHandler":Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;
    const-string/jumbo v33, "select * from table_remind"

    .line 275
    .local v33, "sql":Ljava/lang/String;
    const/16 v30, 0x0

    .line 276
    .local v30, "scheduleMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v41, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 278
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v6, v7}, Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;->convertDataToMap(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v30

    .line 282
    if-eqz v7, :cond_4

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_4
    :goto_3
    if-eqz v30, :cond_0

    .line 291
    const/4 v14, 0x0

    .line 293
    .local v14, "firstUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    :try_start_3
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "com.iflytek.viafly.schedule.framework.data.Columns_Ver"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    add-int/lit8 v42, p2, 0x1

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v41

    move-object/from16 v0, v41

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    move-object v14, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 297
    :goto_4
    move-object/from16 v21, v14

    .line 298
    .local v21, "oldUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    const/16 v35, 0x0

    .line 299
    .local v35, "succesorUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    add-int/lit8 v36, p2, 0x2

    .local v36, "tmpVersion":I
    :goto_5
    move/from16 v0, v36

    move/from16 v1, p3

    if-gt v0, v1, :cond_6

    .line 300
    const-string/jumbo v41, "ScheduleDbHelper"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_4
    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "com.iflytek.viafly.schedule.framework.data.Columns_Ver"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v41

    move-object/from16 v0, v41

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    move-object/from16 v35, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 306
    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;->setSuccessor(Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;)V

    .line 307
    move-object/from16 v21, v35

    .line 299
    add-int/lit8 v36, v36, 0x1

    goto :goto_5

    .line 268
    .end local v6    # "columnsHandler":Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v14    # "firstUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .end local v21    # "oldUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .end local v30    # "scheduleMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v33    # "sql":Ljava/lang/String;
    .end local v35    # "succesorUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .end local v36    # "tmpVersion":I
    .restart local v20    # "oldColumnsObject":Ljava/lang/Object;
    :catch_1
    move-exception v12

    .line 269
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v42, "Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 279
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v20    # "oldColumnsObject":Ljava/lang/Object;
    .restart local v6    # "columnsHandler":Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v30    # "scheduleMapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v33    # "sql":Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 280
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v42, "Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 282
    if-eqz v7, :cond_4

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 282
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v41

    if-eqz v7, :cond_5

    .line 283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v41

    .line 294
    .restart local v14    # "firstUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    :catch_3
    move-exception v12

    .line 295
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v42, "Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 303
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v21    # "oldUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .restart local v35    # "succesorUpgradeHandler":Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
    .restart local v36    # "tmpVersion":I
    :catch_4
    move-exception v12

    .line 304
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v42, "Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 309
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;->onUpgrade(Ljava/util/List;)V

    .line 311
    invoke-static/range {v30 .. v30}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v41

    if-nez v41, :cond_21

    .line 312
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v42

    :goto_7
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v41

    if-eqz v41, :cond_21

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map;

    .line 313
    .local v19, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v28, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct/range {v28 .. v28}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;-><init>()V

    .line 314
    .local v28, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    const-string/jumbo v41, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setId(I)V

    .line 315
    const-string/jumbo v41, "content"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setContent(Ljava/lang/String;)V

    .line 317
    const-string/jumbo v41, "trigger_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    .line 318
    .local v38, "triggerTime":J
    move-object/from16 v0, v28

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setTriggerTime(J)V

    .line 320
    const-string/jumbo v41, "repeat_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 321
    .local v8, "datetimeInfor":Ljava/lang/String;
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v41

    if-nez v41, :cond_e

    .line 322
    :cond_7
    const-string/jumbo v41, "trigger_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v41

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    .line 323
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "-------->> obtainScheduleValue() | datetimeInfor=null -> look as onceDate schedule!"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_8
    const-string/jumbo v41, "delay_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 329
    .local v10, "delayTime":J
    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelayTime(J)V

    .line 331
    const-string/jumbo v41, "rawtext"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRawtext(Ljava/lang/String;)V

    .line 333
    const-string/jumbo v41, "sort"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 334
    .local v32, "sort":Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_8

    .line 336
    :try_start_6
    invoke-static/range {v32 .. v32}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v41

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setBusiness(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 342
    :cond_8
    :goto_9
    const-string/jumbo v41, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAction(Ljava/lang/String;)V

    .line 344
    const-string/jumbo v41, "is_open"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setOpenFlagValue(I)V

    .line 346
    const-string/jumbo v41, "is_complete"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/String;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setCompletedFlagValue(I)V

    .line 348
    const-string/jumbo v41, "extend_field"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 349
    .local v13, "extendJsonStr":Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setExtendJsonStr(Ljava/lang/String;)V

    .line 351
    const-string/jumbo v41, "come_from"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 352
    .local v16, "fromString":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_9

    .line 353
    invoke-static/range {v16 .. v16}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;->valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;

    move-result-object v41

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setFrom(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$From;)V

    .line 357
    :cond_9
    const-string/jumbo v41, "type"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/String;

    .line 358
    .local v37, "type":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_f

    .line 360
    :try_start_7
    invoke-static/range {v37 .. v37}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v41

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 368
    :goto_a
    const-string/jumbo v41, "ring_type"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 369
    .local v26, "ringType":Ljava/lang/String;
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->PERSONAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual/range {v41 .. v41}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 370
    const-string/jumbo v41, "personal_ringtone_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 371
    .local v34, "strID":Ljava/lang/String;
    const/16 v22, 0x0

    .line 372
    .local v22, "personalID":I
    if-eqz v34, :cond_a

    .line 374
    :try_start_8
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result v22

    .line 379
    :cond_a
    :goto_b
    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setPersonalRingtoneId(I)V

    .line 380
    const-string/jumbo v41, "ring_path"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 381
    .local v25, "ringPath":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_10

    .line 382
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    .line 400
    .end local v22    # "personalID":I
    .end local v25    # "ringPath":Ljava/lang/String;
    .end local v34    # "strID":Ljava/lang/String;
    :cond_b
    :goto_c
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v27

    .line 401
    .local v27, "ringtoneName":Ljava/lang/String;
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_15

    .line 402
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_12

    .line 404
    :try_start_9
    invoke-static/range {v26 .. v26}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->valueToType(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v41

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 417
    :goto_d
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_c

    .line 418
    const-string/jumbo v41, "Reminder"

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 419
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 441
    :cond_c
    :goto_e
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RING_TONE_NAME:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;Ljava/lang/String;)V

    .line 443
    const-string/jumbo v41, "is_alarm_news"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 444
    .local v15, "flag":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_19

    .line 446
    :try_start_a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAlarmNewsFlag(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 459
    :goto_f
    const-string/jumbo v41, "is_auto_delay"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 460
    .local v5, "autoDelayFlag":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_1b

    .line 462
    :try_start_b
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 476
    :goto_10
    const-string/jumbo v41, "is_shake"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 477
    .local v31, "shakeFlag":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_1d

    .line 479
    :try_start_c
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setShakeFlag(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 492
    :goto_11
    const-string/jumbo v41, "delay_setting"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 493
    .local v9, "delaySetting":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_1f

    .line 495
    :try_start_d
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    .line 508
    :goto_12
    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->isOpen()Z

    move-result v41

    if-eqz v41, :cond_d

    .line 509
    invoke-static {}, Lil;->a()Lil;

    move-result-object v41

    const-string/jumbo v43, "com.iflytek.cmcc.IFLY_IS_ALARM_CLOCK_SCHEDULE_NEWED"

    const/16 v44, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 511
    :cond_d
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 325
    .end local v5    # "autoDelayFlag":Ljava/lang/String;
    .end local v9    # "delaySetting":Ljava/lang/String;
    .end local v10    # "delayTime":J
    .end local v13    # "extendJsonStr":Ljava/lang/String;
    .end local v15    # "flag":Ljava/lang/String;
    .end local v16    # "fromString":Ljava/lang/String;
    .end local v26    # "ringType":Ljava/lang/String;
    .end local v27    # "ringtoneName":Ljava/lang/String;
    .end local v31    # "shakeFlag":Ljava/lang/String;
    .end local v32    # "sort":Ljava/lang/String;
    .end local v37    # "type":Ljava/lang/String;
    :cond_e
    invoke-static {v8}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->read(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v41

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDateTimeInfor(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)V

    goto/16 :goto_8

    .line 337
    .restart local v10    # "delayTime":J
    .restart local v32    # "sort":Ljava/lang/String;
    :catch_5
    move-exception v12

    .line 338
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "valueOf Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 361
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "extendJsonStr":Ljava/lang/String;
    .restart local v16    # "fromString":Ljava/lang/String;
    .restart local v37    # "type":Ljava/lang/String;
    :catch_6
    move-exception v12

    .line 362
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "valueOfValue Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 365
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_f
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->COMMON:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setScheduleType(Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;)V

    goto/16 :goto_a

    .line 375
    .restart local v22    # "personalID":I
    .restart local v26    # "ringType":Ljava/lang/String;
    .restart local v34    # "strID":Ljava/lang/String;
    :catch_7
    move-exception v12

    .line 376
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "valueToType Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 384
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v25    # "ringPath":Ljava/lang/String;
    :cond_10
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleRingtoneManager;->getItem(Ljava/lang/Integer;)Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;

    move-result-object v23

    .line 385
    .local v23, "personalizedRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    if-eqz v23, :cond_b

    .line 386
    invoke-virtual/range {v23 .. v23}, Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;->getAudioPath()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "audioPath":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 388
    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 392
    .end local v4    # "audioPath":Ljava/lang/String;
    .end local v22    # "personalID":I
    .end local v23    # "personalizedRingtoneEntity":Lcom/iflytek/viafly/schedule/personalizedtone/data/PersonalizedRingtoneEntity;
    .end local v25    # "ringPath":Ljava/lang/String;
    .end local v34    # "strID":Ljava/lang/String;
    :cond_11
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->RECORD:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual/range {v41 .. v41}, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->ValueOf()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_b

    .line 393
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->RECORD_RING_TONE:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getProperty(Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;)Ljava/lang/String;

    move-result-object v24

    .line 394
    .local v24, "recordRingTone":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_b

    .line 395
    const-string/jumbo v41, "ring_path"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 396
    .restart local v25    # "ringPath":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 405
    .end local v24    # "recordRingTone":Ljava/lang/String;
    .end local v25    # "ringPath":Ljava/lang/String;
    .restart local v27    # "ringtoneName":Ljava/lang/String;
    :catch_8
    move-exception v12

    .line 406
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "valueToType Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto/16 :goto_d

    .line 411
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_12
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->SHORT:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto/16 :goto_d

    .line 420
    :cond_13
    const-string/jumbo v41, "\u64ad\u62a5\u5185\u5bb9+Reminder"

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_14

    .line 421
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto/16 :goto_e

    .line 423
    :cond_14
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LOCAL:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    .line 424
    const-string/jumbo v41, "ring_path"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 425
    .restart local v25    # "ringPath":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingPath(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 429
    .end local v25    # "ringPath":Ljava/lang/String;
    :cond_15
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->News:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_16

    .line 430
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->NEWS:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto/16 :goto_e

    .line 432
    :cond_16
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Pure_Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_17

    .line 433
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto/16 :goto_e

    .line 435
    :cond_17
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->TV:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_18

    .line 436
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto/16 :goto_e

    .line 437
    :cond_18
    sget-object v41, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Weather:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getBusiness()Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    move-result-object v43

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_c

    .line 438
    sget-object v41, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->WEATHER:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setRingType(Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;)V

    goto/16 :goto_e

    .line 447
    .restart local v15    # "flag":Ljava/lang/String;
    :catch_9
    move-exception v12

    .line 448
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "parseInt Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 451
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_19
    invoke-virtual/range {v28 .. v28}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getScheduleType()Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-result-object v41

    sget-object v43, Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;->ALARMCLOCK:Lcom/iflytek/viafly/schedule/framework/entities/Schedule$ScheduleType;

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    if-ne v0, v1, :cond_1a

    .line 452
    const/16 v41, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAlarmNewsFlag(I)V

    goto/16 :goto_f

    .line 455
    :cond_1a
    const/16 v41, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAlarmNewsFlag(I)V

    goto/16 :goto_f

    .line 463
    .restart local v5    # "autoDelayFlag":Ljava/lang/String;
    :catch_a
    move-exception v12

    .line 464
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "parseInt Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 467
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1b
    invoke-static {}, Lil;->a()Lil;

    move-result-object v41

    const-string/jumbo v43, "com.iflytek.cmccIFLY_REMIND_LATER_SWITCH"

    const/16 v44, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v18

    .line 468
    .local v18, "isAuto":Z
    if-eqz v18, :cond_1c

    .line 469
    const/16 v41, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    goto/16 :goto_10

    .line 471
    :cond_1c
    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setAutoDelayFlag(I)V

    goto/16 :goto_10

    .line 480
    .end local v18    # "isAuto":Z
    .restart local v31    # "shakeFlag":Ljava/lang/String;
    :catch_b
    move-exception v12

    .line 481
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "parseInt Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 484
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1d
    invoke-static {}, Lil;->a()Lil;

    move-result-object v41

    const-string/jumbo v43, "com.iflytek.cmccIFLY_REMIND_VIBRATE"

    const/16 v44, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v40

    .line 485
    .local v40, "vibrate":Z
    if-eqz v40, :cond_1e

    .line 486
    const/16 v41, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setShakeFlag(I)V

    goto/16 :goto_11

    .line 488
    :cond_1e
    const/16 v41, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setShakeFlag(I)V

    goto/16 :goto_11

    .line 496
    .end local v40    # "vibrate":Z
    .restart local v9    # "delaySetting":Ljava/lang/String;
    :catch_c
    move-exception v12

    .line 497
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string/jumbo v41, "ScheduleDbHelper"

    const-string/jumbo v43, "parseInt Exception"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-static {v0, v1, v12}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 500
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1f
    invoke-static {}, Lil;->a()Lil;

    move-result-object v41

    const-string/jumbo v43, "com.iflytek.cmccIFLY_NOTIFY_REMIND_DELAY_TIMES"

    const/16 v44, 0x1

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;I)I

    move-result v17

    .line 501
    .local v17, "index":I
    if-ltz v17, :cond_20

    const/16 v41, 0x2

    move/from16 v0, v17

    move/from16 v1, v41

    if-gt v0, v1, :cond_20

    .line 502
    add-int/lit8 v41, v17, 0x1

    mul-int/lit8 v41, v41, 0x5

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V

    goto/16 :goto_12

    .line 504
    :cond_20
    const/16 v41, 0xa

    move-object/from16 v0, v28

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->setDelaySetting(I)V

    goto/16 :goto_12

    .line 515
    .end local v5    # "autoDelayFlag":Ljava/lang/String;
    .end local v8    # "datetimeInfor":Ljava/lang/String;
    .end local v9    # "delaySetting":Ljava/lang/String;
    .end local v10    # "delayTime":J
    .end local v13    # "extendJsonStr":Ljava/lang/String;
    .end local v15    # "flag":Ljava/lang/String;
    .end local v16    # "fromString":Ljava/lang/String;
    .end local v17    # "index":I
    .end local v19    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26    # "ringType":Ljava/lang/String;
    .end local v27    # "ringtoneName":Ljava/lang/String;
    .end local v28    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .end local v31    # "shakeFlag":Ljava/lang/String;
    .end local v32    # "sort":Ljava/lang/String;
    .end local v37    # "type":Ljava/lang/String;
    .end local v38    # "triggerTime":J
    :cond_21
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v41

    if-lez v41, :cond_23

    .line 516
    const-string/jumbo v41, "table_remind"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->deleteTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 517
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 518
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_13
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_22

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .line 519
    .restart local v28    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->insertRecord(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I

    goto :goto_13

    .line 522
    .end local v28    # "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    new-instance v42, Landroid/content/Intent;

    const-string/jumbo v43, "com.iflytek.cmcc.schedule.CHECK_DATED_ALARM"

    invoke-direct/range {v42 .. v43}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    new-instance v42, Landroid/content/Intent;

    const-string/jumbo v43, "com.iflytek.cmcc.schedule.REGISTER_AVAILABLE_ALARM"

    invoke-direct/range {v42 .. v43}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v41 .. v42}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 526
    :cond_23
    invoke-direct/range {p0 .. p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public completeRemind(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 805
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v4

    .line 806
    :try_start_0
    const-string/jumbo v3, "ScheduleDbHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "completeRemind() | id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update table_remind set is_open=\'0\',is_complete=\'1\' where id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 809
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 811
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 816
    :goto_0
    if-nez v0, :cond_0

    .line 817
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 824
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/String;
    :goto_1
    return-void

    .line 812
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 813
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 814
    :try_start_4
    const-string/jumbo v3, "ScheduleDbHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 820
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 821
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v3, "ScheduleDbHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "completeRemind() error! | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 819
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_6
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method public deleteRecord(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 687
    iget-object v4, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v4

    .line 688
    :try_start_0
    const-string/jumbo v3, "ScheduleDbHelper"

    const-string/jumbo v5, "deleteRecord()"

    invoke-static {v3, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete from table_remind where id= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 691
    .local v2, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 693
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 698
    :goto_0
    if-nez v0, :cond_0

    .line 699
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 706
    :goto_1
    return-void

    .line 694
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 696
    :try_start_3
    const-string/jumbo v3, "ScheduleDbHelper"

    const-string/jumbo v5, "getWritableDatabase() error!"

    invoke-static {v3, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 702
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 703
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v3, "ScheduleDbHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v4

    goto :goto_1

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 701
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "sql":Ljava/lang/String;
    :cond_0
    :try_start_5
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public deleteSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)V
    .locals 10
    .param p1, "type"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    .prologue
    .line 712
    iget-object v7, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v7

    .line 713
    :try_start_0
    const-string/jumbo v6, "ScheduleDbHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteSchedules(), type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    if-nez p1, :cond_0

    .line 715
    monitor-exit v7

    .line 746
    :goto_0
    return-void

    .line 717
    :cond_0
    const-string/jumbo v5, "delete from table_remind"

    .line 718
    .local v5, "sql":Ljava/lang/String;
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    if-ne p1, v6, :cond_2

    .line 719
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " where is_complete!=\'1\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 731
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 733
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 738
    :goto_2
    if-nez v1, :cond_4

    .line 739
    :try_start_2
    monitor-exit v7

    goto :goto_0

    .line 745
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 720
    .restart local v5    # "sql":Ljava/lang/String;
    :cond_2
    :try_start_3
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->complete:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    if-ne p1, v6, :cond_3

    .line 721
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " where is_complete=\'1\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 722
    :cond_3
    sget-object v6, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->dated:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    if-ne p1, v6, :cond_1

    .line 723
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 725
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v6, 0xe

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Ljava/util/Calendar;->set(II)V

    .line 726
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 727
    .local v2, "d":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " where is_complete!=\'1\' and is_open!=\'0\' and trigger_time<\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    goto :goto_1

    .line 734
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "d":J
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v4

    .line 735
    .local v4, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 736
    :try_start_4
    const-string/jumbo v6, "ScheduleDbHelper"

    const-string/jumbo v8, "getWritableDatabase() error!"

    invoke-static {v6, v8, v4}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 742
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 743
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v6, "ScheduleDbHelper"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 741
    :cond_4
    :try_start_6
    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method public execSQL(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string/jumbo v2, "ScheduleDbHelper"

    const-string/jumbo v3, "execSQL()"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 153
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 154
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public getOpenAndToDoSchedules()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1140
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1141
    const/4 v1, 0x0

    .line 1143
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1148
    :goto_0
    if-nez v1, :cond_0

    .line 1149
    :try_start_1
    monitor-exit v6

    move-object v4, v5

    .line 1174
    :goto_1
    return-object v4

    .line 1144
    :catch_0
    move-exception v2

    .line 1145
    .local v2, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 1146
    const-string/jumbo v7, "ScheduleDbHelper"

    const-string/jumbo v8, "getReadableDatabase() error!"

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1175
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1151
    :cond_0
    :try_start_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1152
    .local v4, "remindList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v0, 0x0

    .line 1154
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_3
    const-string/jumbo v3, "select * from table_remind"

    .line 1156
    .local v3, "query":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " where is_complete!=\'1\' and is_open=\'1\'order by trigger_time asc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1157
    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 1158
    if-nez v0, :cond_1

    .line 1159
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v5

    goto :goto_1

    .line 1161
    :cond_1
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1162
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1163
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->obtainScheduleValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 1169
    .end local v3    # "query":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1170
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v7, "ScheduleDbHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v5

    goto :goto_1

    .line 1166
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "query":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 1167
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1174
    :cond_3
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public getRemind(I)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 845
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v5

    .line 846
    :try_start_0
    const-string/jumbo v6, "ScheduleDbHelper"

    const-string/jumbo v7, "getRemind()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    const/4 v0, 0x0

    .line 848
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 850
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from table_remind where id=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 851
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 852
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 853
    if-nez v0, :cond_1

    .line 862
    if-eqz v0, :cond_0

    .line 863
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 866
    .end local v3    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 856
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 857
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->obtainScheduleValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 862
    if-eqz v0, :cond_2

    .line 863
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 867
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 862
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 863
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 866
    .end local v3    # "sql":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 859
    :catch_0
    move-exception v2

    .line 860
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "ScheduleDbHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 862
    if-eqz v0, :cond_4

    .line 863
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 862
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    .line 863
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public getRemind(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    .locals 8
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 876
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v5

    .line 877
    :try_start_0
    const-string/jumbo v6, "ScheduleDbHelper"

    const-string/jumbo v7, "getRemind()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    const/4 v0, 0x0

    .line 879
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 881
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select * from table_remind where "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 883
    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 884
    if-nez v0, :cond_1

    .line 893
    if-eqz v0, :cond_0

    .line 894
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 897
    .end local v3    # "sql":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 887
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 888
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->obtainScheduleValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 893
    if-eqz v0, :cond_2

    .line 894
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 898
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 893
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 894
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 897
    .end local v3    # "sql":Ljava/lang/String;
    :cond_4
    :goto_1
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 890
    :catch_0
    move-exception v2

    .line 891
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "ScheduleDbHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 893
    if-eqz v0, :cond_4

    .line 894
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 893
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v0, :cond_5

    .line 894
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public getReminds(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 902
    const-string/jumbo v6, "ScheduleDbHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getReminds(), condition="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v6

    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 907
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "select * from table_remind where "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 908
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 909
    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 910
    if-nez v0, :cond_1

    .line 923
    if-eqz v0, :cond_0

    .line 924
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    .line 927
    .end local v4    # "sql":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 913
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 914
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 915
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_3

    .line 916
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->obtainScheduleValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 920
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v4    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 921
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v7, "ScheduleDbHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 923
    if-eqz v0, :cond_2

    .line 924
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 927
    :cond_2
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 923
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    .line 924
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v6

    goto :goto_0

    .line 928
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 923
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_5

    .line 924
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public getSchedules(Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;)Ljava/util/List;
    .locals 13
    .param p1, "choice"    # Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1085
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1086
    :try_start_0
    const-string/jumbo v10, "ScheduleDbHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "------>>getRemindList() | choice="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    const/4 v4, 0x0

    .line 1089
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1094
    :goto_0
    if-nez v4, :cond_0

    .line 1095
    :try_start_2
    monitor-exit v9

    move-object v7, v8

    .line 1135
    :goto_1
    return-object v7

    .line 1090
    :catch_0
    move-exception v5

    .line 1091
    .local v5, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1092
    const-string/jumbo v10, "ScheduleDbHelper"

    const-string/jumbo v11, "getReadableDatabase() error!"

    invoke-static {v10, v11, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1136
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 1097
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1098
    .local v7, "remindList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v1, 0x0

    .line 1100
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_4
    const-string/jumbo v6, "select * from table_remind"

    .line 1102
    .local v6, "query":Ljava/lang/String;
    sget-object v10, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->todo:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    if-ne p1, v10, :cond_2

    .line 1103
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " where is_complete!=\'1\' order by trigger_time asc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1118
    :cond_1
    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 1119
    if-nez v1, :cond_4

    .line 1120
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v8

    goto :goto_1

    .line 1106
    :cond_2
    :try_start_6
    sget-object v10, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->complete:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    if-ne p1, v10, :cond_3

    .line 1107
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " where is_complete=\'1\' order by trigger_time desc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1110
    :cond_3
    sget-object v10, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;->dated:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleTimeType;

    if-ne p1, v10, :cond_1

    .line 1111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1113
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 1114
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1115
    .local v2, "d":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " where is_complete!=\'1\' and is_open!=\'0\' and trigger_time<\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' order by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "trigger_time"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " asc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1122
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "d":J
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1123
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1124
    invoke-direct {p0, v1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->obtainScheduleValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1125
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1130
    .end local v6    # "query":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 1131
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v8, "ScheduleDbHelper"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 1127
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v6    # "query":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 1128
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1135
    :cond_6
    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1
.end method

.method public varargs getSchedules([Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;)Ljava/util/List;
    .locals 13
    .param p1, "business"    # [Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/schedule/framework/entities/Schedule;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 932
    if-eqz p1, :cond_0

    array-length v8, p1

    if-nez v8, :cond_1

    :cond_0
    move-object v4, v7

    .line 971
    :goto_0
    return-object v4

    .line 935
    :cond_1
    iget-object v9, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v9

    .line 936
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    const/4 v0, 0x0

    .line 938
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 940
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    const-string/jumbo v5, "select * from table_remind where "

    .line 941
    .local v5, "sql":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 942
    .local v6, "where":Ljava/lang/String;
    array-length v10, p1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_3

    aget-object v3, p1, v8

    .line 943
    .local v3, "item":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    sget-object v11, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v3}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 944
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " or sort=\'\' or sort is null or sort=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->Common:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 942
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 947
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " or sort=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 950
    .end local v3    # "item":Lcom/iflytek/viafly/schedule/framework/entities/ScheduleBusiness;
    :cond_3
    const-string/jumbo v8, " or "

    const-string/jumbo v10, ""

    invoke-virtual {v6, v8, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 951
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 952
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 953
    const-string/jumbo v8, "ScheduleDbHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSchedules(), sql="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 955
    if-nez v0, :cond_5

    .line 966
    if-eqz v0, :cond_4

    .line 967
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v7

    goto/16 :goto_0

    .line 958
    :cond_5
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 959
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_7

    .line 960
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->obtainScheduleValue(Landroid/database/Cursor;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 961
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 963
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "where":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 964
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "ScheduleDbHelper"

    const-string/jumbo v8, "getSchedules() error!"

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 966
    if-eqz v0, :cond_6

    .line 967
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 970
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_4
    const-string/jumbo v7, "ScheduleDbHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSchedules(), ret="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    monitor-exit v9

    goto/16 :goto_0

    .line 972
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .line 966
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/schedule/framework/entities/Schedule;>;"
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "where":Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_6

    .line 967
    :try_start_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 966
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "where":Ljava/lang/String;
    :catchall_1
    move-exception v7

    if-eqz v0, :cond_8

    .line 967
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public insertRecord(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "remind"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    const/4 v5, -0x1

    .line 582
    iget-object v6, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v6

    .line 583
    :try_start_0
    invoke-direct {p0, p2}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->attachScheduleValue(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Landroid/content/ContentValues;

    move-result-object v0

    .line 584
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v7, "ScheduleDbHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insertRecord(), value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    if-eqz v0, :cond_0

    .line 587
    if-nez p1, :cond_1

    .line 589
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 594
    :goto_0
    if-nez p1, :cond_1

    .line 595
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v5

    .line 616
    :goto_1
    return v3

    .line 590
    :catch_0
    move-exception v2

    .line 591
    .local v2, "e":Ljava/lang/Exception;
    const/4 p1, 0x0

    .line 592
    :try_start_3
    const-string/jumbo v7, "ScheduleDbHelper"

    const-string/jumbo v8, "getWritableDatabase() error!"

    invoke-static {v7, v8, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 612
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 613
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "ScheduleDbHelper"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v3, v5

    goto :goto_1

    .line 599
    :cond_1
    const-wide/16 v8, -0x1

    :try_start_5
    const-string/jumbo v7, "table_remind"

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 600
    const-string/jumbo v4, "select LAST_INSERT_ROWID()id"

    .line 601
    .local v4, "sql":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p1, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 602
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 603
    const-string/jumbo v7, "id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 604
    .local v3, "id":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 605
    const-string/jumbo v7, "ScheduleDbHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insert a new schedule | id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 606
    :try_start_6
    monitor-exit v6

    goto :goto_1

    .line 617
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "id":I
    .end local v4    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 608
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "sql":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 609
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public isHasDatedRemind()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 1050
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1051
    const/4 v6, 0x0

    .line 1052
    .local v6, "isHasDateRemind":Z
    const/4 v4, 0x0

    .line 1054
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1059
    :goto_0
    if-nez v4, :cond_0

    .line 1060
    :try_start_1
    monitor-exit v8

    .line 1080
    :goto_1
    return v7

    .line 1055
    :catch_0
    move-exception v5

    .line 1056
    .local v5, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 1057
    const-string/jumbo v9, "ScheduleDbHelper"

    const-string/jumbo v10, "getReadableDatabase() error!"

    invoke-static {v9, v10, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1081
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1062
    :cond_0
    const/4 v1, 0x0

    .line 1063
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1064
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v7, 0xd

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v9}, Ljava/util/Calendar;->set(II)V

    .line 1065
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1066
    .local v2, "d":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "select * from table_remind where is_complete!=\'1\' and is_open!=\'0\' and trigger_time<\'"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\' order by "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "trigger_time"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " asc"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1069
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1070
    const-string/jumbo v7, "ScheduleDbHelper"

    const-string/jumbo v9, "------>>isHasDatedRemind()| return true"

    invoke-static {v7, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    const/4 v6, 0x1

    .line 1076
    :goto_2
    if-eqz v1, :cond_1

    .line 1077
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1078
    const/4 v1, 0x0

    .line 1080
    :cond_1
    monitor-exit v8

    move v7, v6

    goto :goto_1

    .line 1073
    :cond_2
    const-string/jumbo v7, "ScheduleDbHelper"

    const-string/jumbo v9, "------>>isHasDatedRemind()| return false"

    invoke-static {v7, v9}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 134
    const-string/jumbo v0, "ScheduleDbHelper"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->createNewTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 166
    const-string/jumbo v0, "ScheduleDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDowngrade() | oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 168
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 159
    const-string/jumbo v0, "ScheduleDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade() | oldVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->updateTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 161
    return-void
.end method

.method public query(I)Landroid/database/Cursor;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 833
    const-string/jumbo v2, "ScheduleDbHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query() | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 835
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "select * from table_remind where id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 836
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public switchRemind(IZ)V
    .locals 7
    .param p1, "id"    # I
    .param p2, "open"    # Z

    .prologue
    .line 779
    const-string/jumbo v4, "ScheduleDbHelper"

    const-string/jumbo v5, "switchRemind()"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v5, p0, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->mObjLock:Ljava/lang/Object;

    monitor-enter v5

    .line 781
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    .line 783
    .local v2, "ret":I
    :goto_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update table_remind set is_open=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\' where "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 784
    .local v3, "sql":Ljava/lang/String;
    const/4 v0, 0x0

    .line 786
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 791
    :goto_1
    if-nez v0, :cond_1

    .line 792
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 799
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "sql":Ljava/lang/String;
    :goto_2
    return-void

    .line 781
    .end local v2    # "ret":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 787
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "ret":I
    .restart local v3    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 788
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 789
    :try_start_3
    const-string/jumbo v4, "ScheduleDbHelper"

    const-string/jumbo v6, "getWritableDatabase() error!"

    invoke-static {v4, v6, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 795
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "sql":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 796
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v4, "updateRecord"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 794
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "sql":Ljava/lang/String;
    :cond_1
    :try_start_5
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public updateRecord(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 9
    .param p1, "remind"    # Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    .prologue
    .line 749
    const-string/jumbo v6, "ScheduleDbHelper"

    const-string/jumbo v7, "updateRecord()"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->attachScheduleValue(Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)Landroid/content/ContentValues;

    move-result-object v1

    .line 752
    .local v1, "contentValues":Landroid/content/ContentValues;
    if-eqz v1, :cond_0

    .line 754
    const/4 v2, 0x0

    .line 756
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 761
    :goto_0
    if-nez v2, :cond_1

    .line 773
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_1
    return-void

    .line 757
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 758
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 759
    :try_start_1
    const-string/jumbo v6, "ScheduleDbHelper"

    const-string/jumbo v7, "getWritableDatabase() error!"

    invoke-static {v6, v7, v3}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 769
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 770
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ScheduleDbHelper"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 765
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    const-string/jumbo v5, "id=?"

    .line 766
    .local v5, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 767
    .local v0, "args":[Ljava/lang/String;
    const-string/jumbo v6, "table_remind"

    invoke-virtual {v2, v6, v1, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 768
    .local v4, "row":I
    const-string/jumbo v6, "ScheduleDbHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update a schedule | affected row="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method
