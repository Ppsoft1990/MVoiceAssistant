.class public Lasy;
.super Latg;
.source "NoticePushHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Latg;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 88
    :cond_0
    return-object v5

    .line 41
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 43
    .local v4, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v4, :cond_2

    .line 48
    invoke-virtual {v4}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v8

    .line 49
    .local v8, "typeId":Ljava/lang/String;
    sget-object v10, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-static {v8}, Lcom/iflytek/viafly/push/data/entities/MessageType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v11

    if-eq v10, v11, :cond_3

    .line 50
    const-string/jumbo v10, "NoticePushHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onFilter(), type error, discard item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v4}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getActionId()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "actionId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 56
    const-string/jumbo v10, "NoticePushHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onFilter(), action id error, discard item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {v4}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 63
    const-string/jumbo v10, "NoticePushHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onFilter(), content error, discard item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_5
    invoke-static {v4}, Laue;->b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v4}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-gez v10, :cond_6

    .line 69
    const-string/jumbo v10, "NoticePushHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onFilter(), alarm time is expired, discard item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 75
    :cond_6
    invoke-virtual {v4}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStartTime()J

    move-result-wide v6

    .line 76
    .local v6, "startTime":J
    invoke-virtual {v4}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v2

    .line 77
    .local v2, "endTime":J
    invoke-static {v4}, Laue;->b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 78
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_7

    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-lez v10, :cond_7

    cmp-long v10, v6, v2

    if-lez v10, :cond_8

    .line 79
    :cond_7
    const-string/jumbo v10, "NoticePushHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onFilter(), effective display time is not legal, discard item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 86
    :cond_8
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    iget-object v9, p0, Lasy;->a:Landroid/content/Context;

    invoke-static {v9}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v7

    .line 95
    .local v7, "pushDataManager":Latf;, "Latf<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-virtual {v7}, Latf;->b()V

    .line 97
    iget-object v9, p0, Lasy;->a:Landroid/content/Context;

    invoke-static {v9}, Lasz;->a(Landroid/content/Context;)Lasz;

    move-result-object v9

    invoke-virtual {v9}, Lasz;->b()V

    .line 99
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/iflytek/viafly/push/data/entities/MessageType;

    const/4 v12, 0x0

    sget-object v13, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v13, v9, v12

    .line 100
    invoke-static {v9}, Lcom/iflytek/viafly/push/data/entities/MessageType;->toList([Lcom/iflytek/viafly/push/data/entities/MessageType;)Ljava/util/List;

    move-result-object v9

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    const/4 v13, 0x0

    sget-object v14, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->InPeriod:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    aput-object v14, v12, v13

    .line 101
    invoke-static {v12}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->toList([Lcom/iflytek/viafly/push/data/entities/MsgLifetime;)Ljava/util/List;

    move-result-object v12

    .line 99
    invoke-virtual {v7, v9, v12}, Latf;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "cacheMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 103
    const-string/jumbo v9, "NoticePushHandler"

    const-string/jumbo v12, "handle() no cacheMsgs"

    invoke-static {v9, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {}, Lil;->a()Lil;

    move-result-object v9

    const-string/jumbo v12, "com.iflytek.cmccIFLY_NOTICE_PUSH_SETTING"

    const/4 v13, 0x1

    invoke-virtual {v9, v12, v13}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 108
    .local v1, "isNoticePush":Z
    const-string/jumbo v9, "NoticePushHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "isNoticePush: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-eqz v1, :cond_0

    .line 115
    iget-object v9, p0, Lasy;->a:Landroid/content/Context;

    invoke-static {v9}, Latq;->a(Landroid/content/Context;)Latq;

    move-result-object v9

    invoke-virtual {v9}, Latq;->a()V

    .line 117
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v8, "spanMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 119
    .local v2, "currTime":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 120
    .local v6, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v6, :cond_2

    .line 124
    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->isSeen()Z

    move-result v12

    if-nez v12, :cond_2

    .line 127
    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStartTime()J

    move-result-wide v10

    .line 128
    .local v10, "startTime":J
    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v4

    .line 130
    .local v4, "endTime":J
    invoke-static {v6}, Laue;->b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v12

    if-nez v12, :cond_2

    cmp-long v12, v10, v2

    if-gtz v12, :cond_2

    cmp-long v12, v2, v4

    if-gtz v12, :cond_2

    .line 131
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 135
    .end local v4    # "endTime":J
    .end local v6    # "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .end local v10    # "startTime":J
    :cond_3
    iget-object v9, p0, Lasy;->a:Landroid/content/Context;

    invoke-static {v9}, Latt;->a(Landroid/content/Context;)Latt;

    move-result-object v9

    invoke-virtual {v9, v8}, Latt;->a(Ljava/util/List;)V

    goto :goto_0
.end method
