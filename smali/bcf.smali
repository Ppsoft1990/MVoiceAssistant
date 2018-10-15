.class public abstract Lbcf;
.super Lbcd;
.source "LimitedDiscCache.java"


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:I

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Lbcj;I)V
    .locals 1
    .param p1, "cacheDir"    # Ljava/io/File;
    .param p2, "fileNameGenerator"    # Lbcj;
    .param p3, "sizeLimit"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lbcd;-><init>(Ljava/io/File;Lbcj;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbcf;->d:Ljava/util/Map;

    .line 65
    iput p3, p0, Lbcf;->c:I

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbcf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    invoke-direct {p0}, Lbcf;->a()V

    .line 68
    return-void
.end method

.method static synthetic a(Lbcf;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lbcf;

    .prologue
    .line 38
    iget-object v0, p0, Lbcf;->d:Ljava/util/Map;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbcf$1;

    invoke-direct {v1, p0}, Lbcf$1;-><init>(Lbcf;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 85
    return-void
.end method

.method private b()I
    .locals 16

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v9, v0, Lbcf;->d:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 124
    const/4 v4, 0x0

    .line 149
    :cond_0
    :goto_0
    return v4

    .line 127
    :cond_1
    const/4 v8, 0x0

    .line 128
    .local v8, "oldestUsage":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 129
    .local v7, "mostLongUsedFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lbcf;->d:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 130
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lbcf;->d:Ljava/util/Map;

    monitor-enter v10

    .line 131
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 132
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v7, :cond_3

    .line 133
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    .line 134
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v8, v0

    goto :goto_1

    .line 136
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 137
    .local v6, "lastValueUsage":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-gez v9, :cond_2

    .line 138
    move-object v8, v6

    .line 139
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    goto :goto_1

    .line 143
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v6    # "lastValueUsage":Ljava/lang/Long;
    :cond_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lbcf;->a(Ljava/io/File;)I

    move-result v4

    .line 146
    .local v4, "fileSize":I
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v9, v0, Lbcf;->d:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    .end local v4    # "fileSize":I
    .end local v5    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method static synthetic b(Lbcf;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lbcf;

    .prologue
    .line 38
    iget-object v0, p0, Lbcf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/io/File;)I
.end method

.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lbcd;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 107
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 108
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 109
    iget-object v2, p0, Lbcf;->d:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-object v1
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 89
    invoke-virtual {p0, p2}, Lbcf;->a(Ljava/io/File;)I

    move-result v3

    .line 90
    .local v3, "valueSize":I
    iget-object v4, p0, Lbcf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 91
    .local v0, "curCacheSize":I
    :goto_0
    add-int v4, v0, v3

    iget v5, p0, Lbcf;->c:I

    if-le v4, v5, :cond_0

    .line 92
    invoke-direct {p0}, Lbcf;->b()I

    move-result v2

    .line 93
    .local v2, "freedSize":I
    if-nez v2, :cond_1

    .line 96
    .end local v2    # "freedSize":I
    :cond_0
    iget-object v4, p0, Lbcf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 99
    .local v1, "currentTime":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 100
    iget-object v4, p0, Lbcf;->d:Ljava/util/Map;

    invoke-interface {v4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void

    .line 94
    .end local v1    # "currentTime":Ljava/lang/Long;
    .restart local v2    # "freedSize":I
    :cond_1
    iget-object v4, p0, Lbcf;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v5, v2

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 95
    goto :goto_0
.end method
