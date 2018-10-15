.class public final Ldf;
.super Ljava/lang/Object;

# interfaces
.implements Lfg$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf$a;,
        Ldf$b;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lfg;

.field private C:Z

.field private D:Z

.field private E:Landroid/content/ServiceConnection;

.field private a:J

.field private b:Ljava/lang/String;

.field private c:Lcom/baidu/location/LocationClientOption;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Messenger;

.field private g:Ldf$a;

.field private final h:Landroid/os/Messenger;

.field private i:Ljava/util/ArrayList;

.field private j:Lcom/baidu/location/BDLocation;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Ldf$b;

.field private o:Z

.field private final p:Ljava/lang/Object;

.field private q:J

.field private r:J

.field private s:Lcom/baidu/location/d/a;

.field private t:Ldc;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/Boolean;

.field private y:Ljava/lang/Boolean;

.field private z:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Ldf;->a:J

    iput-object v2, p0, Ldf;->b:Ljava/lang/String;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iput-boolean v3, p0, Ldf;->d:Z

    iput-object v2, p0, Ldf;->e:Landroid/content/Context;

    iput-object v2, p0, Ldf;->f:Landroid/os/Messenger;

    new-instance v0, Ldf$a;

    invoke-direct {v0, p0, v2}, Ldf$a;-><init>(Ldf;Ldg;)V

    iput-object v0, p0, Ldf;->g:Ldf$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Ldf;->g:Ldf$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Ldf;->h:Landroid/os/Messenger;

    iput-object v2, p0, Ldf;->i:Ljava/util/ArrayList;

    iput-object v2, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    iput-boolean v3, p0, Ldf;->k:Z

    iput-boolean v3, p0, Ldf;->l:Z

    iput-boolean v3, p0, Ldf;->m:Z

    iput-object v2, p0, Ldf;->n:Ldf$b;

    iput-boolean v3, p0, Ldf;->o:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldf;->p:Ljava/lang/Object;

    iput-wide v4, p0, Ldf;->q:J

    iput-wide v4, p0, Ldf;->r:J

    iput-object v2, p0, Ldf;->s:Lcom/baidu/location/d/a;

    iput-object v2, p0, Ldf;->t:Ldc;

    iput-object v2, p0, Ldf;->u:Ljava/lang/String;

    iput-boolean v3, p0, Ldf;->v:Z

    iput-boolean v6, p0, Ldf;->w:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldf;->x:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldf;->y:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldf;->z:Ljava/lang/Boolean;

    iput-object v2, p0, Ldf;->B:Lfg;

    iput-boolean v3, p0, Ldf;->C:Z

    iput-boolean v3, p0, Ldf;->D:Z

    new-instance v0, Ldg;

    invoke-direct {v0, p0}, Ldg;-><init>(Ldf;)V

    iput-object v0, p0, Ldf;->E:Landroid/content/ServiceConnection;

    iput-object p1, p0, Ldf;->e:Landroid/content/Context;

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v0, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    return-void
.end method

