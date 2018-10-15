.class public Lbcw$a;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbcw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/graphics/Bitmap$CompressFormat;

.field private h:I

.field private i:Ljava/util/concurrent/Executor;

.field private j:Ljava/util/concurrent/Executor;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field private q:I

.field private r:I

.field private s:I

.field private t:Lbcn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbcn",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lbce;

.field private v:Lbcj;

.field private w:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private x:Lbdk;

.field private y:Lbcu;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sput-object v0, Lbcw$a;->a:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput v1, p0, Lbcw$a;->c:I

    .line 157
    iput v1, p0, Lbcw$a;->d:I

    .line 158
    iput v1, p0, Lbcw$a;->e:I

    .line 159
    iput v1, p0, Lbcw$a;->f:I

    .line 160
    iput-object v2, p0, Lbcw$a;->g:Landroid/graphics/Bitmap$CompressFormat;

    .line 161
    iput v1, p0, Lbcw$a;->h:I

    .line 163
    iput-object v2, p0, Lbcw$a;->i:Ljava/util/concurrent/Executor;

    .line 164
    iput-object v2, p0, Lbcw$a;->j:Ljava/util/concurrent/Executor;

    .line 165
    iput-boolean v1, p0, Lbcw$a;->k:Z

    .line 166
    iput-boolean v1, p0, Lbcw$a;->l:Z

    .line 168
    const/4 v0, 0x3

    iput v0, p0, Lbcw$a;->m:I

    .line 169
    const/4 v0, 0x4

    iput v0, p0, Lbcw$a;->n:I

    .line 170
    iput-boolean v1, p0, Lbcw$a;->o:Z

    .line 171
    sget-object v0, Lbcw$a;->a:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput-object v0, p0, Lbcw$a;->p:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 173
    iput v1, p0, Lbcw$a;->q:I

    .line 174
    iput v1, p0, Lbcw$a;->r:I

    .line 175
    iput v1, p0, Lbcw$a;->s:I

    .line 177
    iput-object v2, p0, Lbcw$a;->t:Lbcn;

    .line 178
    iput-object v2, p0, Lbcw$a;->u:Lbce;

    .line 179
    iput-object v2, p0, Lbcw$a;->v:Lbcj;

    .line 180
    iput-object v2, p0, Lbcw$a;->w:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 182
    iput-object v2, p0, Lbcw$a;->y:Lbcu;

    .line 184
    iput-boolean v1, p0, Lbcw$a;->z:Z

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->b:Landroid/content/Context;

    .line 188
    return-void
.end method

