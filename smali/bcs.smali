.class public Lbcs;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbcs$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lbce;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 87
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "uil-images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v1, "individualDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    :cond_0
    move-object v0, v1

    .line 91
    :cond_1
    new-instance v2, Lbch;

    const/high16 v3, 0x200000

    invoke-direct {v2, v0, v3}, Lbch;-><init>(Ljava/io/File;I)V

    return-object v2
.end method

.method public static a(Landroid/content/Context;Lbcj;II)Lbce;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "discCacheFileNameGenerator"    # Lbcj;
    .param p2, "discCacheSize"    # I
    .param p3, "discCacheFileCount"    # I

    .prologue
    .line 72
    if-lez p2, :cond_0

    .line 73
    invoke-static {p0}, Lbdx;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 74
    .local v1, "individualCacheDir":Ljava/io/File;
    new-instance v2, Lbch;

    invoke-direct {v2, v1, p1, p2}, Lbch;-><init>(Ljava/io/File;Lbcj;I)V

    .line 80
    .end local v1    # "individualCacheDir":Ljava/io/File;
    :goto_0
    return-object v2

    .line 75
    :cond_0
    if-lez p3, :cond_1

    .line 76
    invoke-static {p0}, Lbdx;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 77
    .restart local v1    # "individualCacheDir":Ljava/io/File;
    new-instance v2, Lbcg;

    invoke-direct {v2, v1, p1, p3}, Lbcg;-><init>(Ljava/io/File;Lbcj;I)V

    goto :goto_0

    .line 79
    .end local v1    # "individualCacheDir":Ljava/io/File;
    :cond_1
    invoke-static {p0}, Lbdx;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 80
    .local v0, "cacheDir":Ljava/io/File;
    new-instance v2, Lbci;

    invoke-direct {v2, v0, p1}, Lbci;-><init>(Ljava/io/File;Lbcj;)V

    goto :goto_0
.end method

.method public static a()Lbcj;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lbck;

    invoke-direct {v0}, Lbck;-><init>()V

    return-object v0
.end method

.method public static a(I)Lbcn;
    .locals 6
    .param p0, "memoryCacheSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lbcn",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    long-to-int p0, v2

    .line 104
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    .line 105
    new-instance v0, Lbcq;

    invoke-direct {v0, p0}, Lbcq;-><init>(I)V

    .line 109
    .local v0, "memoryCache":Lbcn;, "Lbcn<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :goto_0
    return-object v0

    .line 107
    .end local v0    # "memoryCache":Lbcn;, "Lbcn<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :cond_1
    new-instance v0, Lbcp;

    invoke-direct {v0, p0}, Lbcp;-><init>(I)V

    .restart local v0    # "memoryCache":Lbcn;, "Lbcn<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    goto :goto_0
.end method

.method public static a(Z)Lbdk;
    .locals 1
    .param p0, "loggingEnabled"    # Z

    .prologue
    .line 119
    new-instance v0, Lbdj;

    invoke-direct {v0, p0}, Lbdj;-><init>(Z)V

    return-object v0
.end method

.method public static a(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
    .locals 9
    .param p0, "threadPoolSize"    # I
    .param p1, "threadPriority"    # I
    .param p2, "tasksProcessingType"    # Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .prologue
    .line 60
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 61
    .local v0, "lifo":Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v7, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {v7}, Lcom/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    :goto_1
    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    .line 62
    .local v7, "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1}, Lbcs;->b(I)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, p0

    move v3, p0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    .line 60
    .end local v0    # "lifo":Z
    .end local v7    # "taskQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    .restart local v0    # "lifo":Z
    :cond_1
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_1
.end method

.method public static b()Lbdm;
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lbdp;

    invoke-direct {v0}, Lbdp;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    new-instance v0, Lbdq;

    invoke-direct {v0, p0}, Lbdq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static b(I)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .param p0, "threadPriority"    # I

    .prologue
    .line 129
    new-instance v0, Lbcs$a;

    invoke-direct {v0, p0}, Lbcs$a;-><init>(I)V

    return-object v0
.end method