.method static synthetic a(Ldf;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Ldf;->f:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic a(Ldf;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Ldf;->f:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Ldf;Ldf$b;)Ldf$b;
    .locals 0

    iput-object p1, p0, Ldf;->n:Ldf$b;

    return-object p1
.end method

.method private a(I)V
    .locals 5

    const/16 v4, 0x43

    const/16 v3, 0x42

    const/4 v2, 0x1

    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    iget-object v1, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v1, v1, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->b(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Ldf;->k:Z

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->h:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-boolean v0, p0, Ldf;->v:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_4

    :cond_2
    iget-object v0, p0, Ldf;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldf;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc;

    iget-object v2, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-interface {v0, v2}, Ldc;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-ne v0, v4, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldf;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldf;->r:J

    goto :goto_1
.end method

.method private a(Landroid/os/Message;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldd;

    iget-object v1, p0, Ldf;->s:Lcom/baidu/location/d/a;

    if-nez v1, :cond_2

    new-instance v1, Lcom/baidu/location/d/a;

    iget-object v2, p0, Ldf;->e:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/baidu/location/d/a;-><init>(Landroid/content/Context;Ldf;)V

    iput-object v1, p0, Ldf;->s:Lcom/baidu/location/d/a;

    :cond_2
    iget-object v1, p0, Ldf;->s:Lcom/baidu/location/d/a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/d/a;->a(Ldd;)I

    goto :goto_0
.end method

.method private a(Landroid/os/Message;I)V
    .locals 2

    iget-boolean v0, p0, Ldf;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocation;

    iput-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldf;->q:J

    :cond_1
    invoke-direct {p0, p2}, Ldf;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Ldf;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->c(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Ldf;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldf;->a(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic a(Ldf;Lcom/baidu/location/BDLocation;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->b(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method static synthetic a(Ldf;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldf;->d:Z

    return p1
.end method

.method private b(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldd;

    iget-object v1, p0, Ldf;->s:Lcom/baidu/location/d/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldf;->s:Lcom/baidu/location/d/a;

    invoke-virtual {v1, v0}, Lcom/baidu/location/d/a;->b(Ldd;)I

    goto :goto_0
.end method

.method private b(Lcom/baidu/location/BDLocation;)V
    .locals 2

    iget-boolean v0, p0, Ldf;->w:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Ldf;->j:Lcom/baidu/location/BDLocation;

    iget-boolean v0, p0, Ldf;->D:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    const/16 v1, 0xa1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf;->C:Z

    :cond_2
    iget-object v0, p0, Ldf;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldc;

    invoke-interface {v0, p1}, Ldc;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_0
.end method

.method static synthetic b(Ldf;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->d(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Ldf;)Z
    .locals 1

    iget-boolean v0, p0, Ldf;->w:Z

    return v0
.end method

.method static synthetic b(Ldf;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldf;->m:Z

    return p1
.end method

.method static synthetic c(Ldf;)Ldf$a;
    .locals 1

    iget-object v0, p0, Ldf;->g:Ldf$a;

    return-object v0
.end method

.method private c(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldf;->l:Z

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/location/LocationClientOption;

    iget-object v1, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClientOption;->a(Lcom/baidu/location/LocationClientOption;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget v1, v1, Lcom/baidu/location/LocationClientOption;->d:I

    iget v2, v0, Lcom/baidu/location/LocationClientOption;->d:I

    if-eq v1, v2, :cond_5

    :try_start_0
    iget-object v2, p0, Ldf;->p:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-boolean v1, p0, Ldf;->m:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Ldf;->g:Ldf$a;

    iget-object v3, p0, Ldf;->n:Ldf$b;

    invoke-virtual {v1, v3}, Ldf$a;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldf;->m:Z

    :cond_2
    iget v1, v0, Lcom/baidu/location/LocationClientOption;->d:I

    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_4

    iget-boolean v1, p0, Ldf;->m:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Ldf;->n:Ldf$b;

    if-nez v1, :cond_3

    new-instance v1, Ldf$b;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Ldf$b;-><init>(Ldf;Ldg;)V

    iput-object v1, p0, Ldf;->n:Ldf$b;

    :cond_3
    iget-object v1, p0, Ldf;->g:Ldf$a;

    iget-object v3, p0, Ldf;->n:Ldf$b;

    iget v4, v0, Lcom/baidu/location/LocationClientOption;->d:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Ldf$a;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Ldf;->m:Z

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    new-instance v1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v1, v0}, Lcom/baidu/location/LocationClientOption;-><init>(Lcom/baidu/location/LocationClientOption;)V

    iput-object v1, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v0, p0, Ldf;->f:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xf

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ldf;->h:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-direct {p0}, Ldf;->h()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Ldf;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic c(Ldf;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->e(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic c(Ldf;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldf;->o:Z

    return p1
.end method

.method static synthetic d(Ldf;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Ldf;->h:Landroid/os/Messenger;

    return-object v0
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldc;

    iput-object v0, p0, Ldf;->t:Ldc;

    goto :goto_0
.end method

.method static synthetic d(Ldf;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->f(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic d(Ldf;Z)Z
    .locals 0

    iput-boolean p1, p0, Ldf;->D:Z

    return p1
.end method

.method static synthetic e(Ldf;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Ldf;->h()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ldf;->h:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Ldf;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private e(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldc;

    iget-object v1, p0, Ldf;->i:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldf;->i:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, p0, Ldf;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ldf;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic e(Ldf;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic f(Ldf;)Lcom/baidu/location/LocationClientOption;
    .locals 1

    iget-object v0, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    return-object v0
.end method

.method private f()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Ldf;->d:Z

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldf;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldf;->B:Lfg;

    if-nez v0, :cond_1

    new-instance v0, Lfg;

    iget-object v1, p0, Ldf;->e:Landroid/content/Context;

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0, v1, v2, p0}, Lfg;-><init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lfg$a;)V

    iput-object v0, p0, Ldf;->B:Lfg;

    iget-object v0, p0, Ldf;->B:Lfg;

    invoke-virtual {v0}, Lfg;->b()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Ldf;->B:Lfg;

    invoke-virtual {v0}, Lfg;->c()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldf;->z:Ljava/lang/Boolean;

    :cond_2
    iget-object v0, p0, Ldf;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldf;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_bdls_v2.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldf;->u:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ldf;->e:Landroid/content/Context;

    const-class v2, Lcom/baidu/location/f;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :try_start_0
    const-string/jumbo v1, "debug_dev"

    iget-boolean v2, p0, Ldf;->A:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v1, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    if-nez v1, :cond_3

    new-instance v1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iput-object v1, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    :cond_3
    const-string/jumbo v1, "cache_exception"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->l:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "kill_process"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1
    iget-object v1, p0, Ldf;->e:Landroid/content/Context;

    iget-object v2, p0, Ldf;->E:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v4, p0, Ldf;->d:Z

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private f(Landroid/os/Message;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ldc;

    iget-object v1, p0, Ldf;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldf;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldf;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic f(Ldf;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->b(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic g(Ldf;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Ldf;->z:Ljava/lang/Boolean;

    return-object v0
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Ldf;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldf;->f:Landroid/os/Messenger;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ldf;->h:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Ldf;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-object v0, p0, Ldf;->e:Landroid/content/Context;

    iget-object v1, p0, Ldf;->E:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    iget-object v1, p0, Ldf;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-boolean v0, p0, Ldf;->m:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Ldf;->g:Ldf$a;

    iget-object v2, p0, Ldf;->n:Ldf$b;

    invoke-virtual {v0, v2}, Ldf$a;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldf;->m:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Ldf;->s:Lcom/baidu/location/d/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ldf;->s:Lcom/baidu/location/d/a;

    invoke-virtual {v0}, Lcom/baidu/location/d/a;->a()V

    :cond_3
    iput-object v4, p0, Ldf;->f:Landroid/os/Messenger;

    iput-boolean v3, p0, Ldf;->l:Z

    iput-boolean v3, p0, Ldf;->v:Z

    iput-boolean v3, p0, Ldf;->d:Z

    iput-boolean v3, p0, Ldf;->C:Z

    iput-boolean v3, p0, Ldf;->D:Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method private g(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/baidu/location/BDLocation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v1, "locStr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/baidu/location/BDLocation;

    iget-object v1, p0, Ldf;->t:Ldc;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    invoke-virtual {v1}, Lcom/baidu/location/LocationClientOption;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    const/16 v2, 0x41

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Ldf;->t:Ldc;

    invoke-interface {v1, v0}, Ldc;->a(Lcom/baidu/location/BDLocation;)V

    goto :goto_0
.end method

.method static synthetic g(Ldf;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->g(Landroid/os/Message;)V

    return-void
.end method

.method private h()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packName"

    iget-object v2, p0, Ldf;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "prodName"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "coorType"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "addrType"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-object v2, v2, Lcom/baidu/location/LocationClientOption;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "openGPS"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->c:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "location_change_notify"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->h:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "scanSpan"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "timeOut"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "priority"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget v2, v2, Lcom/baidu/location/LocationClientOption;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "map"

    iget-object v2, p0, Ldf;->x:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "import"

    iget-object v2, p0, Ldf;->y:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "needDirect"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "isneedaptag"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->o:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "isneedpoiregion"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->q:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "isneedregular"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->r:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "isneedaptagd"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->p:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "isneedaltitude"

    iget-object v2, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v2, v2, Lcom/baidu/location/LocationClientOption;->s:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method static synthetic h(Ldf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ldf;->p:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Ldf;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Ldf;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Ldf;->f:Landroid/os/Messenger;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Ldf;->h:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Ldf;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Ldf;->f:Landroid/os/Messenger;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldf;->q:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget-boolean v0, v0, Lcom/baidu/location/LocationClientOption;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldf;->l:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Ldf;->v:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldf;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Ldf;->l:Z

    if-eqz v0, :cond_4

    :cond_2
    const/16 v0, 0x16

    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-boolean v1, p0, Ldf;->l:Z

    if-eqz v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "isWaitingLocTag"

    iget-boolean v3, p0, Ldf;->l:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_3
    :try_start_0
    iget-object v1, p0, Ldf;->h:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Ldf;->f:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ldf;->a:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget-object v1, p0, Ldf;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget v0, v0, Lcom/baidu/location/LocationClientOption;->d:I

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_6

    iget-boolean v0, p0, Ldf;->m:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Ldf;->n:Ldf$b;

    if-nez v0, :cond_5

    new-instance v0, Ldf$b;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ldf$b;-><init>(Ldf;Ldg;)V

    iput-object v0, p0, Ldf;->n:Ldf$b;

    :cond_5
    iget-object v0, p0, Ldf;->g:Ldf$a;

    iget-object v2, p0, Ldf;->n:Ldf$b;

    iget-object v3, p0, Ldf;->c:Lcom/baidu/location/LocationClientOption;

    iget v3, v3, Lcom/baidu/location/LocationClientOption;->d:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Ldf$a;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf;->m:Z

    :cond_6
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic j(Ldf;)Z
    .locals 1

    iget-boolean v0, p0, Ldf;->l:Z

    return v0
.end method

.method static synthetic k(Ldf;)Ldf$b;
    .locals 1

    iget-object v0, p0, Ldf;->n:Ldf$b;

    return-object v0
.end method

.method static synthetic l(Ldf;)V
    .locals 0

    invoke-direct {p0}, Ldf;->f()V

    return-void
.end method

.method static synthetic m(Ldf;)V
    .locals 0

    invoke-direct {p0}, Ldf;->g()V

    return-void
.end method

.method static synthetic n(Ldf;)V
    .locals 0

    invoke-direct {p0}, Ldf;->i()V

    return-void
.end method

.method static synthetic o(Ldf;)V
    .locals 0

    invoke-direct {p0}, Ldf;->j()V

    return-void
.end method

.method static synthetic p(Ldf;)V
    .locals 0

    invoke-direct {p0}, Ldf;->e()V

    return-void
.end method

.method static synthetic q(Ldf;)Z
    .locals 1

    iget-boolean v0, p0, Ldf;->D:Z

    return v0
.end method

.method static synthetic r(Ldf;)Z
    .locals 1

    iget-boolean v0, p0, Ldf;->C:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Ldf;->g:Ldf$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ldf$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Lcom/baidu/location/BDLocation;)V
    .locals 2

    iget-boolean v0, p0, Ldf;->D:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Ldf;->C:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Ldf;->g:Ldf$a;

    const/16 v1, 0x2bd

    invoke-virtual {v0, v1}, Ldf$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public a(Lcom/baidu/location/LocationClientOption;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lcom/baidu/location/LocationClientOption;

    invoke-direct {p1}, Lcom/baidu/location/LocationClientOption;-><init>()V

    :cond_0
    iget-object v0, p0, Ldf;->B:Lfg;

    if-nez v0, :cond_1

    new-instance v0, Lfg;

    iget-object v1, p0, Ldf;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lfg;-><init>(Landroid/content/Context;Lcom/baidu/location/LocationClientOption;Lfg$a;)V

    iput-object v0, p0, Ldf;->B:Lfg;

    iget-object v0, p0, Ldf;->B:Lfg;

    invoke-virtual {v0}, Lfg;->b()Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Ldf;->g:Ldf$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ldf$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Ldc;)V
    .locals 2

    iget-object v0, p0, Ldf;->g:Ldf$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ldf$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b(Ldc;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "please set a non-null listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ldf;->g:Ldf$a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ldf$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Ldf;->d:Z

    return v0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldf;->w:Z

    iget-object v0, p0, Ldf;->g:Ldf$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ldf$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldf;->w:Z

    iget-object v0, p0, Ldf;->g:Ldf$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ldf$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldf;->B:Lfg;

    return-void
.end method
