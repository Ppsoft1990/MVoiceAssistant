.class Lbcx;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"


# instance fields
.field final a:Lbcw;

.field private b:Ljava/util/concurrent/Executor;

.field private c:Ljava/util/concurrent/Executor;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lbcw;)V
    .locals 2
    .param p1, "configuration"    # Lbcw;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbcx;->e:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lbcx;->f:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbcx;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbcx;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lbcx;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    iput-object p1, p0, Lbcx;->a:Lbcw;

    .line 59
    iget-object v0, p1, Lbcw;->h:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lbcx;->b:Ljava/util/concurrent/Executor;

    .line 60
    iget-object v0, p1, Lbcw;->i:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lbcx;->c:Ljava/util/concurrent/Executor;

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lbcx;->d:Ljava/util/concurrent/ExecutorService;

    .line 63
    return-void
.end method

.method static synthetic a(Lbcx;)V
    .locals 0
    .param p0, "x0"    # Lbcx;

    .prologue
    .line 41
    invoke-direct {p0}, Lbcx;->e()V

    return-void
.end method

.method static synthetic b(Lbcx;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lbcx;

    .prologue
    .line 41
    iget-object v0, p0, Lbcx;->c:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic c(Lbcx;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lbcx;

    .prologue
    .line 41
    iget-object v0, p0, Lbcx;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lbcx;->b:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lbcx;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lbcx;->b:Ljava/util/concurrent/Executor;

    .line 91
    :cond_0
    iget-object v0, p0, Lbcx;->c:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 92
    invoke-direct {p0}, Lbcx;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lbcx;->c:Ljava/util/concurrent/Executor;

    .line 94
    :cond_1
    return-void
.end method

.method private f()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lbcx;->a:Lbcw;

    iget v0, v0, Lbcw;->l:I

    iget-object v1, p0, Lbcx;->a:Lbcw;

    iget v1, v1, Lbcw;->m:I

    iget-object v2, p0, Lbcx;->a:Lbcw;

    iget-object v2, v2, Lbcw;->n:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lbcs;->a(IILcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 102
    iget-object v0, p0, Lbcx;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v1, p0, Lbcx;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 178
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    if-nez v0, :cond_0

    .line 179
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .end local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 180
    .restart local v0    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lbcx;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lbcx;->a:Lbcw;

    iget-boolean v0, v0, Lbcw;->j:Z

    if-nez v0, :cond_0

    .line 166
    iput-object v1, p0, Lbcx;->b:Ljava/util/concurrent/Executor;

    .line 168
    :cond_0
    iget-object v0, p0, Lbcx;->a:Lbcw;

    iget-boolean v0, v0, Lbcw;->k:Z

    if-nez v0, :cond_1

    .line 169
    iput-object v1, p0, Lbcx;->c:Ljava/util/concurrent/Executor;

    .line 172
    :cond_1
    iget-object v0, p0, Lbcx;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    iget-object v0, p0, Lbcx;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    return-void
.end method

.method a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "memoryCacheKey"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lbcx;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method a(Lbcz;)V
    .locals 2
    .param p1, "task"    # Lbcz;

    .prologue
    .line 67
    iget-object v0, p0, Lbcx;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lbcx$1;

    invoke-direct {v1, p0, p1}, Lbcx$1;-><init>(Lbcx;Lbcz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method a(Lbda;)V
    .locals 1
    .param p1, "task"    # Lbda;

    .prologue
    .line 83
    invoke-direct {p0}, Lbcx;->e()V

    .line 84
    iget-object v0, p0, Lbcx;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lbcx;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method b(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 119
    iget-object v0, p0, Lbcx;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lbcx;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lbcx;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
