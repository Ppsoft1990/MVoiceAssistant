.class public Lata;
.super Latg;
.source "SilentNoticePushHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Latg;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V
    .locals 8
    .param p1, "notice"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 103
    const-string/jumbo v4, "SilentNoticePushHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNotice() | notice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-static {p1}, Laue;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    iget-object v4, p0, Lata;->a:Landroid/content/Context;

    invoke-static {v4}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Latf;->b(Ljava/lang/String;)J

    .line 111
    const-string/jumbo v4, "SilentNoticePushHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete notice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_1
    iget-object v4, p0, Lata;->a:Landroid/content/Context;

    invoke-static {v4}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Latf;->c(Ljava/lang/String;)J

    .line 119
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getActionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "actionIntent":Landroid/content/Intent;
    const-string/jumbo v4, "EXTRA_USER_MODE"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string/jumbo v4, "EXTRA_PREFER_LAUNCH_ACTIVITY"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraMap()Ljava/util/Map;

    move-result-object v3

    .line 125
    .local v3, "originMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 126
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lasx;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 128
    :cond_2
    if-eqz v3, :cond_3

    .line 129
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 131
    const-string/jumbo v4, "msgid"

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v4, "starttime"

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStartTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v4, "endtime"

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_3
    const-string/jumbo v4, "EXTRA_NOTICE_BUSINESS_DATA"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 136
    iget-object v4, p0, Lata;->a:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    const-string/jumbo v4, "SilentNoticePushHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleNotice() | sendBroadcast: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
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
    .local p1, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const-wide/16 v12, 0x0

    .line 41
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 75
    :cond_0
    return-object v4

    .line 44
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 46
    .local v1, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, "typeId":Ljava/lang/String;
    sget-object v9, Lcom/iflytek/viafly/push/data/entities/MessageType;->silentNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-static {v5}, Lcom/iflytek/viafly/push/data/entities/MessageType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v10

    if-eq v9, v10, :cond_3

    .line 53
    const-string/jumbo v9, "SilentNoticePushHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onFilter(), type error, discard item="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getActionId()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "actionId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 59
    const-string/jumbo v9, "SilentNoticePushHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onFilter(), action id error, discard item="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getStartTime()J

    move-result-wide v6

    .line 65
    .local v6, "startTime":J
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v2

    .line 66
    .local v2, "endTime":J
    cmp-long v9, v6, v12

    if-lez v9, :cond_5

    cmp-long v9, v2, v12

    if-lez v9, :cond_5

    cmp-long v9, v6, v2

    if-lez v9, :cond_6

    .line 67
    :cond_5
    const-string/jumbo v9, "SilentNoticePushHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onFilter(), effective display time is not legal, discard item="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 73
    :cond_6
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 7
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
    .local p1, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 80
    iget-object v3, p0, Lata;->a:Landroid/content/Context;

    .line 81
    invoke-static {v3}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v2

    .line 83
    .local v2, "pushDataManager":Latf;, "Latf<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-virtual {v2}, Latf;->b()V

    .line 86
    new-array v3, v5, [Lcom/iflytek/viafly/push/data/entities/MessageType;

    sget-object v4, Lcom/iflytek/viafly/push/data/entities/MessageType;->silentNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v4, v3, v6

    .line 87
    invoke-static {v3}, Lcom/iflytek/viafly/push/data/entities/MessageType;->toList([Lcom/iflytek/viafly/push/data/entities/MessageType;)Ljava/util/List;

    move-result-object v3

    new-array v4, v5, [Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    sget-object v5, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->InPeriod:Lcom/iflytek/viafly/push/data/entities/MsgLifetime;

    aput-object v5, v4, v6

    .line 88
    invoke-static {v4}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->toList([Lcom/iflytek/viafly/push/data/entities/MsgLifetime;)Ljava/util/List;

    move-result-object v4

    .line 86
    invoke-virtual {v2, v3, v4}, Latf;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 91
    .local v0, "cacheMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 92
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 93
    .local v1, "notice":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->isSeen()Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    invoke-direct {p0, v1}, Lata;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V

    goto :goto_0

    .line 99
    .end local v1    # "notice":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_1
    return-void
.end method
