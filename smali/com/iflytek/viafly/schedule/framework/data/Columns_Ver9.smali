.class public Lcom/iflytek/viafly/schedule/framework/data/Columns_Ver9;
.super Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
.source "Columns_Ver9.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;


# static fields
.field public static final DB_ACTION:Ljava/lang/String; = "action"

.field public static final DB_AD_ID:Ljava/lang/String; = "ad_id"

.field public static final DB_AD_PIC_URL:Ljava/lang/String; = "ad_pic_url"

.field public static final DB_AD_TEXT:Ljava/lang/String; = "ad_text"

.field public static final DB_CONTENT:Ljava/lang/String; = "content"

.field public static final DB_DATETIME_INFOR:Ljava/lang/String; = "repeat_type"

.field public static final DB_DELAY_TIME:Ljava/lang/String; = "delay_time"

.field public static final DB_EXTEND_FIELD:Ljava/lang/String; = "extend_field"

.field public static final DB_EXTERNAL_DETAIL_URL:Ljava/lang/String; = "detail_url"

.field public static final DB_EXTERNAL_SRC_DESC:Ljava/lang/String; = "source_desc"

.field public static final DB_EXTERNAL_SRC_URL:Ljava/lang/String; = "source_url"

.field public static final DB_FORWARD_TIME:Ljava/lang/String; = "forward_time"

.field public static final DB_FROM:Ljava/lang/String; = "come_from"

.field public static final DB_ID:Ljava/lang/String; = "id"

.field public static final DB_IS_COMPLETE:Ljava/lang/String; = "is_complete"

.field public static final DB_IS_OPEN:Ljava/lang/String; = "is_open"

.field public static final DB_IS_RING:Ljava/lang/String; = "is_ring"

.field public static final DB_RAWTEXT:Ljava/lang/String; = "rawtext"

.field public static final DB_RING_PATH:Ljava/lang/String; = "ring_path"

.field public static final DB_RING_TYPE:Ljava/lang/String; = "ring_type"

.field public static final DB_SORT:Ljava/lang/String; = "sort"

.field public static final DB_TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field public static final DB_TITLE:Ljava/lang/String; = "title"

.field public static final DB_TRIGGER_TIME:Ljava/lang/String; = "trigger_time"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public convertDataToMap(Landroid/database/Cursor;)Ljava/util/List;
    .locals 9
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v2, "scheduleList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_4

    .line 106
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 107
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 108
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v3, "scheduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string/jumbo v4, "content"

    const-string/jumbo v5, "content"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v4, "trigger_time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "trigger_time"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v4, "is_open"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "is_open"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v4, "is_complete"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "is_complete"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v4, "delay_time"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "delay_time"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v4, "rawtext"

    const-string/jumbo v5, "rawtext"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v4, "sort"

    const-string/jumbo v5, "sort"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string/jumbo v4, "is_open"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 124
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_IS_ALARM_CLOCK_SCHEDULE_NEWED"

    invoke-virtual {v4, v5, v8}, Lil;->a(Ljava/lang/String;Z)V

    .line 126
    :cond_0
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "action"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v4, "repeat_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "datetimeInforStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 129
    .local v0, "datetimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 130
    :cond_1
    const-string/jumbo v4, "trigger_time"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 134
    :goto_1
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->save(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string/jumbo v4, "repeat_type"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v4, "ring_path"

    const-string/jumbo v5, "ring_path"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string/jumbo v4, "come_from"

    const-string/jumbo v5, "come_from"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v4, "extend_field"

    const-string/jumbo v5, "extend_field"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 132
    :cond_2
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->read(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    goto :goto_1

    .line 150
    .end local v0    # "datetimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .end local v1    # "datetimeInforStr":Ljava/lang/String;
    .end local v3    # "scheduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_4
    return-object v2
.end method

.method public onUpgrade(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "databaseMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 77
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "ad_id"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 78
    .local v6, "pushScheduleId":Ljava/lang/String;
    const-string/jumbo v9, "ad_pic_url"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 79
    .local v7, "pushSchedulePicUrl":Ljava/lang/String;
    const-string/jumbo v9, "ad_text"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 80
    .local v5, "pushScheduleDesc":Ljava/lang/String;
    const-string/jumbo v9, "source_desc"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    .local v2, "externalSrcDesc":Ljava/lang/String;
    const-string/jumbo v9, "source_url"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 82
    .local v3, "externalSrcUrl":Ljava/lang/String;
    const-string/jumbo v9, "detail_url"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    .local v1, "externalDetailUrl":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v0, "extendJsonObject":Lorg/json/JSONObject;
    :try_start_0
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_ID:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_PIC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->HOT_SCHEDULE_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_SRC_DESC:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_SRC_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    sget-object v9, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->EXTERNAL_SCHEDULE_DETAIL_URL:Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;

    invoke-virtual {v9}, Lcom/iflytek/viafly/schedule/framework/data/ScheduleExtendField;->getDbKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    const-string/jumbo v9, "extend_field"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 97
    .end local v0    # "extendJsonObject":Lorg/json/JSONObject;
    .end local v1    # "externalDetailUrl":Ljava/lang/String;
    .end local v2    # "externalSrcDesc":Ljava/lang/String;
    .end local v3    # "externalSrcUrl":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "pushScheduleDesc":Ljava/lang/String;
    .end local v6    # "pushScheduleId":Ljava/lang/String;
    .end local v7    # "pushSchedulePicUrl":Ljava/lang/String;
    :cond_0
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/data/Columns_Ver9;->mDatabaseUpgradeHandler:Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    if-eqz v8, :cond_1

    .line 98
    iget-object v8, p0, Lcom/iflytek/viafly/schedule/framework/data/Columns_Ver9;->mDatabaseUpgradeHandler:Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    invoke-virtual {v8, p1}, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;->onUpgrade(Ljava/util/List;)V

    .line 100
    :cond_1
    return-void

    .line 92
    .restart local v0    # "extendJsonObject":Lorg/json/JSONObject;
    .restart local v1    # "externalDetailUrl":Ljava/lang/String;
    .restart local v2    # "externalSrcDesc":Ljava/lang/String;
    .restart local v3    # "externalSrcUrl":Ljava/lang/String;
    .restart local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "pushScheduleDesc":Ljava/lang/String;
    .restart local v6    # "pushScheduleId":Ljava/lang/String;
    .restart local v7    # "pushSchedulePicUrl":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_1
.end method
