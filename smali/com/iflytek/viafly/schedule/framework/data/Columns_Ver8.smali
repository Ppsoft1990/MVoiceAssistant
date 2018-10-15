.class public Lcom/iflytek/viafly/schedule/framework/data/Columns_Ver8;
.super Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
.source "Columns_Ver8.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;


# static fields
.field public static final DB_ACTION:Ljava/lang/String; = "action"

.field public static final DB_AD_ID:Ljava/lang/String; = "ad_id"

.field public static final DB_AD_PIC_URL:Ljava/lang/String; = "ad_pic_url"

.field public static final DB_AD_TEXT:Ljava/lang/String; = "ad_text"

.field public static final DB_CONTENT:Ljava/lang/String; = "content"

.field public static final DB_DATETIME_INFOR:Ljava/lang/String; = "repeat_type"

.field public static final DB_DATE_RAWTEXT:Ljava/lang/String; = "date_rawtext"

.field public static final DB_DELAY_TIME:Ljava/lang/String; = "delay_time"

.field public static final DB_DURATION:Ljava/lang/String; = "duration"

.field public static final DB_EXTERNAL_DETAIL_URL:Ljava/lang/String; = "detail_url"

.field public static final DB_EXTERNAL_SRC_DESC:Ljava/lang/String; = "source_desc"

.field public static final DB_EXTERNAL_SRC_URL:Ljava/lang/String; = "source_url"

.field public static final DB_FIELD_1:Ljava/lang/String; = "field_1"

.field public static final DB_FIELD_2:Ljava/lang/String; = "field_2"

.field public static final DB_FIELD_3:Ljava/lang/String; = "field_3"

.field public static final DB_FIELD_4:Ljava/lang/String; = "field_4"

.field public static final DB_FIELD_5:Ljava/lang/String; = "field_5"

.field public static final DB_FORWARD_TIME:Ljava/lang/String; = "forward_time"

.field public static final DB_FROM:Ljava/lang/String; = "come_from"

.field public static final DB_ID:Ljava/lang/String; = "id"

.field public static final DB_IS_COMPLETE:Ljava/lang/String; = "is_complete"

.field public static final DB_IS_LIGHT:Ljava/lang/String; = "is_light"

.field public static final DB_IS_OPEN:Ljava/lang/String; = "is_open"

.field public static final DB_IS_RING:Ljava/lang/String; = "is_ring"

.field public static final DB_IS_RING_IN_SILENT_MODE:Ljava/lang/String; = "is_ring_in_silent_mode"

.field public static final DB_IS_SPEECH_OPEN:Ljava/lang/String; = "is_speech_open"

.field public static final DB_IS_VIBRATE:Ljava/lang/String; = "is_vibrate"

.field public static final DB_LABEL:Ljava/lang/String; = "label"

.field public static final DB_LEVEL:Ljava/lang/String; = "level"

.field public static final DB_NAME:Ljava/lang/String; = "name"

.field public static final DB_NLP_VERSION:Ljava/lang/String; = "nlp_version"

.field public static final DB_NOTE:Ljava/lang/String; = "note"

.field public static final DB_OPERATION:Ljava/lang/String; = "operation"

.field public static final DB_PARENT:Ljava/lang/String; = "parent"

.field public static final DB_RAWTEXT:Ljava/lang/String; = "rawtext"

.field public static final DB_REPEAT_RAWTEXT:Ljava/lang/String; = "repeat_rawtext"

.field public static final DB_RING_PATH:Ljava/lang/String; = "ring_path"

.field public static final DB_RING_TYPE:Ljava/lang/String; = "ring_type"

.field public static final DB_SETTING_TIME_FIELD:Ljava/lang/String; = "setting_time_field"

.field public static final DB_SORT:Ljava/lang/String; = "sort"

.field public static final DB_TIME_RAWTEXT:Ljava/lang/String; = "time_rawtext"

.field public static final DB_TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field public static final DB_TIP:Ljava/lang/String; = "tip"

.field public static final DB_TITLE:Ljava/lang/String; = "title"

.field public static final DB_TRIGGER_TIME:Ljava/lang/String; = "trigger_time"

.field public static final DB_VOLUME:Ljava/lang/String; = "volume"

.field public static final DB_WHEN_VOLUME_CHANGE:Ljava/lang/String; = "when_volume_change"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
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

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v2, "scheduleList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p1, :cond_4

    .line 131
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 132
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 133
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 135
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

    .line 136
    const-string/jumbo v4, "content"

    const-string/jumbo v5, "content"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
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

    .line 140
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

    .line 141
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

    .line 143
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

    .line 145
    const-string/jumbo v4, "rawtext"

    const-string/jumbo v5, "rawtext"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v4, "sort"

    const-string/jumbo v5, "sort"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v4, "is_open"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 149
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "com.iflytek.cmcc.IFLY_IS_ALARM_CLOCK_SCHEDULE_NEWED"

    invoke-virtual {v4, v5, v8}, Lil;->a(Ljava/lang/String;Z)V

    .line 151
    :cond_0
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "action"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v4, "repeat_type"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "datetimeInforStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 154
    .local v0, "datetimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 155
    :cond_1
    const-string/jumbo v4, "trigger_time"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeRecognizeFilter;->filterOnce(J)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    .line 159
    :goto_1
    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbSaveHelper;->save(Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;)Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string/jumbo v4, "repeat_type"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v4, "ad_id"

    const-string/jumbo v5, "ad_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v4, "ad_pic_url"

    const-string/jumbo v5, "ad_pic_url"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v4, "ad_text"

    const-string/jumbo v5, "ad_text"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v4, "come_from"

    const-string/jumbo v5, "come_from"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v4, "source_desc"

    const-string/jumbo v5, "source_desc"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v4, "source_url"

    const-string/jumbo v5, "source_url"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v4, "detail_url"

    const-string/jumbo v5, "detail_url"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 157
    :cond_2
    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/entities/DatetimeDbReadHelper;->read(Ljava/lang/String;)Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;

    move-result-object v0

    goto/16 :goto_1

    .line 174
    .end local v0    # "datetimeInfo":Lcom/iflytek/viafly/schedule/framework/entities/BaseDatetimeInfor;
    .end local v1    # "datetimeInforStr":Ljava/lang/String;
    .end local v3    # "scheduleMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_4
    return-object v2
.end method

.method public onUpgrade(Ljava/util/List;)V
    .locals 1
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
    .line 122
    .local p1, "databaseMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/Columns_Ver8;->mDatabaseUpgradeHandler:Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/data/Columns_Ver8;->mDatabaseUpgradeHandler:Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;->onUpgrade(Ljava/util/List;)V

    .line 125
    :cond_0
    return-void
.end method
