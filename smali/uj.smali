.class public Luj;
.super Ljava/lang/Object;
.source "AppInstallControllerOberserver.java"


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lui$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Luj;->b:Ljava/lang/Object;

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v1, p0, Luj;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_0
    monitor-exit v1

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 4
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 97
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 98
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lui$a;

    .line 103
    .local v2, "listener":Lui$a;
    if-eqz v2, :cond_0

    .line 104
    invoke-interface {v2, p1, p2}, Lui$a;->onDownloadFail(Ljava/lang/String;I)V

    goto :goto_0

    .line 108
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    .end local v2    # "listener":Lui$a;
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "appUrl"    # Ljava/lang/String;
    .param p2, "receivedBytes"    # J
    .param p4, "totalBytes"    # J

    .prologue
    .line 69
    iget-object v1, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 70
    iget-object v1, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 72
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 74
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui$a;

    .line 75
    .local v0, "listener":Lui$a;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 76
    invoke-interface/range {v0 .. v5}, Lui$a;->onDownloadProgress(Ljava/lang/String;JJ)V

    goto :goto_0

    .line 80
    .end local v0    # "listener":Lui$a;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    .end local v7    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Lui$a;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "appInstallEventListener"    # Lui$a;

    .prologue
    .line 25
    iget-object v1, p0, Luj;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 26
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 27
    :try_start_0
    iget-object v0, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    monitor-exit v1

    .line 30
    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 42
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 44
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lui$a;

    .line 47
    .local v2, "listener":Lui$a;
    if-eqz v2, :cond_0

    .line 48
    invoke-interface {v2, p1}, Lui$a;->onInstallSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    .end local v2    # "listener":Lui$a;
    :cond_1
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 4
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 56
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 60
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lui$a;

    .line 61
    .local v2, "listener":Lui$a;
    if-eqz v2, :cond_0

    .line 62
    invoke-interface {v2, p1}, Lui$a;->onDownloadStart(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    .end local v2    # "listener":Lui$a;
    :cond_1
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 4
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 84
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 88
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lui$a;

    .line 89
    .local v2, "listener":Lui$a;
    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2, p1}, Lui$a;->onDownloadSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    .end local v2    # "listener":Lui$a;
    :cond_1
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 4
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 112
    iget-object v3, p0, Luj;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 113
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 116
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lui$a;

    .line 117
    .local v2, "listener":Lui$a;
    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v2, p1}, Lui$a;->onDownloadCanceled(Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lui$a;>;>;"
    .end local v2    # "listener":Lui$a;
    :cond_1
    return-void
.end method
