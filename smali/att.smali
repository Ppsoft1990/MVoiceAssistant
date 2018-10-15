.class public Latt;
.super Ljava/lang/Object;
.source "NoticeBarShowManager.java"


# static fields
.field private static a:Latt;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/iflytek/viafly/push/data/entities/MessageType;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Latt;->c:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Latt;->b:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public static a(Landroid/content/Context;)Latt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Latt;->a:Latt;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Latt;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Latt;->a:Latt;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Latt;

    invoke-direct {v0, p0}, Latt;-><init>(Landroid/content/Context;)V

    sput-object v0, Latt;->a:Latt;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Latt;->a:Latt;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Ljava/util/List;)V
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
    .line 74
    .local p1, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    :cond_0
    return-void

    .line 78
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 79
    .local v1, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {v1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/iflytek/viafly/push/data/entities/MessageType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v4

    .line 84
    .local v4, "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    if-eqz v4, :cond_2

    .line 87
    iget-object v6, p0, Latt;->b:Landroid/content/Context;

    invoke-static {v6, v4}, Latv;->a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latu;

    move-result-object v0

    .line 88
    .local v0, "helper":Latu;
    if-eqz v0, :cond_2

    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    move-object v2, v4

    .line 94
    .local v2, "key":Lcom/iflytek/viafly/push/data/entities/MessageType;
    invoke-static {v4}, Lcom/iflytek/viafly/push/data/entities/MessageType;->isCommon(Lcom/iflytek/viafly/push/data/entities/MessageType;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 95
    sget-object v2, Lcom/iflytek/viafly/push/data/entities/MessageType;->common:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 97
    :cond_3
    if-eqz v2, :cond_2

    .line 100
    iget-object v6, p0, Latt;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    iget-object v6, p0, Latt;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    check-cast v3, Ljava/util/List;

    .line 103
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    :cond_4
    if-nez v3, :cond_5

    .line 104
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 106
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    :cond_5
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v6, p0, Latt;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;Z)V
    .locals 3
    .param p1, "notice"    # Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    .param p2, "isNeedRing"    # Z

    .prologue
    .line 116
    monitor-enter p0

    if-nez p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 119
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/viafly/push/data/entities/MessageType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v1

    .line 120
    .local v1, "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    iget-object v2, p0, Latt;->b:Landroid/content/Context;

    invoke-static {v2, v1}, Latv;->a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latu;

    move-result-object v0

    .line 122
    .local v0, "helper":Latu;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0, p1, p2}, Latu;->a(Lcom/iflytek/viafly/blcpush/entity/NoticeItem;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 116
    .end local v0    # "helper":Latu;
    .end local v1    # "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized a(Ljava/util/List;)V
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
    .line 53
    .local p1, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    const-string/jumbo v5, "NoticeBarShowManager"

    const-string/jumbo v6, "showNotices param is empty"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 57
    :cond_1
    :try_start_1
    iget-object v5, p0, Latt;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 58
    invoke-direct {p0, p1}, Latt;->b(Ljava/util/List;)V

    .line 60
    iget-object v5, p0, Latt;->c:Ljava/util/HashMap;

    .line 61
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 62
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/iflytek/viafly/push/data/entities/MessageType;Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 64
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/iflytek/viafly/push/data/entities/MessageType;Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 65
    .local v3, "key":Lcom/iflytek/viafly/push/data/entities/MessageType;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 66
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    iget-object v5, p0, Latt;->b:Landroid/content/Context;

    invoke-static {v5, v3}, Latv;->a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latu;

    move-result-object v1

    .line 67
    .local v1, "helper":Latu;
    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {v1, v4}, Latu;->b(Ljava/util/List;)Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/iflytek/viafly/push/data/entities/MessageType;Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;>;"
    .end local v1    # "helper":Latu;
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/iflytek/viafly/push/data/entities/MessageType;Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;>;>;"
    .end local v3    # "key":Lcom/iflytek/viafly/push/data/entities/MessageType;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
