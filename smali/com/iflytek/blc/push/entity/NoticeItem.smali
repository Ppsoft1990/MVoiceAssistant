.class public Lcom/iflytek/blc/push/entity/NoticeItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/iflytek/blc/orm/annotation/Table;
    name = "t_noticeitem"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        length = 0x14
        name = "msgId"
    .end annotation

    .annotation runtime Lcom/iflytek/blc/orm/annotation/Id;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        length = 0x14
        name = "typeId"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        length = 0x14
        name = "actionId"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "title"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "content"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "startTime"
        type = "INTEGER"
    .end annotation
.end field

.field private g:J
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "endTime"
        type = "INTEGER"
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "extraInfo"
    .end annotation
.end field

.field private j:I
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "displayCount"
        type = "INTEGER"
    .end annotation
.end field

.field private k:I
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "closeFlag"
        type = "INTEGER"
    .end annotation
.end field

.field private l:J
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "receiveTime"
        type = "INTEGER"
    .end annotation
.end field

.field private m:I
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "readFlag"
        type = "INTEGER"
    .end annotation
.end field

.field private n:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "localPicUrl"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lcom/iflytek/blc/orm/annotation/Column;
        name = "reservedData"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->f:J

    iput-wide v2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->g:J

    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->j:I

    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->m:I

    return-void
.end method

.method public constructor <init>(Lcom/iflytek/blc/notice/Notice;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->f:J

    iput-wide v2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->g:J

    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->j:I

    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->m:I

    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->update(Lcom/iflytek/blc/notice/Notice;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->f:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->g:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->j:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->m:I

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->f:J

    iput-wide p8, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->g:J

    iput-object p10, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->i:Ljava/lang/String;

    iput p11, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->j:I

    move/from16 v0, p12

    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->k:I

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->l:J

    move/from16 v0, p15

    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->m:I

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->n:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->o:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    :cond_3
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->i:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCloseFlag()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->k:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayCount()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->j:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->g:J

    return-wide v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/iflytek/blc/push/entity/NoticeItem;->b()V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtraMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/iflytek/blc/push/entity/NoticeItem;->b()V

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    return-object v0
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getLocalPicUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getLongProperty(Ljava/lang/String;J)J
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-wide p2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getReadFlag()I
    .locals 1

    iget v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->m:I

    return v0
.end method

.method public getReceiveTime()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->l:J

    return-wide v0
.end method

.method public getReservedData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->f:J

    return-wide v0
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->k:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeen()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->m:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseTime(Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, v2}, Lcom/iflytek/blc/util/DateFormat;->parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->c:Ljava/lang/String;

    return-void
.end method

.method public setCloseFlag(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->k:I

    return-void
.end method

.method public setClosed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->k:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->e:Ljava/lang/String;

    return-void
.end method

.method public setDisplayCount(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->j:I

    return-void
.end method

.method public setEndTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->g:J

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/iflytek/blc/push/entity/NoticeItem;->b()V

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/blc/push/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/blc/push/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/iflytek/blc/push/entity/NoticeItem;->b()V

    :cond_3
    iget-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/iflytek/blc/push/entity/NoticeItem;->a()V

    goto :goto_0
.end method

.method public setExtraInfo(Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/blc/push/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExtraMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->h:Ljava/util/Map;

    invoke-direct {p0}, Lcom/iflytek/blc/push/entity/NoticeItem;->a()V

    return-void
.end method

.method public setLocalPicUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->n:Ljava/lang/String;

    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->a:Ljava/lang/String;

    return-void
.end method

.method public setReadFlag(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->m:I

    return-void
.end method

.method public setReceiveTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->l:J

    return-void
.end method

.method public setReservedData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->o:Ljava/lang/String;

    return-void
.end method

.method public setSeen(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->m:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->f:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->d:Ljava/lang/String;

    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->b:Ljava/lang/String;

    return-void
.end method

.method public update(Lcom/iflytek/blc/notice/Notice;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getTypeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getActionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/blc/push/entity/NoticeItem;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->f:J

    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/blc/push/entity/NoticeItem;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->g:J

    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/blc/push/entity/NoticeItem;->setExtraMap(Ljava/util/Map;)V

    const-string/jumbo v0, "dcount"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/blc/push/entity/NoticeItem;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/blc/push/entity/NoticeItem;->j:I

    goto :goto_0
.end method
