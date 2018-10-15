.class public Lati;
.super Ljava/lang/Object;
.source "NoticeDispatcher.java"


# instance fields
.field private a:Ljava/util/HashMap;
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

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "noticeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lati;->a:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lati;->b:Landroid/content/Context;

    .line 36
    invoke-static {p2}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    :cond_0
    return-void

    .line 40
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;

    .line 41
    .local v0, "item":Lcom/iflytek/viafly/blcpush/entity/NoticeItem;
    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Lcom/iflytek/viafly/blcpush/entity/NoticeItem;->getTypeId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/viafly/push/data/entities/MessageType;->valueOfValue(Ljava/lang/String;)Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v1

    .line 46
    .local v1, "key":Lcom/iflytek/viafly/push/data/entities/MessageType;
    if-eqz v1, :cond_2

    .line 49
    invoke-static {v1}, Lcom/iflytek/viafly/push/data/entities/MessageType;->isCommon(Lcom/iflytek/viafly/push/data/entities/MessageType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    sget-object v1, Lcom/iflytek/viafly/push/data/entities/MessageType;->common:Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 53
    :cond_3
    const/4 v2, 0x0

    .line 54
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    iget-object v4, p0, Lati;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 55
    iget-object v4, p0, Lati;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    check-cast v2, Ljava/util/List;

    .line 57
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    :cond_4
    if-nez v2, :cond_5

    .line 58
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 60
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    :cond_5
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v4, p0, Lati;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "errorCode"    # I

    .prologue
    .line 140
    const-string/jumbo v0, "NoticeDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dispatcherError() | errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-nez p0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_REQUEST_PUSH_FINISH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/blcpush/entity/NoticeItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 74
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    iget-object v7, p0, Lati;->a:Ljava/util/HashMap;

    .line 75
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 76
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/iflytek/viafly/push/data/entities/MessageType;Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/iflytek/viafly/push/data/entities/MessageType;Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 79
    .local v4, "key":Lcom/iflytek/viafly/push/data/entities/MessageType;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 80
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    iget-object v7, p0, Lati;->b:Landroid/content/Context;

    invoke-static {v7, v4}, Latj;->a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latg;

    move-result-object v2

    .line 81
    .local v2, "handler":Latg;
    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {v2, v5}, Latg;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 84
    .local v6, "partFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    invoke-static {v6}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 85
    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 90
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/iflytek/viafly/push/data/entities/MessageType;Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;>;"
    .end local v2    # "handler":Latg;
    .end local v4    # "key":Lcom/iflytek/viafly/push/data/entities/MessageType;
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    .end local v6    # "partFilteredList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    :cond_1
    return-object v1
.end method

.method public b()V
    .locals 8

    .prologue
    .line 113
    invoke-static {}, Lcom/iflytek/viafly/push/data/entities/MessageType;->values()[Lcom/iflytek/viafly/push/data/entities/MessageType;

    move-result-object v4

    .line 114
    .local v4, "types":[Lcom/iflytek/viafly/push/data/entities/MessageType;
    if-eqz v4, :cond_3

    array-length v5, v4

    if-lez v5, :cond_3

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v3, "typeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    array-length v6, v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v4, v5

    .line 117
    .local v2, "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    invoke-static {v2}, Lcom/iflytek/viafly/push/data/entities/MessageType;->isCommon(Lcom/iflytek/viafly/push/data/entities/MessageType;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 118
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 121
    .end local v2    # "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iflytek/viafly/push/data/entities/MessageType;

    .line 122
    .restart local v2    # "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    if-eqz v2, :cond_2

    .line 123
    iget-object v6, p0, Lati;->a:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 124
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    iget-object v6, p0, Lati;->b:Landroid/content/Context;

    invoke-static {v6, v2}, Latj;->a(Landroid/content/Context;Lcom/iflytek/viafly/push/data/entities/MessageType;)Latg;

    move-result-object v0

    .line 125
    .local v0, "handler":Latg;
    if-eqz v0, :cond_2

    .line 126
    invoke-virtual {v0, v1}, Latg;->b(Ljava/util/List;)V

    goto :goto_1

    .line 134
    .end local v0    # "handler":Latg;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/blcpush/entity/NoticeItem;>;"
    .end local v2    # "type":Lcom/iflytek/viafly/push/data/entities/MessageType;
    .end local v3    # "typeList":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/push/data/entities/MessageType;>;"
    :cond_3
    iget-object v5, p0, Lati;->b:Landroid/content/Context;

    if-eqz v5, :cond_4

    .line 135
    iget-object v5, p0, Lati;->b:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.iflytek.cmcc.ACTION_REQUEST_PUSH_FINISH"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 137
    :cond_4
    return-void
.end method
