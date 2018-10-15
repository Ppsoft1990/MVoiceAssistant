.class public Lasz;
.super Latu;
.source "NoticePushShowHelper.java"

# interfaces
.implements Lcom/iflytek/base/newalarm/interfaces/IAlarmCallback;


# static fields
.field private static b:Lasz;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Latu;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public static a(Landroid/content/Context;)Lasz;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lasz;->b:Lasz;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lasz;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lasz;->b:Lasz;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lasz;

    invoke-direct {v0, p0}, Lasz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lasz;->b:Lasz;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    sget-object v0, Lasz;->b:Lasz;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/iflytek/common/notice/NotificationParam;I)V
    .locals 12
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "btnResId"    # I

    .prologue
    .line 89
    iget-object v9, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v9}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v9

    sget-object v10, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->notice_notification_bar:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v10}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lxb;->a(Ljava/lang/String;)V

    .line 92
    const-string/jumbo v9, ""

    invoke-direct {p0, v9}, Lasz;->b(Ljava/lang/String;)V

    .line 95
    if-eqz p1, :cond_0

    iget-object v9, p1, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    if-nez v9, :cond_2

    .line 96
    :cond_0
    const-string/jumbo v9, "NoticePushShowHelper"

    const-string/jumbo v10, "handleClickNotifyBarItems() param or data is null"

    invoke-static {v9, v10}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v9, p1, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    const-string/jumbo v10, "notice_item"

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 100
    .local v6, "notice":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    const-string/jumbo v9, "NoticePushShowHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleClickNotifyBarItems() | notice="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v6, :cond_1

    .line 105
    const/4 v9, -0x1

    if-ne p2, v9, :cond_4

    const/4 v5, 0x1

    .line 108
    .local v5, "isNotificationClick":Z
    :goto_1
    sget-object v8, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    .line 109
    .local v8, "position":Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;
    if-nez v5, :cond_3

    .line 110
    sget-object v8, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->notify_bar_btn:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    .line 112
    :cond_3
    iget-object v9, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v9}, Lxh;->a(Landroid/content/Context;)Lxh;

    move-result-object v9

    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lxh;->a(Ljava/lang/String;Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;)V

    .line 115
    invoke-static {v6}, Laue;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 116
    iget-object v9, p0, Lasz;->a:Landroid/content/Context;

    const-string/jumbo v10, "\u6765\u665a\u4e86\u54e6\uff0c\u770b\u770b\u4e3a\u4f60\u51c6\u5907\u7684\u5176\u4ed6\u7cbe\u5f69\u5185\u5bb9\u5427\u3002"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 118
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    iget-object v9, p0, Lasz;->a:Landroid/content/Context;

    const-class v10, Lcom/iflytek/viafly/Home;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v4, "intentToHome":Landroid/content/Intent;
    const/high16 v9, 0x14000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 121
    iget-object v9, p0, Lasz;->a:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    const-string/jumbo v9, "NoticePushShowHelper"

    const-string/jumbo v10, "start homeActivity for invalid notice"

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v4    # "intentToHome":Landroid/content/Intent;
    :goto_2
    iget-object v9, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v9}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v9

    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Latf;->b(Ljava/lang/String;)J

    .line 127
    const-string/jumbo v9, "NoticePushShowHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "delete notice: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    .end local v5    # "isNotificationClick":Z
    .end local v8    # "position":Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 123
    .restart local v5    # "isNotificationClick":Z
    .restart local v8    # "position":Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;
    :catch_0
    move-exception v3

    .line 124
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v9, "NoticePushShowHelper"

    const-string/jumbo v10, "start home exception"

    invoke-static {v9, v10, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 132
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_5
    iget-object v9, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v9}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v9

    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Latf;->c(Ljava/lang/String;)J

    .line 135
    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getActionId()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "actionId":Ljava/lang/String;
    if-nez v5, :cond_6

    .line 138
    const-string/jumbo v9, "btactionid"

    invoke-virtual {v6, v9}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_6
    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v1, "actionIntent":Landroid/content/Intent;
    const-string/jumbo v9, "EXTRA_USER_MODE"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string/jumbo v9, "EXTRA_PREFER_LAUNCH_ACTIVITY"

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v2, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraMap()Ljava/util/Map;

    move-result-object v7

    .line 147
    .local v7, "originMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v7, :cond_7

    .line 148
    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lasx;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    .line 150
    :cond_7
    if-eqz v7, :cond_8

    .line 151
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 153
    :cond_8
    const-string/jumbo v9, "EXTRA_NOTICE_BUSINESS_DATA"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    iget-object v9, p0, Lasz;->a:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    const-string/jumbo v9, "NoticePushShowHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handleClickNotifyBarItems() | sendBroadcast: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getActionId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Laub;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .param p1, "noticeId"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string/jumbo v0, "NoticePushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveShowingNoticeId() id\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "SETTINGS_NOTIFYBAR_SHOWING_NOTICE_ID"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method


