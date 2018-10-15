.class public Laih;
.super Ljava/lang/Object;
.source "HomeResultCallbackHandler.java"

# interfaces
.implements Lail;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Laik;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 71
    const-string/jumbo v2, "HomeResultCallbackHandler"

    const-string/jumbo v3, "handleDownOverTime"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v2, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 75
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    .local v1, "tmpCard":Ljava/lang/String;
    iget-object v2, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 80
    iget-object v2, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v2, "HomeResultCallbackHandler"

    const-string/jumbo v3, "handleOverTime requests in list has not all callback "

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v1    # "tmpCard":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Laih;->b()V

    .line 87
    return-void
.end method

.method public declared-synchronized a(ILjava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x3e8

    .line 33
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "HomeResultCallbackHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestCallback errorCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v1, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_0

    .line 65
    :goto_0
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_1
    iget-object v1, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    iget-object v1, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 43
    iget-object v1, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    .local v0, "state":I
    if-ne v0, v4, :cond_1

    .line 59
    const-string/jumbo v1, "HomeResultCallbackHandler"

    const-string/jumbo v2, "requestCallback requests in list has not all callback "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v0    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 45
    :cond_2
    :try_start_2
    const-string/jumbo v1, "HomeResultCallbackHandler"

    const-string/jumbo v2, "requestCallback current type has handle "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_3
    const-string/jumbo v1, "HomeResultCallbackHandler"

    const-string/jumbo v2, "requestCallback current type is not in list "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p0}, Laih;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public a(Laik;)V
    .locals 0
    .param p1, "resultHandleListener"    # Laik;

    .prologue
    .line 28
    iput-object p1, p0, Laih;->b:Laik;

    .line 29
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v0, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    .prologue
    .line 93
    const-string/jumbo v5, "HomeResultCallbackHandler"

    const-string/jumbo v6, "handleResult"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, "sucCount":I
    const/4 v0, 0x0

    .line 100
    .local v0, "failCount":I
    const/4 v1, 0x0

    .line 102
    .local v1, "noNeedCount":I
    iget-object v5, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 104
    .local v2, "state":I
    const/16 v5, 0x3eb

    if-ne v2, v5, :cond_1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_1
    const/16 v5, 0x3e9

    if-ne v2, v5, :cond_2

    .line 107
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    :cond_2
    const/16 v5, 0x3ea

    if-ne v2, v5, :cond_0

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    .end local v2    # "state":I
    :cond_3
    iget-object v5, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    sub-int v4, v5, v1

    .line 115
    .local v4, "totalSize":I
    if-ne v0, v4, :cond_5

    .line 116
    iget-object v5, p0, Laih;->b:Laik;

    if-eqz v5, :cond_4

    .line 117
    iget-object v5, p0, Laih;->b:Laik;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Laik;->a(I)V

    .line 118
    const-string/jumbo v5, "HomeResultCallbackHandler"

    const-string/jumbo v6, "requestCallback fail, notify fail "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_4
    :goto_1
    invoke-virtual {p0}, Laih;->c()V

    .line 128
    return-void

    .line 121
    :cond_5
    iget-object v5, p0, Laih;->b:Laik;

    if-eqz v5, :cond_4

    .line 122
    const-string/jumbo v5, "HomeResultCallbackHandler"

    const-string/jumbo v6, "requestCallback success "

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v5, p0, Laih;->b:Laik;

    invoke-interface {v5}, Laik;->a()V

    goto :goto_1
.end method

.method public c()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Laih;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 138
    return-void
.end method
