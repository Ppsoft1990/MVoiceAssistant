.class public Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
.super Ljava/lang/Object;
.source "NoticeItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lbbw;
    a = "t_noticeitem"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoticeItem"

.field private static final serialVersionUID:J = -0x6e83c65360e166b2L


# instance fields
.field private actionId:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "actionId"
        c = 0x14
    .end annotation
.end field

.field private closeFlag:I
    .annotation runtime Lbbu;
        a = "closeFlag"
        b = "INTEGER"
    .end annotation
.end field

.field private content:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "content"
    .end annotation
.end field

.field private displayCount:I
    .annotation runtime Lbbu;
        a = "displayCount"
        b = "INTEGER"
    .end annotation
.end field

.field private endTime:J
    .annotation runtime Lbbu;
        a = "endTime"
        b = "INTEGER"
    .end annotation
.end field

.field private extraInfo:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "extraInfo"
    .end annotation
.end field

.field private extraMap:Ljava/util/Map;
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

.field private localPicUrl:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "localPicUrl"
    .end annotation
.end field

.field private msgId:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "msgId"
        c = 0x14
    .end annotation

    .annotation runtime Lbbv;
    .end annotation
.end field

.field private readFlag:I
    .annotation runtime Lbbu;
        a = "readFlag"
        b = "INTEGER"
    .end annotation
.end field

.field private receiveTime:J
    .annotation runtime Lbbu;
        a = "receiveTime"
        b = "INTEGER"
    .end annotation
.end field

.field private reservedData:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "reservedData"
    .end annotation
.end field

.field private startTime:J
    .annotation runtime Lbbu;
        a = "startTime"
        b = "INTEGER"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "title"
    .end annotation
.end field