.method static synthetic a(Lbcw$a;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbcw$a;)I
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget v0, p0, Lbcw$a;->c:I

    return v0
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 497
    iget-object v0, p0, Lbcw$a;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    .line 498
    iget v0, p0, Lbcw$a;->m:I

    iget v1, p0, Lbcw$a;->n:I

    iget-object v2, p0, Lbcw$a;->p:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lbcs;->a(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->i:Ljava/util/concurrent/Executor;

    .line 502
    :goto_0
    iget-object v0, p0, Lbcw$a;->j:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    .line 503
    iget v0, p0, Lbcw$a;->m:I

    iget v1, p0, Lbcw$a;->n:I

    iget-object v2, p0, Lbcw$a;->p:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lbcs;->a(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->j:Ljava/util/concurrent/Executor;

    .line 507
    :goto_1
    iget-object v0, p0, Lbcw$a;->u:Lbce;

    if-nez v0, :cond_1

    .line 508
    iget-object v0, p0, Lbcw$a;->v:Lbcj;

    if-nez v0, :cond_0

    .line 509
    invoke-static {}, Lbcs;->a()Lbcj;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->v:Lbcj;

    .line 511
    :cond_0
    iget-object v0, p0, Lbcw$a;->b:Landroid/content/Context;

    iget-object v1, p0, Lbcw$a;->v:Lbcj;

    iget v2, p0, Lbcw$a;->r:I

    iget v3, p0, Lbcw$a;->s:I

    invoke-static {v0, v1, v2, v3}, Lbcs;->a(Landroid/content/Context;Lbcj;II)Lbce;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->u:Lbce;

    .line 513
    :cond_1
    iget-object v0, p0, Lbcw$a;->t:Lbcn;

    if-nez v0, :cond_2

    .line 514
    iget v0, p0, Lbcw$a;->q:I

    invoke-static {v0}, Lbcs;->a(I)Lbcn;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->t:Lbcn;

    .line 516
    :cond_2
    iget-boolean v0, p0, Lbcw$a;->o:Z

    if-eqz v0, :cond_3

    .line 517
    new-instance v0, Lbco;

    iget-object v1, p0, Lbcw$a;->t:Lbcn;

    invoke-static {}, Lbdf;->a()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lbco;-><init>(Lbcn;Ljava/util/Comparator;)V

    iput-object v0, p0, Lbcw$a;->t:Lbcn;

    .line 519
    :cond_3
    iget-object v0, p0, Lbcw$a;->w:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    if-nez v0, :cond_4

    .line 520
    iget-object v0, p0, Lbcw$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lbcs;->b(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->w:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 522
    :cond_4
    iget-object v0, p0, Lbcw$a;->x:Lbdk;

    if-nez v0, :cond_5

    .line 523
    iget-boolean v0, p0, Lbcw$a;->z:Z

    invoke-static {v0}, Lbcs;->a(Z)Lbdk;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->x:Lbdk;

    .line 525
    :cond_5
    iget-object v0, p0, Lbcw$a;->y:Lbcu;

    if-nez v0, :cond_6

    .line 526
    invoke-static {}, Lbcu;->u()Lbcu;

    move-result-object v0

    iput-object v0, p0, Lbcw$a;->y:Lbcu;

    .line 528
    :cond_6
    return-void

    .line 500
    :cond_7
    iput-boolean v3, p0, Lbcw$a;->k:Z

    goto :goto_0

    .line 505
    :cond_8
    iput-boolean v3, p0, Lbcw$a;->l:Z

    goto :goto_1
.end method

.method static synthetic c(Lbcw$a;)I
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget v0, p0, Lbcw$a;->d:I

    return v0
.end method

.method static synthetic d(Lbcw$a;)I
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget v0, p0, Lbcw$a;->e:I

    return v0
.end method

.method static synthetic e(Lbcw$a;)I
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget v0, p0, Lbcw$a;->f:I

    return v0
.end method

.method static synthetic f(Lbcw$a;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->g:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic g(Lbcw$a;)I
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget v0, p0, Lbcw$a;->h:I

    return v0
.end method

.method static synthetic h(Lbcw$a;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->i:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic i(Lbcw$a;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->j:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic j(Lbcw$a;)I
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget v0, p0, Lbcw$a;->m:I

    return v0
.end method

.method static synthetic k(Lbcw$a;)I
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget v0, p0, Lbcw$a;->n:I

    return v0
.end method

.method static synthetic l(Lbcw$a;)Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->p:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method static synthetic m(Lbcw$a;)Lbce;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->u:Lbce;

    return-object v0
.end method

.method static synthetic n(Lbcw$a;)Lbcn;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->t:Lbcn;

    return-object v0
.end method

.method static synthetic o(Lbcw$a;)Lbcu;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->y:Lbcu;

    return-object v0
.end method

.method static synthetic p(Lbcw$a;)Z
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-boolean v0, p0, Lbcw$a;->z:Z

    return v0
.end method

.method static synthetic q(Lbcw$a;)Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->w:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method static synthetic r(Lbcw$a;)Lbdk;
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-object v0, p0, Lbcw$a;->x:Lbdk;

    return-object v0
.end method

.method static synthetic s(Lbcw$a;)Z
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-boolean v0, p0, Lbcw$a;->k:Z

    return v0
.end method

.method static synthetic t(Lbcw$a;)Z
    .locals 1
    .param p0, "x0"    # Lbcw$a;

    .prologue
    .line 139
    iget-boolean v0, p0, Lbcw$a;->l:Z

    return v0
.end method


# virtual methods
.method public a(I)Lbcw$a;
    .locals 2
    .param p1, "threadPoolSize"    # I

    .prologue
    .line 277
    iget-object v0, p0, Lbcw$a;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcw$a;->j:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    :cond_1
    iput p1, p0, Lbcw$a;->m:I

    .line 282
    return-object p0
.end method

.method public a(II)Lbcw$a;
    .locals 0
    .param p1, "maxImageWidthForMemoryCache"    # I
    .param p2, "maxImageHeightForMemoryCache"    # I

    .prologue
    .line 199
    iput p1, p0, Lbcw$a;->c:I

    .line 200
    iput p2, p0, Lbcw$a;->d:I

    .line 201
    return-object p0
.end method

.method public a(Lbcn;)Lbcw$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbcn",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lbcw$a;"
        }
    .end annotation

    .prologue
    .line 363
    .local p1, "memoryCache":Lbcn;, "Lbcn<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget v0, p0, Lbcw$a;->q:I

    if-eqz v0, :cond_0

    .line 364
    const-string/jumbo v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    :cond_0
    iput-object p1, p0, Lbcw$a;->t:Lbcn;

    .line 368
    return-object p0
.end method

.method public a(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lbcw$a;
    .locals 2
    .param p1, "tasksProcessingType"    # Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .prologue
    .line 325
    iget-object v0, p0, Lbcw$a;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcw$a;->j:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :cond_1
    iput-object p1, p0, Lbcw$a;->p:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 330
    return-object p0
.end method

.method public a()Lbcw;
    .locals 2

    .prologue
    .line 492
    invoke-direct {p0}, Lbcw$a;->b()V

    .line 493
    new-instance v0, Lbcw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbcw;-><init>(Lbcw$a;Lbcw$1;)V

    return-object v0
.end method

.method public b(I)Lbcw$a;
    .locals 3
    .param p1, "threadPriority"    # I

    .prologue
    const/4 v2, 0x1

    .line 291
    iget-object v0, p0, Lbcw$a;->i:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcw$a;->j:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    const-string/jumbo v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    :cond_1
    if-ge p1, v2, :cond_2

    .line 296
    iput v2, p0, Lbcw$a;->n:I

    .line 304
    :goto_0
    return-object p0

    .line 298
    :cond_2
    const/16 v0, 0xa

    if-le p1, v0, :cond_3

    .line 299
    const/16 p1, 0xa

    goto :goto_0

    .line 301
    :cond_3
    iput p1, p0, Lbcw$a;->n:I

    goto :goto_0
.end method

.method public c(I)Lbcw$a;
    .locals 2
    .param p1, "memoryCacheSize"    # I

    .prologue
    .line 342
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "memoryCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    iget-object v0, p0, Lbcw$a;->t:Lbcn;

    if-eqz v0, :cond_1

    .line 345
    const-string/jumbo v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    :cond_1
    iput p1, p0, Lbcw$a;->q:I

    .line 349
    return-object p0
.end method

.method public d(I)Lbcw$a;
    .locals 2
    .param p1, "maxCacheSize"    # I

    .prologue
    .line 380
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_0
    iget-object v0, p0, Lbcw$a;->u:Lbce;

    if-nez v0, :cond_1

    iget v0, p0, Lbcw$a;->s:I

    if-lez v0, :cond_2

    .line 383
    :cond_1
    const-string/jumbo v0, "discCache(), discCacheSize() and discCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lbdw;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    :cond_2
    iput p1, p0, Lbcw$a;->r:I

    .line 387
    return-object p0
.end method
