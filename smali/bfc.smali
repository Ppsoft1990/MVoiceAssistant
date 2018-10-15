.class public Lbfc;
.super Ljava/lang/Object;


# static fields
.field private static j:Lbfc;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field private d:Z

.field private e:Lbff;

.field private f:Lbfd;

.field private g:Lbfb;

.field private h:Lbez;

.field private final i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/Runnable;

.field private n:Landroid/os/Handler;

.field private o:Z

.field private p:Ljava/util/Random;

.field private q:Lbfe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbfc;

    invoke-direct {v0}, Lbfc;-><init>()V

    sput-object v0, Lbfc;->j:Lbfc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbfc;->i:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lbfc;->p:Ljava/util/Random;

    return-void
.end method

.method static synthetic a(Lbfc;)Lbfd;
    .locals 1

    iget-object v0, p0, Lbfc;->f:Lbfd;

    return-object v0
.end method

.method static synthetic a(Lbfc;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lbfc;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lbfc;Lbfe;)V
    .locals 0

    invoke-direct {p0, p1}, Lbfc;->a(Lbfe;)V

    return-void
.end method

.method static synthetic a(Lbfc;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lbfc;->a(Z)V

    return-void
.end method

.method private a(Lbfe;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbfc;->q:Lbfe;

    invoke-direct {p0}, Lbfc;->j()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lbfc;->i:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lbfc;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lbfc;->h:Lbez;

    new-instance v1, Lbfc$6;

    invoke-direct {v1, p0}, Lbfc$6;-><init>(Lbfc;)V

    invoke-virtual {v0, v1}, Lbez;->b(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbfc;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lber;->b(Ljava/io/File;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbef;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lbfc;->p:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-string/jumbo v1, "%s.%d.%03d.%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "RSA"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const/4 v0, 0x3

    const-string/jumbo v2, "dat"

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbfc;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lber;->a(Ljava/io/File;[B)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lbfc;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lbfc;->q:Lbfe;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lbfc;->i:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbfc;->i:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lbfc;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    if-eqz p1, :cond_0

    :cond_3
    new-instance v1, Lbfe;

    invoke-direct {v1}, Lbfe;-><init>()V

    iput-object v1, p0, Lbfc;->q:Lbfe;

    iget-object v1, p0, Lbfc;->q:Lbfe;

    iget-object v2, p0, Lbfc;->a:Ljava/lang/String;

    iput-object v2, v1, Lbfe;->a:Ljava/lang/String;

    iget-object v1, p0, Lbfc;->q:Lbfe;

    iget-object v2, p0, Lbfc;->b:Ljava/lang/String;

    iput-object v2, v1, Lbfe;->b:Ljava/lang/String;

    iget-object v1, p0, Lbfc;->q:Lbfe;

    iget-boolean v2, p0, Lbfc;->c:Z

    iput-boolean v2, v1, Lbfe;->c:Z

    iget-object v1, p0, Lbfc;->q:Lbfe;

    iput-object v0, v1, Lbfe;->h:Ljava/lang/String;

    iget-object v0, p0, Lbfc;->q:Lbfe;

    new-instance v1, Lbfc$7;

    invoke-direct {v1, p0}, Lbfc$7;-><init>(Lbfc;)V

    invoke-virtual {v0, v1}, Lbfe;->a(Lbeo;)V

    iget-object v0, p0, Lbfc;->q:Lbfe;

    invoke-virtual {v0}, Lbfe;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lbfc;)Lbff;
    .locals 1

    iget-object v0, p0, Lbfc;->e:Lbff;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lbfc;->c(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbfc;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/session.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbff;

    invoke-direct {v2, v0, v1}, Lbff;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lbfc;->e:Lbff;

    iget-object v1, p0, Lbfc;->e:Lbff;

    invoke-virtual {v1}, Lbff;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbfc;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/pages.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbfd;

    invoke-direct {v2, v0, v1}, Lbfd;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lbfc;->f:Lbfd;

    iget-object v1, p0, Lbfc;->f:Lbfd;

    invoke-virtual {v1}, Lbfd;->a()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbfc;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/events.dat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lbfb;

    invoke-direct {v2, v0, v1}, Lbfb;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v2, p0, Lbfc;->g:Lbfb;

    iget-object v0, p0, Lbfc;->g:Lbfb;

    invoke-virtual {v0}, Lbfb;->a()V

    invoke-direct {p0}, Lbfc;->i()V

    return-void
.end method

.method static synthetic c(Lbfc;)Lbfb;
    .locals 1

    iget-object v0, p0, Lbfc;->g:Lbfb;

    return-object v0
.end method

.method private c()Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lbfc;->e:Lbff;

    invoke-virtual {v1}, Lbff;->j()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lbfc;->e:Lbff;

    invoke-virtual {v1}, Lbff;->i()V

    iget-object v1, p0, Lbfc;->e:Lbff;

    invoke-virtual {v1}, Lbff;->b()V

    :cond_0
    iget-object v1, p0, Lbfc;->f:Lbfd;

    invoke-virtual {v1}, Lbfd;->j()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lbfc;->f:Lbfd;

    invoke-virtual {v1}, Lbfd;->i()V

    iget-object v1, p0, Lbfc;->f:Lbfd;

    invoke-virtual {v1}, Lbfd;->b()V

    :cond_1
    iget-object v1, p0, Lbfc;->g:Lbfb;

    invoke-virtual {v1}, Lbfb;->j()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lbfc;->g:Lbfb;

    invoke-virtual {v1}, Lbfb;->i()V

    iget-object v1, p0, Lbfc;->g:Lbfb;

    invoke-virtual {v1}, Lbfb;->b()V

    :cond_2
    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "RSAnalyticsSDK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfc;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lbfc;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "work"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfc;->l:Ljava/lang/String;

    return-void
.end method

.method private d()V
    .locals 2

    invoke-direct {p0}, Lbfc;->c()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lbfc;->a(Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lbfc;)V
    .locals 0

    invoke-direct {p0}, Lbfc;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lbfc;->g:Lbfb;

    invoke-virtual {v1}, Lbfb;->j()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v1, p0, Lbfc;->g:Lbfb;

    invoke-virtual {v1}, Lbfb;->i()V

    iget-object v1, p0, Lbfc;->g:Lbfb;

    invoke-virtual {v1}, Lbfb;->b()V

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lbfc;->a(Lorg/json/JSONArray;)V

    :cond_1
    return-void
.end method

.method static synthetic e(Lbfc;)V
    .locals 0

    invoke-direct {p0}, Lbfc;->d()V

    return-void
.end method

.method private f()V
    .locals 4

    iget-boolean v0, p0, Lbfc;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbfc;->n:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lbfc;->n:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lbfc;->m:Ljava/lang/Runnable;

    if-nez v0, :cond_2

    new-instance v0, Lbfc$3;

    invoke-direct {v0, p0}, Lbfc$3;-><init>(Lbfc;)V

    iput-object v0, p0, Lbfc;->m:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, Lbfc;->n:Landroid/os/Handler;

    iget-object v1, p0, Lbfc;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfc;->o:Z

    goto :goto_0
.end method

.method static synthetic f(Lbfc;)V
    .locals 0

    invoke-direct {p0}, Lbfc;->h()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lbfc;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfc;->n:Landroid/os/Handler;

    iget-object v1, p0, Lbfc;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbfc;->m:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbfc;->o:Z

    return-void
.end method

.method static synthetic g(Lbfc;)V
    .locals 0

    invoke-direct {p0}, Lbfc;->j()V

    return-void
.end method

.method private h()V
    .locals 4

    iget-boolean v0, p0, Lbfc;->o:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbfc;->h:Lbez;

    new-instance v1, Lbfc$4;

    invoke-direct {v1, p0}, Lbfc$4;-><init>(Lbfc;)V

    invoke-virtual {v0, v1}, Lbez;->a(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbfc;->m:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfc;->n:Landroid/os/Handler;

    iget-object v1, p0, Lbfc;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private i()V
    .locals 7

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbfc;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    const-string/jumbo v5, "RSA"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "dat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lbfc;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-boolean v0, p0, Lbfc;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfc;->h:Lbez;

    new-instance v1, Lbfc$5;

    invoke-direct {v1, p0}, Lbfc$5;-><init>(Lbfc;)V

    invoke-virtual {v0, v1}, Lbez;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v2}, Lbfc;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbfc;->a(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lbfc;->h:Lbez;

    new-instance v1, Lbfc$9;

    invoke-direct {v1, p0}, Lbfc$9;-><init>(Lbfc;)V

    invoke-virtual {v0, v1}, Lbez;->a(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lbfc;->f()V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lbfc;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbfc;->d:Z

    iget-boolean v0, p0, Lbfc;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lbec;->a()Lbec;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbec;->a(Landroid/content/Context;)V

    :cond_1
    new-instance v0, Lbez;

    invoke-direct {v0}, Lbez;-><init>()V

    iput-object v0, p0, Lbfc;->h:Lbez;

    iget-boolean v0, p0, Lbfc;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbfc;->h:Lbez;

    invoke-static {}, Lbec;->a()Lbec;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbez;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_2
    iget-object v0, p0, Lbfc;->h:Lbez;

    invoke-virtual {v0}, Lbez;->a()V

    iget-object v0, p0, Lbfc;->h:Lbez;

    new-instance v1, Lbfc$1;

    invoke-direct {v1, p0, p1}, Lbfc$1;-><init>(Lbfc;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lbez;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lbdz;)V
    .locals 2

    iget-object v0, p0, Lbfc;->h:Lbez;

    new-instance v1, Lbfc$8;

    invoke-direct {v1, p0, p1}, Lbfc$8;-><init>(Lbfc;Lbdz;)V

    invoke-virtual {v0, v1}, Lbez;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lbfc;->g()V

    iget-object v0, p0, Lbfc;->h:Lbez;

    new-instance v1, Lbfc$2;

    invoke-direct {v1, p0}, Lbfc$2;-><init>(Lbfc;)V

    invoke-virtual {v0, v1}, Lbez;->a(Ljava/lang/Runnable;)V

    return-void
.end method