# virtual methods
.method protected a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)I
    .locals 1
    .param p1, "noticeItem"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 183
    sget v0, Lof;->g:I

    return v0
.end method

.method protected a(Ljava/util/List;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;"
        }
    .end annotation

    .prologue
    .local p1, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const/4 v3, 0x0

    .line 204
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object v3

    .line 207
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v2, "noticeItems":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 209
    .local v1, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->isSeen()Z

    move-result v5

    if-nez v5, :cond_2

    .line 215
    sget-object v5, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-virtual {v5}, Lcom/iflytek/viafly/push/data/entities/MessageType;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 218
    invoke-static {v1}, Laue;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 221
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    .end local v1    # "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_3
    invoke-static {v2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Laue;->a(I)I

    move-result v0

    .line 227
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 230
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 231
    .local v3, "result":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    const-string/jumbo v4, "NoticePushShowHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getProperNotifyBarNotice() | notice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a()V
    .locals 8

    .prologue
    .line 255
    iget-object v3, p0, Lasz;->a:Landroid/content/Context;

    .line 256
    invoke-static {v3}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/iflytek/viafly/push/data/entities/MessageType;

    const/4 v5, 0x0

    sget-object v6, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    aput-object v6, v4, v5

    .line 257
    invoke-static {v4}, Lcom/iflytek/viafly/push/data/entities/MessageType;->toList([Lcom/iflytek/viafly/push/data/entities/MessageType;)Ljava/util/List;

    move-result-object v4

    .line 258
    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MsgLifetime;->getAll()Ljava/util/List;

    move-result-object v5

    .line 257
    invoke-virtual {v3, v4, v5}, Latf;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 259
    .local v0, "cachMsgs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-static {v0}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    const-string/jumbo v3, "NoticePushShowHelper"

    const-string/jumbo v4, "registerShowAlarmNotice() no msgs in db"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    return-void

    .line 263
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 264
    .local v2, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v2, :cond_2

    .line 267
    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->isSeen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 270
    sget-object v4, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-virtual {v4}, Lcom/iflytek/viafly/push/data/entities/MessageType;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    invoke-static {v2}, Laue;->b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 276
    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 280
    :try_start_0
    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v6

    .line 281
    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 280
    invoke-static {v4, v6, v7, v5, p0}, Laue;->a(Ljava/lang/String;JILcom/iflytek/base/newalarm/interfaces/IAlarmCallback;)V

    .line 282
    const-string/jumbo v4, "NoticePushShowHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerShowAlarmNotice() set alarm msg= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getEndTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NoticePushShowHelper"

    const-string/jumbo v5, "registerShowAlarmNotice() set alarm error! "

    invoke-static {v4, v5, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method protected a(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 3
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 78
    const-string/jumbo v0, "NoticePushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClickNotifyBar()| param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lasz;->b(Lcom/iflytek/common/notice/NotificationParam;I)V

    .line 80
    return-void
.end method

.method protected a(Lcom/iflytek/common/notice/NotificationParam;I)V
    .locals 3
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;
    .param p2, "btnResId"    # I

    .prologue
    .line 84
    const-string/jumbo v0, "NoticePushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBtnClickNotifyBar()| param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " btnResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0, p1, p2}, Lasz;->b(Lcom/iflytek/common/notice/NotificationParam;I)V

    .line 86
    return-void
.end method

.method public a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;Z)Z
    .locals 4
    .param p1, "notice"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .param p2, "isNeedRing"    # Z

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 62
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Latu;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;Z)Z

    move-result v0

    .line 58
    .local v0, "isSuccess":Z
    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lasz;->b(Ljava/lang/String;)V

    .line 61
    :cond_1
    const-string/jumbo v1, "NoticePushShowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showInNotifyBar() result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4
    .param p1, "needShowNoticeId"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string/jumbo v1, "NoticePushShowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNeedRing() needShowNoticeId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Laue;->a()Z

    move-result v0

    .line 317
    .local v0, "isInCanDisturbeTime":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    .end local v0    # "isInCanDisturbeTime":Z
    :goto_0
    return v0

    .restart local v0    # "isInCanDisturbeTime":Z
    :cond_0
    invoke-virtual {p0}, Lasz;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Ljava/lang/String;
    .locals 1
    .param p1, "noticeItem"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    const-string/jumbo v0, ""

    .line 191
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 291
    invoke-virtual {p0}, Lasz;->c()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "noticeId":Ljava/lang/String;
    const-string/jumbo v2, "NoticePushShowHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removedDatedFromNotifyBar() notice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    iget-object v2, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v2}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v2

    invoke-virtual {v2, v1}, Latf;->d(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 295
    .local v0, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v0, :cond_0

    invoke-static {v0}, Laue;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    iget-object v2, p0, Lasz;->a:Landroid/content/Context;

    sget v3, Lof;->g:I

    invoke-static {v2, v3}, Laue;->a(Landroid/content/Context;I)V

    .line 297
    const-string/jumbo v2, ""

    invoke-direct {p0, v2}, Lasz;->b(Ljava/lang/String;)V

    .line 300
    .end local v0    # "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_0
    return-void
.end method

.method protected b(Lcom/iflytek/common/notice/NotificationParam;)V
    .locals 4
    .param p1, "param"    # Lcom/iflytek/common/notice/NotificationParam;

    .prologue
    .line 160
    const-string/jumbo v1, ""

    invoke-direct {p0, v1}, Lasz;->b(Ljava/lang/String;)V

    .line 161
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 162
    :cond_0
    const-string/jumbo v1, "NoticePushShowHelper"

    const-string/jumbo v2, "onClearNotifyBar() param or data is null"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget-object v1, p1, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    const-string/jumbo v2, "notice_item"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 166
    .local v0, "notice":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    const-string/jumbo v1, "NoticePushShowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClearNotifyBar() | notice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz v0, :cond_1

    .line 171
    iget-object v1, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v1}, Lxh;->a(Landroid/content/Context;)Lxh;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    invoke-virtual {v1, v2, v3}, Lxh;->a(Ljava/lang/String;Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;)V

    .line 173
    iget-object v1, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v1}, Latf;->b(Landroid/content/Context;)Latf;

    move-result-object v1

    invoke-virtual {v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Latf;->b(Ljava/lang/String;)J

    .line 174
    const-string/jumbo v1, "NoticePushShowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClearNotifyBar() | delete notice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 303
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "SETTINGS_NOTIFYBAR_SHOWING_NOTICE_ID"

    invoke-virtual {v1, v2}, Lil;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "showingId":Ljava/lang/String;
    const-string/jumbo v1, "NoticePushShowHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getShowingNoticeId() id\uff1a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-object v0
.end method

.method protected c(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Ljava/lang/String;
    .locals 1
    .param p1, "noticeItem"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 196
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    :cond_0
    const-string/jumbo v0, "\u54aa\u5495\u7075\u7280"

    .line 199
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V
    .locals 3
    .param p1, "noticeItem"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .prologue
    .line 237
    if-nez p1, :cond_0

    .line 238
    const-string/jumbo v0, "NoticePushShowHelper"

    const-string/jumbo v1, "handleAlarmNotice() param is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-void

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->isSeen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const-string/jumbo v0, "NoticePushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAlarmNotice() notice is seen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_1
    sget-object v0, Lcom/iflytek/viafly/push/data/entities/MessageType;->newNotice:Lcom/iflytek/viafly/push/data/entities/MessageType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/push/data/entities/MessageType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 246
    const-string/jumbo v0, "NoticePushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAlarmNotice() type not right "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_2
    const-string/jumbo v0, "NoticePushShowHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAlarmNotice() notice= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v0}, Latt;->a(Landroid/content/Context;)Latt;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Latt;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;Z)V

    goto :goto_0
.end method

.method public onAlarmTrigger(JLcom/iflytek/base/newalarm/entities/AlarmData;)V
    .locals 5
    .param p1, "realTrigger"    # J
    .param p3, "alarmData"    # Lcom/iflytek/base/newalarm/entities/AlarmData;

    .prologue
    .line 327
    if-eqz p3, :cond_1

    .line 328
    const-string/jumbo v2, "NoticePushShowHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAlarmTrigger alarm data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p3}, Lcom/iflytek/base/newalarm/entities/AlarmData;->getAlarmBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 330
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 331
    const-string/jumbo v2, "notice_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "noticeId":Ljava/lang/String;
    iget-object v2, p0, Lasz;->a:Landroid/content/Context;

    invoke-static {v2}, Latq;->a(Landroid/content/Context;)Latq;

    move-result-object v2

    .line 333
    invoke-virtual {v2, v1}, Latq;->a(Ljava/lang/String;)V

    .line 338
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "noticeId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    const-string/jumbo v2, "NoticePushShowHelper"

    const-string/jumbo v3, "onAlarmTrigger but alarm data is empty"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
