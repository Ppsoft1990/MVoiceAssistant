.class public Lxh;
.super Lwo;
.source "NotificationOpLogHelper.java"


# static fields
.field private static volatile b:Lxh;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "msgScenePosition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    if-nez p1, :cond_1

    .line 147
    const/4 v0, 0x0

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 149
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "notificationParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "notice_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    if-eqz p2, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    const-string/jumbo v1, "msg_scn_pos"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lxh;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lxh;->b:Lxh;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lxh;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lxh;->b:Lxh;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lxh;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lxh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxh;->b:Lxh;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lxh;->b:Lxh;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "msgScenePosition"    # Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 118
    :cond_0
    const-string/jumbo v3, "BlcOpLogHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recordClickNoticeLog() | parameter is illegal-->msgID = null: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "msgScenePosition==null: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 118
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 123
    :cond_3
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordClickNoticeLog() | msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msgScenePosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string/jumbo v1, "FD03003"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 125
    invoke-virtual {p2}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageClickScenePosition;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 124
    invoke-virtual/range {v0 .. v5}, Lxh;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "scene"    # Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageCloseScenePosition;

    .prologue
    .line 134
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordCloseNoticeShowLog() | msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string/jumbo v1, "FD03004"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, v0}, Lxh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 135
    invoke-virtual/range {v0 .. v5}, Lxh;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 137
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;)V
    .locals 6
    .param p1, "msgId"    # Ljava/lang/String;
    .param p2, "msgScenePosition"    # Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 72
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 73
    :cond_0
    const-string/jumbo v3, "BlcOpLogHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recordDisplayNoticeLog() | parameter is illegal-->msgID = null: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "msgScenePosition==null: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 73
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 78
    :cond_3
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordDisplayNoticeLog() | msgId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " msgScenePosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string/jumbo v1, "FD03002"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 80
    invoke-virtual {p2}, Lcom/iflytek/viafly/blc/log/entities/MessageScenePosition$MessageDisplayScenePosition;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lxh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v5}, Lxh;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .locals 8
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
    .line 50
    .local p1, "msgs":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordRequestSuccessLog() | msgs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v7, "msgIds":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 54
    .local v6, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v6, :cond_0

    .line 55
    invoke-virtual {v6}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string/jumbo v1, ","

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 59
    .end local v6    # "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 60
    const-string/jumbo v1, "FD03001"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lxh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v5}, Lxh;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 63
    .end local v7    # "msgIds":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method
