.class public final Lcom/baidu/aiupdatesdk/obf/g;
.super Ljava/lang/Object;
.source "BDFileDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/aiupdatesdk/obf/g$c;,
        Lcom/baidu/aiupdatesdk/obf/g$b;,
        Lcom/baidu/aiupdatesdk/obf/g$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Lcom/baidu/aiupdatesdk/obf/g$a;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/aiupdatesdk/obf/k",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private volatile h:Z

.field private i:Lcom/baidu/aiupdatesdk/obf/g$c;

.field private j:Lcom/baidu/aiupdatesdk/obf/g$b;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->h:Z

    .line 28
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/g$b;

    invoke-direct {v0, p0}, Lcom/baidu/aiupdatesdk/obf/g$b;-><init>(Lcom/baidu/aiupdatesdk/obf/g;)V

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->j:Lcom/baidu/aiupdatesdk/obf/g$b;

    .line 31
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Thread[NdFileDownloader]"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->a:Landroid/os/HandlerThread;

    .line 32
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 33
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/g$a;

    new-instance v1, Lcom/baidu/aiupdatesdk/obf/g$1;

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/g;->a:Landroid/os/HandlerThread;

    .line 34
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/baidu/aiupdatesdk/obf/g$1;-><init>(Lcom/baidu/aiupdatesdk/obf/g;Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/baidu/aiupdatesdk/obf/g$a;-><init>(Lcom/baidu/aiupdatesdk/obf/g;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->b:Lcom/baidu/aiupdatesdk/obf/g$a;

    .line 47
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/g;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/g;->b:Lcom/baidu/aiupdatesdk/obf/g$a;

    invoke-static {v0, v1, v2}, Lcom/baidu/aiupdatesdk/obf/k;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/aiupdatesdk/obf/i;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->c:Ljava/lang/ref/WeakReference;

    .line 95
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/aiupdatesdk/obf/g$c;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "fileFullPath"    # Ljava/lang/String;
    .param p4, "fileSize"    # J
    .param p6, "listener"    # Lcom/baidu/aiupdatesdk/obf/g$c;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/g;->g:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/g;->d:Ljava/lang/String;

    .line 83
    iput-wide p4, p0, Lcom/baidu/aiupdatesdk/obf/g;->e:J

    .line 84
    iput-object p3, p0, Lcom/baidu/aiupdatesdk/obf/g;->f:Ljava/lang/String;

    .line 85
    iget-wide v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 86
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->e:J

    .line 88
    :cond_0
    iput-object p6, p0, Lcom/baidu/aiupdatesdk/obf/g;->i:Lcom/baidu/aiupdatesdk/obf/g$c;

    .line 89
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->b:Lcom/baidu/aiupdatesdk/obf/g$a;

    invoke-virtual {v0, p3}, Lcom/baidu/aiupdatesdk/obf/g$a;->a(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/g;)Z
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/g;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$a;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/g;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->b:Lcom/baidu/aiupdatesdk/obf/g$a;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 106
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/g;->c:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/aiupdatesdk/obf/k;

    .line 108
    .local v1, "simpleAsyncHttpClient":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 109
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/aiupdatesdk/obf/k;->cancel(Z)Z

    move-result v0

    .line 110
    .local v0, "canceled":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NdFileDownloader:stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_2

    const-string/jumbo v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/ab;->a(Ljava/lang/String;)V

    .line 112
    .end local v0    # "canceled":Z
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/aiupdatesdk/obf/g;->c:Ljava/lang/ref/WeakReference;

    .line 114
    .end local v1    # "simpleAsyncHttpClient":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 110
    .restart local v0    # "canceled":Z
    .restart local v1    # "simpleAsyncHttpClient":Lcom/baidu/aiupdatesdk/obf/k;, "Lcom/baidu/aiupdatesdk/obf/k<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    const-string/jumbo v2, "0"

    goto :goto_0
.end method

.method static synthetic c(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$b;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/g;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->j:Lcom/baidu/aiupdatesdk/obf/g$b;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 128
    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/g;->a:Landroid/os/HandlerThread;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->b:Lcom/baidu/aiupdatesdk/obf/g$a;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->b:Lcom/baidu/aiupdatesdk/obf/g$a;

    invoke-virtual {v0}, Lcom/baidu/aiupdatesdk/obf/g$a;->j()V

    .line 132
    iput-object v1, p0, Lcom/baidu/aiupdatesdk/obf/g;->b:Lcom/baidu/aiupdatesdk/obf/g$a;

    .line 134
    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/baidu/aiupdatesdk/obf/g;)V
    .locals 0
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/g;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/g;->b()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/aiupdatesdk/obf/g;)Lcom/baidu/aiupdatesdk/obf/g$c;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/g;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->i:Lcom/baidu/aiupdatesdk/obf/g$c;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/aiupdatesdk/obf/g;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/g;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .param p1, "interruput"    # Z

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->h:Z

    .line 121
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/g;->b()V

    .line 122
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/g;->c()V

    .line 123
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Lcom/baidu/aiupdatesdk/obf/g$c;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileFullPath"    # Ljava/lang/String;
    .param p3, "fileSize"    # J
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/baidu/aiupdatesdk/obf/g$c;

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/g;->a:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/g;->c:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p6

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/baidu/aiupdatesdk/obf/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLcom/baidu/aiupdatesdk/obf/g$c;)V

    .line 73
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->i:Lcom/baidu/aiupdatesdk/obf/g$c;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/g;->i:Lcom/baidu/aiupdatesdk/obf/g$c;

    invoke-interface {v0}, Lcom/baidu/aiupdatesdk/obf/g$c;->a()V

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/baidu/aiupdatesdk/obf/g;->a()V

    .line 77
    const/4 v0, 0x1

    goto :goto_0
.end method