.field private typeId:Ljava/lang/String;
    .annotation runtime Lbbu;
        a = "typeId"
        c = 0x14
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->startTime:J

    .line 52
    iput-wide v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->endTime:J

    .line 61
    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->displayCount:I

    .line 71
    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->readFlag:I

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/blc/notice/Notice;)V
    .locals 4
    .param p1, "notice"    # Lcom/iflytek/blc/notice/Notice;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->startTime:J

    .line 52
    iput-wide v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->endTime:J

    .line 61
    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->displayCount:I

    .line 71
    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->readFlag:I

    .line 87
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->update(Lcom/iflytek/blc/notice/Notice;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;IIJILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "typeId"    # Ljava/lang/String;
    .param p3, "actionId"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "startTime"    # J
    .param p8, "endTime"    # J
    .param p10, "extraInfo"    # Ljava/lang/String;
    .param p11, "displayCount"    # I
    .param p12, "closeFlag"    # I
    .param p13, "receiveTime"    # J
    .param p15, "readFlag"    # I
    .param p16, "localPicUrl"    # Ljava/lang/String;
    .param p17, "reservedData"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->startTime:J

    .line 52
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->endTime:J

    .line 61
    const/4 v2, 0x0

    iput v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->displayCount:I

    .line 71
    const/4 v2, 0x0

    iput v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->readFlag:I

    .line 114
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->msgId:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->typeId:Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->actionId:Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->title:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->content:Ljava/lang/String;

    .line 119
    iput-wide p6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->startTime:J

    .line 120
    iput-wide p8, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->endTime:J

    .line 121
    iput-object p10, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo:Ljava/lang/String;

    .line 122
    iput p11, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->displayCount:I

    .line 123
    move/from16 v0, p12

    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->closeFlag:I

    .line 124
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->receiveTime:J

    .line 125
    move/from16 v0, p15

    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->readFlag:I

    .line 126
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->localPicUrl:Ljava/lang/String;

    .line 127
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->reservedData:Ljava/lang/String;

    .line 128
    return-void
.end method

.method private extraInfo2Map()V
    .locals 8

    .prologue
    .line 242
    iget-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo:Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 243
    iget-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    if-nez v6, :cond_0

    .line 244
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    .line 268
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 251
    :cond_1
    const/4 v1, 0x0

    .line 252
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    if-nez v6, :cond_2

    .line 253
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    .line 255
    :cond_2
    iget-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 257
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo:Ljava/lang/String;

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 259
    .end local v1    # "json":Lorg/json/JSONObject;
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 260
    .local v4, "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 261
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 262
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "value":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 265
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 266
    .end local v2    # "json":Lorg/json/JSONObject;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :goto_2
    const-string/jumbo v6, "NoticeItem"

    const-string/jumbo v7, "extraInfo2Map error"

    invoke-static {v6, v7, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v4    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    move-object v1, v2

    .line 267
    .end local v2    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 265
    .end local v4    # "keyIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private map2ExtraInfo()V
    .locals 3

    .prologue
    .line 230
    iget-object v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "json":Lorg/json/JSONObject;
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v0    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0    # "json":Lorg/json/JSONObject;
    .restart local v1    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "json":Lorg/json/JSONObject;
    .restart local v0    # "json":Lorg/json/JSONObject;
    goto :goto_0
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->actionId:Ljava/lang/String;

    return-object v0
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 433
    if-nez p1, :cond_1

    .line 448
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 436
    .restart local p2    # "defaultValue":Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    move v0, p2

    .line 444
    .local v0, "nValue":Z
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move p2, v0

    .line 448
    goto :goto_0

    .line 445
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getCloseFlag()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->closeFlag:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayCount()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->displayCount:I

    return v0
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->endTime:J

    return-wide v0
.end method

.method public getExtraInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo2Map()V

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    :cond_2
    const-string/jumbo v0, ""

    .line 279
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->g(Ljava/lang/String;)Ljava/lang/String;

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

    .prologue
    .line 452
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo2Map()V

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    return-object v0
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 395
    if-nez p1, :cond_1

    .line 410
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 398
    .restart local p2    # "defaultValue":I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 404
    move v0, p2

    .line 406
    .local v0, "nValue":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move p2, v0

    .line 410
    goto :goto_0

    .line 407
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getLocalPicUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->localPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLongProperty(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 414
    if-nez p1, :cond_1

    .line 429
    .end local p2    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p2

    .line 417
    .restart local p2    # "defaultValue":J
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    move-wide v0, p2

    .line 425
    .local v0, "nValue":J
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_1
    move-wide p2, v0

    .line 429
    goto :goto_0

    .line 426
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getReadFlag()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->readFlag:I

    return v0
.end method

.method public getReceiveTime()J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->receiveTime:J

    return-wide v0
.end method

.method public getReservedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->reservedData:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->startTime:J

    return-wide v0
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 388
    if-nez p1, :cond_0

    .line 389
    const-string/jumbo v0, ""

    .line 391
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->typeId:Ljava/lang/String;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 340
    iget v1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->closeFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeen()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 364
    iget v1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->readFlag:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseTime(Ljava/lang/String;)J
    .locals 5
    .param p1, "strTime"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-wide/16 v2, 0x0

    .line 140
    :goto_0
    return-wide v2

    .line 134
    :cond_0
    const-wide/16 v2, 0x0

    .line 136
    .local v2, "time":J
    :try_start_0
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p1, v1}, Lbaa;->b(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NoticeItem"

    const-string/jumbo v4, ""

    invoke-static {v1, v4, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionId"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->actionId:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setCloseFlag(I)V
    .locals 0
    .param p1, "closeFlag"    # I

    .prologue
    .line 336
    iput p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->closeFlag:I

    .line 337
    return-void
.end method

.method public setClosed(Z)V
    .locals 1
    .param p1, "closeFlag"    # Z

    .prologue
    .line 344
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->closeFlag:I

    .line 345
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->content:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setDisplayCount(I)V
    .locals 0
    .param p1, "displayCount"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->displayCount:I

    .line 213
    return-void
.end method

.method public setEndTime(J)V
    .locals 1
    .param p1, "endTime"    # J

    .prologue
    .line 204
    iput-wide p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->endTime:J

    .line 205
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo:Ljava/lang/String;

    .line 226
    invoke-direct {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo2Map()V

    .line 227
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-static {p1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 294
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraInfo2Map()V

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-direct {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->map2ExtraInfo()V

    goto :goto_0
.end method

.method public setExtraInfo(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
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

    .prologue
    .line 216
    .local p1, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->extraMap:Ljava/util/Map;

    .line 217
    invoke-direct {p0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->map2ExtraInfo()V

    .line 218
    return-void
.end method

.method public setLocalPicUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "localPicUrl"    # Ljava/lang/String;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->localPicUrl:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .locals 0
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->msgId:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setReadFlag(I)V
    .locals 0
    .param p1, "readFlag"    # I

    .prologue
    .line 360
    iput p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->readFlag:I

    .line 361
    return-void
.end method

.method public setReceiveTime(J)V
    .locals 1
    .param p1, "receiveTime"    # J

    .prologue
    .line 352
    iput-wide p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->receiveTime:J

    .line 353
    return-void
.end method

.method public setReservedData(Ljava/lang/String;)V
    .locals 0
    .param p1, "reservedData"    # Ljava/lang/String;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->reservedData:Ljava/lang/String;

    .line 385
    return-void
.end method

.method public setSeen(Z)V
    .locals 1
    .param p1, "isRead"    # Z

    .prologue
    .line 368
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->readFlag:I

    .line 369
    return-void

    .line 368
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStartTime(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->startTime:J

    .line 197
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->title:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setTypeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeId"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->typeId:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public update(Lcom/iflytek/blc/notice/Notice;)V
    .locals 2
    .param p1, "notice"    # Lcom/iflytek/blc/notice/Notice;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->title:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->content:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getTypeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->typeId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getActionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->actionId:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->msgId:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->startTime:J

    .line 101
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->parseTime(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->endTime:J

    .line 103
    invoke-virtual {p1}, Lcom/iflytek/blc/notice/Notice;->getExtraInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->setExtraMap(Ljava/util/Map;)V

    .line 105
    const-string/jumbo v0, "dcount"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->displayCount:I

    goto :goto_0
.end method
