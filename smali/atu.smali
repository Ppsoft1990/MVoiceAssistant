.class public abstract Latu;
.super Ljava/lang/Object;
.source "PushShowHelper.java"


# instance fields
.field protected a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Latu;->a:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "messageType"    # Ljava/lang/String;
    .param p6, "isNeedRing"    # Z
    .param p7, "ringPath"    # Ljava/lang/String;
    .param p8, "btnText"    # Ljava/lang/String;
    .param p9, "iconCustom"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p5, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "PushShowHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showInNotifyBar() | id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v7, "showBtnContent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v2, 0x7f0b04c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v1, Lcom/iflytek/common/notice/NotificationParam;

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/iflytek/common/notice/NotificationParam;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)V

    .line 53
    .local v1, "param":Lcom/iflytek/common/notice/NotificationParam;
    iput-object p5, v1, Lcom/iflytek/common/notice/NotificationParam;->data:Ljava/util/Map;

    .line 54
    iput-boolean p6, v1, Lcom/iflytek/common/notice/NotificationParam;->isRing:Z

    .line 55
    move-object/from16 v0, p7

    iput-object v0, v1, Lcom/iflytek/common/notice/NotificationParam;->ringPath:Ljava/lang/String;

    .line 56
    iget-object v2, p0, Latu;->a:Landroid/content/Context;

    new-instance v3, Latu$1;

    invoke-direct {v3, p0}, Latu$1;-><init>(Latu;)V

    invoke-static {v2, v1, v3}, Loe;->a(Landroid/content/Context;Lcom/iflytek/common/notice/NotificationParam;Loe$a;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)I
.end method

.method protected abstract a(Ljava/util/List;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
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
.end method

.method public abstract a()V
.end method

.method protected abstract a(Lcom/iflytek/common/notice/NotificationParam;)V
.end method

.method protected abstract a(Lcom/iflytek/common/notice/NotificationParam;I)V
.end method

.method public a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;Z)Z
    .locals 12
    .param p1, "notice"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .param p2, "isNeedRing"    # Z

    .prologue
    const/4 v11, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v11

    .line 97
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "msgType":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    const/4 v11, 0x0

    .line 102
    .local v11, "isSuccess":Z
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v5, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "notice_item"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "btcontent"

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "btnText":Ljava/lang/String;
    const-string/jumbo v0, "nbiconurl"

    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getExtraInfoValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 108
    .local v9, "iconCustom":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Latu;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)I

    move-result v1

    invoke-virtual {p0, p1}, Latu;->c(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p0, p1}, Latu;->b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "ringtone/notice.mp3"

    move-object v0, p0

    move v6, p2

    .line 108
    invoke-direct/range {v0 .. v9}, Latu;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Latu;->a:Landroid/content/Context;

    invoke-static {v0}, Lxh;->a(Landroid/content/Context;)Lxh;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->notify_bar:Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    invoke-virtual {v0, v1, v2}, Lxh;->a(Ljava/lang/String;Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const/4 v11, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v10

    .line 117
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "PushShowHelper"

    const-string/jumbo v1, "showInNotifyBar exception happened"

    invoke-static {v0, v1, v10}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public b(Ljava/util/List;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .locals 4
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
    const/4 v2, 0x0

    .line 128
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 136
    :cond_0
    :goto_0
    return-object v1

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Latu;->a(Ljava/util/List;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    move-result-object v1

    .line 132
    .local v1, "showItem":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Latu;->a(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p0, v1, v3}, Latu;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;Z)Z

    move-result v0

    .line 133
    .local v0, "isShown":Z
    if-nez v0, :cond_0

    move-object v1, v2

    .line 136
    goto :goto_0
.end method

.method protected abstract b(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Ljava/lang/String;
.end method

.method protected abstract b(Lcom/iflytek/common/notice/NotificationParam;)V
.end method

.method protected abstract c(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)Ljava/lang/String;
.end method

.method public abstract d(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;)V
.end method
