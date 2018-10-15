.class public final Lcom/migu/uem/a/c;
.super Ljava/lang/Object;


# static fields
.field private static f:Lcom/migu/uem/a/c;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Lcom/migu/uem/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/uem/a/c;->f:Lcom/migu/uem/a/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/migu/uem/a/c;->a:I

    iput v1, p0, Lcom/migu/uem/a/c;->b:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/migu/uem/a/c;->c:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/a/d;

    invoke-direct {v1, p0, v0}, Lcom/migu/uem/a/d;-><init>(Lcom/migu/uem/a/c;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/migu/uem/a/c;->g:Lcom/migu/uem/a/d;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/migu/uem/a/c;
    .locals 2

    sget-object v0, Lcom/migu/uem/a/c;->f:Lcom/migu/uem/a/c;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/a/c;->f:Lcom/migu/uem/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/a/c;

    invoke-direct {v0, p0}, Lcom/migu/uem/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/migu/uem/a/c;->f:Lcom/migu/uem/a/c;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/a/c;->f:Lcom/migu/uem/a/c;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/migu/uem/a/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/migu/uem/a/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/migu/uem/a/c;)I
    .locals 1

    iget v0, p0, Lcom/migu/uem/a/c;->a:I

    return v0
.end method

.method static synthetic d(Lcom/migu/uem/a/c;)Lcom/migu/uem/a/d;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/c;->g:Lcom/migu/uem/a/d;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/migu/uem/a/c;->g:Lcom/migu/uem/a/d;

    invoke-virtual {v0, v4}, Lcom/migu/uem/a/d;->removeMessages(I)V

    iget-object v0, p0, Lcom/migu/uem/a/c;->g:Lcom/migu/uem/a/d;

    invoke-virtual {v0, v5}, Lcom/migu/uem/a/d;->removeMessages(I)V

    iget-object v0, p0, Lcom/migu/uem/a/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "data_event_millis"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/migu/uem/a/c;->a:I

    iget-object v0, p0, Lcom/migu/uem/a/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "data_page_millis"

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/migu/uem/a/c;->b:I

    iget-object v0, p0, Lcom/migu/uem/a/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "data_upload_event"

    invoke-virtual {v0, v1, v4}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/migu/uem/a/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v1

    const-string/jumbo v2, "data_upload_pageinfo"

    invoke-virtual {v1, v2, v4}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/migu/uem/a/c;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "data_upload_control"

    invoke-virtual {v2, v3, v4}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v2

    if-ne v4, v2, :cond_1

    iget v2, p0, Lcom/migu/uem/a/c;->a:I

    if-lez v2, :cond_0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/c;->g:Lcom/migu/uem/a/d;

    iget v2, p0, Lcom/migu/uem/a/c;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v4, v2, v3}, Lcom/migu/uem/a/d;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    iget v0, p0, Lcom/migu/uem/a/c;->b:I

    if-lez v0, :cond_1

    if-ne v1, v4, :cond_1

    iget-object v0, p0, Lcom/migu/uem/a/c;->g:Lcom/migu/uem/a/d;

    iget v1, p0, Lcom/migu/uem/a/c;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v5, v2, v3}, Lcom/migu/uem/a/d;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/migu/uem/a/c;)I
    .locals 1

    iget v0, p0, Lcom/migu/uem/a/c;->b:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/migu/uem/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    iget-object v0, p0, Lcom/migu/uem/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\u542f\u52a8\u5b9a\u65f6\u68c0\u67e5\u4e0a\u4f20\u4efb\u52a1"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/migu/uem/a/c;->d()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/migu/uem/a/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "\u4eae\u5c4f\u542f\u52a8\u5b9a\u65f6\u68c0\u67e5\u4e0a\u4f20\u4efb\u52a1"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    invoke-direct {p0}, Lcom/migu/uem/a/c;->d()V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "\u606f\u5c4f,\u53d6\u6d88\u5b9a\u65f6\u68c0\u67e5\u4e0a\u4f20\u4efb\u52a1"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/migu/uem/a/c;->g:Lcom/migu/uem/a/d;

    invoke-virtual {v0, v2}, Lcom/migu/uem/a/d;->removeMessages(I)V

    iget-object v0, p0, Lcom/migu/uem/a/c;->g:Lcom/migu/uem/a/d;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/migu/uem/a/d;->removeMessages(I)V

    iget-object v0, p0, Lcom/migu/uem/a/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method
