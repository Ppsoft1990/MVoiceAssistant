.class public Lfc;
.super Lem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfc$b;,
        Lfc$a;
    }
.end annotation


# static fields
.field private static i:Lfc;


# instance fields
.field private A:D

.field private B:Z

.field private C:J

.field private D:J

.field private E:Lfc$b;

.field private F:Z

.field private G:Z

.field private H:Z

.field final e:I

.field final f:I

.field public g:Lem$a;

.field public final h:Landroid/os/Handler;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/baidu/location/BDLocation;

.field private m:Lcom/baidu/location/BDLocation;

.field private n:Lfu;

.field private o:Lfw;

.field private p:Lfu;

.field private q:Lfw;

.field private r:Z

.field private volatile s:Z

.field private t:Z

.field private u:J

.field private v:J

.field private w:Lda;

.field private x:Ljava/lang/String;

.field private y:Ljava/util/List;

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lfc;->i:Lfc;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lem;-><init>()V

    const/16 v0, 0x7d0

    iput v0, p0, Lfc;->e:I

    const/16 v0, 0x3e8

    iput v0, p0, Lfc;->f:I

    iput-boolean v3, p0, Lfc;->j:Z

    iput-object v1, p0, Lfc;->g:Lem$a;

    iput-object v1, p0, Lfc;->k:Ljava/lang/String;

    iput-object v1, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lfc;->m:Lcom/baidu/location/BDLocation;

    iput-object v1, p0, Lfc;->n:Lfu;

    iput-object v1, p0, Lfc;->o:Lfw;

    iput-object v1, p0, Lfc;->p:Lfu;

    iput-object v1, p0, Lfc;->q:Lfw;

    iput-boolean v3, p0, Lfc;->r:Z

    iput-boolean v2, p0, Lfc;->s:Z

    iput-boolean v2, p0, Lfc;->t:Z

    iput-wide v4, p0, Lfc;->u:J

    iput-wide v4, p0, Lfc;->v:J

    iput-object v1, p0, Lfc;->w:Lda;

    iput-object v1, p0, Lfc;->x:Ljava/lang/String;

    iput-object v1, p0, Lfc;->y:Ljava/util/List;

    iput-boolean v2, p0, Lfc;->B:Z

    iput-wide v4, p0, Lfc;->C:J

    iput-wide v4, p0, Lfc;->D:J

    iput-object v1, p0, Lfc;->E:Lfc$b;

    iput-boolean v2, p0, Lfc;->F:Z

    iput-boolean v2, p0, Lfc;->G:Z

    iput-boolean v3, p0, Lfc;->H:Z

    new-instance v0, Lem$b;

    invoke-direct {v0, p0}, Lem$b;-><init>(Lem;)V

    iput-object v0, p0, Lfc;->h:Landroid/os/Handler;

    new-instance v0, Lem$a;

    invoke-direct {v0, p0}, Lem$a;-><init>(Lem;)V

    iput-object v0, p0, Lfc;->g:Lem$a;

    return-void
.end method

.method static synthetic a(Lfc;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lfc;->g(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lfc;)Z
    .locals 1

    iget-boolean v0, p0, Lfc;->t:Z

    return v0
.end method

.method static synthetic a(Lfc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lfc;->t:Z

    return p1
.end method

.method private a(Lfu;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v2

    invoke-virtual {v2}, Lfz;->k()Lfu;

    move-result-object v2

    iput-object v2, p0, Lfc;->a:Lfu;

    iget-object v2, p0, Lfc;->a:Lfu;

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lfc;->a:Lfu;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lfc;->a:Lfu;

    invoke-virtual {p1, v2}, Lfu;->c(Lfu;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lfw;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v2

    invoke-virtual {v2}, Lfy;->f()Lfw;

    move-result-object v2

    iput-object v2, p0, Lfc;->b:Lfw;

    iget-object v2, p0, Lfc;->b:Lfw;

    if-ne v2, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lfc;->b:Lfw;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lfc;->b:Lfw;

    invoke-virtual {p1, v2}, Lfw;->a(Lfw;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static b()Lfc;
    .locals 1

    sget-object v0, Lfc;->i:Lfc;

    if-nez v0, :cond_0

    new-instance v0, Lfc;

    invoke-direct {v0}, Lfc;-><init>()V

    sput-object v0, Lfc;->i:Lfc;

    :cond_0
    sget-object v0, Lfc;->i:Lfc;

    return-object v0
.end method

.method static synthetic b(Lfc;)Z
    .locals 1

    iget-boolean v0, p0, Lfc;->F:Z

    return v0
.end method

.method static synthetic b(Lfc;Z)Z
    .locals 0

    iput-boolean p1, p0, Lfc;->F:Z

    return p1
.end method

.method private b(Lfw;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lfc;->q:Lfw;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfc;->q:Lfw;

    invoke-virtual {p1, v2}, Lfw;->a(Lfw;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "isWaitingLocTag"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lez;->a()Lez;

    move-result-object v0

    invoke-virtual {v0}, Lez;->b()V

    :cond_0
    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, p1}, Len;->d(Landroid/os/Message;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "this type %d is illegal"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lfc;->e(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lfc;->d(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lfc;->f(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lfc;)Z
    .locals 1

    iget-boolean v0, p0, Lfc;->G:Z

    return v0
.end method

.method private d(Landroid/os/Message;)V
    .locals 1

    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lfc;->e(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lfc;->f(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private e(Landroid/os/Message;)V
    .locals 11

    const/4 v10, 0x0

    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/BDLocation;

    invoke-direct {v9, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Ldp;->g:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ldp;->h:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lfc;->A:D

    iget-wide v2, p0, Lfc;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget-object v0, p0, Lfc;->w:Lda;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfc;->w:Lda;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->a(Lda;)V

    :cond_1
    iget-object v0, p0, Lfc;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfc;->x:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lfc;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfc;->y:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->a(Ljava/util/List;)V

    :cond_3
    :goto_0
    iput-object v9, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    iput-object v10, p0, Lfc;->m:Lcom/baidu/location/BDLocation;

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, v9, p1}, Len;->a(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V

    return-void

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfc;->B:Z

    invoke-direct {p0, v10}, Lfc;->f(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private f(Landroid/os/Message;)V
    .locals 4

    iget-boolean v0, p0, Lfc;->r:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfc;->D:J

    invoke-direct {p0, p1}, Lfc;->g(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lfc;->s:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfc;->D:J

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v0

    invoke-virtual {v0}, Lfz;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfc;->t:Z

    iget-object v0, p0, Lfc;->h:Landroid/os/Handler;

    new-instance v1, Lfc$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfc$a;-><init>(Lfc;Lfd;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lfc;->g(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private g(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lfc;->s:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lfc;->u:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_2

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    iget-object v1, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Len;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lfc;->l()V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lfc;->D:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->b()Ldq;

    move-result-object v0

    iget-wide v2, p0, Lfc;->D:J

    invoke-virtual {v0, v2, v3}, Ldq;->a(J)V

    :goto_1
    iput-boolean v4, p0, Lfc;->s:Z

    iget-object v0, p0, Lfc;->o:Lfw;

    invoke-direct {p0, v0}, Lfc;->a(Lfw;)Z

    move-result v0

    iput-boolean v0, p0, Lfc;->j:Z

    iget-object v0, p0, Lfc;->n:Lfu;

    invoke-direct {p0, v0}, Lfc;->a(Lfu;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lfc;->j:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lfc;->B:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lfc;->m:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lfc;->v:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lfc;->m:Lcom/baidu/location/BDLocation;

    iput-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    iput-object v5, p0, Lfc;->m:Lcom/baidu/location/BDLocation;

    :cond_3
    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v0

    invoke-virtual {v0}, Lfb;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Lfb;->a()Lfb;

    move-result-object v1

    invoke-virtual {v1}, Lfb;->f()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->c(F)V

    :cond_4
    invoke-static {}, Len;->a()Len;

    move-result-object v0

    iget-object v1, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Len;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lfc;->l()V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->b()Ldq;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldq;->a(J)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, Lfc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_7

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    iget-object v1, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0, v1}, Len;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lfc;->l()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->a(I)V

    invoke-static {}, Len;->a()Len;

    move-result-object v1

    invoke-virtual {v1, v0}, Len;->a(Lcom/baidu/location/BDLocation;)V

    invoke-direct {p0}, Lfc;->l()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lfc;->C:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iput-wide v0, p0, Lfc;->C:J

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    const-string/jumbo v1, "TypeCriteriaException"

    invoke-virtual {v0, v1}, Ldy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lfc;->k:Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfc;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v5, p0, Lfc;->k:Ljava/lang/String;

    :cond_9
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->b()Ldq;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ldq;->b(J)V

    iget-object v1, p0, Lfc;->g:Lem$a;

    invoke-virtual {v1, v0}, Lem$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfc;->b:Lfw;

    iput-object v0, p0, Lfc;->o:Lfw;

    iget-object v0, p0, Lfc;->a:Lfu;

    iput-object v0, p0, Lfc;->n:Lfu;

    iget-object v0, p0, Lfc;->o:Lfw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lfc;->o:Lfw;

    invoke-virtual {v0}, Lfw;->a()I

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lfn;

    iget-object v1, p0, Lfc;->o:Lfw;

    iget-object v2, p0, Lfc;->n:Lfu;

    invoke-direct {v0, v1, v2, v4}, Lfn;-><init>(Lfw;Lfu;Z)V

    invoke-virtual {v0}, Lfn;->a()V

    invoke-direct {p0}, Lfc;->l()V

    :cond_a
    :goto_2
    iget-boolean v0, p0, Lfc;->r:Z

    if-ne v0, v4, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfc;->r:Z

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v0

    invoke-virtual {v0}, Lfz;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, p1}, Len;->e(Landroid/os/Message;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_b

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lfd;

    invoke-direct {v0, p0}, Lfd;-><init>(Lfc;)V

    invoke-virtual {v0}, Lfd;->start()V

    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfc;->u:J

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lfc;->k()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lfc;->b:Lfw;

    iput-object v0, p0, Lfc;->o:Lfw;

    iget-object v0, p0, Lfc;->a:Lfu;

    iput-object v0, p0, Lfc;->n:Lfu;

    :cond_d
    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfc;->E:Lfc$b;

    if-nez v0, :cond_e

    new-instance v0, Lfc$b;

    invoke-direct {v0, p0, v5}, Lfc$b;-><init>(Lfc;Lfd;)V

    iput-object v0, p0, Lfc;->E:Lfc$b;

    :cond_e
    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v1

    invoke-virtual {v1}, Lfy;->e()I

    move-result v1

    invoke-static {v1}, Lfr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/c/d;->a(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lfc;->h:Landroid/os/Handler;

    iget-object v3, p0, Lfc;->E:Lfc$b;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lfc;->F:Z

    goto :goto_2
.end method

.method private k()Z
    .locals 10

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v0

    invoke-virtual {v0}, Lfy;->f()Lfw;

    move-result-object v0

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v1

    invoke-virtual {v1}, Lfz;->j()Lfu;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lfw;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lfu;->a()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    move v0, v6

    :goto_0
    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/c/d;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->o()D

    move-result-wide v0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v1

    invoke-virtual {v1}, Lfy;->f()Lfw;

    move-result-object v1

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v2

    invoke-virtual {v2}, Lfz;->j()Lfu;

    move-result-object v2

    sget-object v4, Lcom/baidu/location/c/d$c;->do:Lcom/baidu/location/c/d$c;

    sget-object v5, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/c/d;->a(Lfw;Lfu;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lfc;->s:Z

    if-eqz v0, :cond_4

    new-instance v0, Ldq;

    invoke-direct {v0}, Ldq;-><init>()V

    iget-wide v4, p0, Lfc;->D:J

    invoke-virtual {v0, v4, v5}, Ldq;->a(J)V

    invoke-virtual {v0, v8, v9}, Ldq;->b(J)V

    invoke-virtual {v0, v8, v9}, Ldq;->c(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ldq;->d(J)V

    const-string/jumbo v1, "ofs"

    invoke-virtual {v0, v1}, Ldq;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lfc;->o:Lfw;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lfc;->o:Lfw;

    invoke-virtual {v1}, Lfw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldq;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "&offtag=1"

    invoke-virtual {v0, v1}, Ldq;->b(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v3}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/baidu/location/BDLocation;->a(I)V

    iget-boolean v2, p0, Lfc;->s:Z

    if-eqz v2, :cond_4

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldy;->a(Ldq;)V

    iput-boolean v6, p0, Lfc;->G:Z

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, v1}, Len;->a(Lcom/baidu/location/BDLocation;)V

    iput-object v1, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    move v7, v6

    :cond_4
    return v7

    :cond_5
    move v0, v7

    goto/16 :goto_0
.end method

.method private l()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfc;->s:Z

    iput-boolean v0, p0, Lfc;->G:Z

    iput-boolean v0, p0, Lfc;->H:Z

    iput-boolean v0, p0, Lfc;->B:Z

    invoke-direct {p0}, Lfc;->m()V

    return-void
.end method

.method private m()V
    .locals 1

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_0

    invoke-static {}, Lff;->a()Lff;

    move-result-object v0

    invoke-virtual {v0}, Lff;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/location/BDLocation;)Lda;
    .locals 10

    const/4 v9, 0x0

    sget-object v0, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Ldp;->g:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ldp;->h:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lfc;->A:D

    iget-wide v2, p0, Lfc;->z:D

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v0, 0x0

    aget v0, v8, v0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lfc;->w:Lda;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfc;->w:Lda;

    :goto_0
    return-object v0

    :cond_1
    iput-object v9, p0, Lfc;->x:Ljava/lang/String;

    iput-object v9, p0, Lfc;->y:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfc;->B:Z

    invoke-direct {p0, v9}, Lfc;->f(Landroid/os/Message;)V

    :cond_2
    move-object v0, v9

    goto :goto_0
.end method

.method public a()V
    .locals 12

    const/4 v6, 0x1

    const/16 v7, 0x43

    const/4 v3, 0x0

    const/16 v11, 0x15

    const/4 v9, 0x0

    iget-object v0, p0, Lfc;->E:Lfc$b;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lfc;->F:Z

    if-eqz v0, :cond_13

    iput-boolean v9, p0, Lfc;->F:Z

    iget-object v0, p0, Lfc;->h:Landroid/os/Handler;

    iget-object v1, p0, Lfc;->E:Lfc$b;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move v0, v6

    :goto_0
    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v1

    invoke-virtual {v1}, Lfv;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Lcom/baidu/location/BDLocation;

    invoke-direct {v10, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Ldp;->g:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ldp;->h:Z

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lfc;->A:D

    iget-wide v2, p0, Lfc;->z:D

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    invoke-virtual {v10}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v9

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lfc;->w:Lda;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfc;->w:Lda;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->a(Lda;)V

    :cond_1
    iget-object v0, p0, Lfc;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfc;->x:Ljava/lang/String;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lfc;->y:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lfc;->y:Ljava/util/List;

    invoke-virtual {v10, v0}, Lcom/baidu/location/BDLocation;->a(Ljava/util/List;)V

    :cond_3
    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    invoke-direct {p0}, Lfc;->l()V

    :goto_1
    return-void

    :cond_4
    iget-boolean v1, p0, Lfc;->G:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lfc;->l()V

    goto :goto_1

    :cond_5
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->b()Ldq;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ldq;->c(J)V

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v1

    invoke-virtual {v1}, Lfy;->f()Lfw;

    move-result-object v1

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v2

    invoke-virtual {v2}, Lfz;->j()Lfu;

    move-result-object v2

    sget-object v4, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v5, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/c/d;->a(Lfw;Lfu;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    const/16 v2, 0x42

    if-ne v1, v2, :cond_6

    invoke-static {}, Len;->a()Len;

    move-result-object v1

    invoke-virtual {v1, v0, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    if-ne v1, v7, :cond_c

    :cond_7
    iget-boolean v1, p0, Lfc;->j:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    if-nez v1, :cond_e

    :cond_8
    invoke-static {}, Lec;->a()Lec;

    move-result-object v0

    invoke-virtual {v0, v9}, Lec;->a(Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    invoke-static {}, Len;->a()Len;

    move-result-object v1

    invoke-virtual {v1, v0, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    sget-object v1, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v2, "all"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->i()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    move v6, v9

    :cond_9
    sget-boolean v1, Ldp;->g:Z

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->n()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    move v6, v9

    :cond_a
    sget-boolean v1, Ldp;->h:Z

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->a()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    move v6, v9

    :cond_b
    if-nez v6, :cond_c

    invoke-virtual {v0, v7}, Lcom/baidu/location/BDLocation;->a(I)V

    :cond_c
    :goto_3
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->b()Ldq;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ldq;->d(J)V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    if-eq v1, v7, :cond_f

    iput-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->b()Ldq;

    move-result-object v0

    const-string/jumbo v1, "ofs"

    invoke-virtual {v0, v1}, Ldq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfc;->o:Lfw;

    if-eqz v0, :cond_d

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->b()Ldq;

    move-result-object v0

    iget-object v1, p0, Lfc;->o:Lfw;

    invoke-virtual {v1}, Lfw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldq;->b(Ljava/lang/String;)V

    :cond_d
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->c()V

    :goto_4
    iput-object v3, p0, Lfc;->m:Lcom/baidu/location/BDLocation;

    invoke-direct {p0}, Lfc;->l()V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Len;->a()Len;

    move-result-object v1

    iget-object v2, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1, v2, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    goto :goto_3

    :cond_f
    iput-object v3, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->b()Ldq;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ldq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfc;->o:Lfw;

    if-eqz v0, :cond_10

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->b()Ldq;

    move-result-object v0

    iget-object v1, p0, Lfc;->o:Lfw;

    invoke-virtual {v1}, Lfw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldq;->b(Ljava/lang/String;)V

    :cond_10
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->c()V

    goto :goto_4

    :cond_11
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->a(I)V

    iput-object v3, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-static {}, Len;->a()Len;

    move-result-object v1

    invoke-virtual {v1, v0, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    goto :goto_4

    :cond_12
    move-object v0, v3

    goto/16 :goto_2

    :cond_13
    move v0, v9

    goto/16 :goto_0
.end method

.method public a(Landroid/os/Message;)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v11, 0x15

    const/4 v10, 0x0

    const/16 v8, 0xa1

    iget-object v0, p0, Lfc;->E:Lfc$b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lfc;->F:Z

    if-eqz v0, :cond_0

    iput-boolean v10, p0, Lfc;->F:Z

    iget-object v0, p0, Lfc;->h:Landroid/os/Handler;

    iget-object v3, p0, Lfc;->E:Lfc$b;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/baidu/location/BDLocation;

    new-instance v3, Lcom/baidu/location/BDLocation;

    invoke-direct {v3, v9}, Lcom/baidu/location/BDLocation;-><init>(Lcom/baidu/location/BDLocation;)V

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->h()Lda;

    move-result-object v0

    iput-object v0, p0, Lfc;->w:Lda;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v4

    iput-wide v4, p0, Lfc;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    iput-wide v4, p0, Lfc;->A:D

    :cond_1
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfc;->x:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v4

    iput-wide v4, p0, Lfc;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    iput-wide v4, p0, Lfc;->A:D

    :cond_2
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lfc;->y:Ljava/util/List;

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v4

    iput-wide v4, p0, Lfc;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    iput-wide v4, p0, Lfc;->A:D

    :cond_3
    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->j()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v0

    invoke-virtual {v0}, Lfv;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/baidu/location/BDLocation;

    invoke-direct {v9, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    sget-object v0, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Ldp;->g:Z

    if-nez v0, :cond_4

    sget-boolean v0, Ldp;->h:Z

    if-eqz v0, :cond_7

    :cond_4
    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-wide v0, p0, Lfc;->A:D

    iget-wide v2, p0, Lfc;->z:D

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    aget v0, v8, v10

    const/high16 v1, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iget-object v0, p0, Lfc;->w:Lda;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lfc;->w:Lda;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->a(Lda;)V

    :cond_5
    iget-object v0, p0, Lfc;->x:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfc;->x:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->d(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lfc;->y:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfc;->y:Ljava/util/List;

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->a(Ljava/util/List;)V

    :cond_7
    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, v9, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    invoke-direct {p0}, Lfc;->l()V

    :goto_0
    return-void

    :cond_8
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->p()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->p()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "sky"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "wf"

    invoke-virtual {v9, v0}, Lcom/baidu/location/BDLocation;->e(Ljava/lang/String;)V

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, v9, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfc;->v:J

    iput-object v9, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lfc;->G:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    new-array v8, v0, [F

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v0

    iget-object v2, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v2}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v2

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v6

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    :cond_a
    aget v0, v8, v10

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    iput-object v9, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    iget-boolean v0, p0, Lfc;->H:Z

    if-nez v0, :cond_b

    iput-boolean v10, p0, Lfc;->H:Z

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    invoke-virtual {v0, v9, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    :cond_b
    invoke-direct {p0}, Lfc;->l()V

    goto :goto_0

    :cond_c
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v0

    invoke-virtual {v0}, Ldy;->b()Ldq;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ldq;->c(J)V

    iput-object v2, p0, Lfc;->m:Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lfc;->o:Lfw;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lfc;->o:Lfw;

    invoke-virtual {v0}, Lfw;->a()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->o()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_d

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->o()I

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    const/16 v4, 0xa7

    if-ne v0, v4, :cond_e

    new-instance v0, Lfn;

    iget-object v4, p0, Lfc;->o:Lfw;

    iget-object v5, p0, Lfc;->n:Lfu;

    invoke-direct {v0, v4, v5, v1}, Lfn;-><init>(Lfw;Lfu;Z)V

    invoke-virtual {v0}, Lfn;->a()V

    :cond_e
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-ne v0, v8, :cond_f

    sget-object v0, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v4, "all"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->i()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-static {}, Ldn;->a()Ldn;

    move-result-object v0

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->c()D

    move-result-wide v4

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->b()D

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ldn;->a(DD)Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lfn;

    iget-object v2, p0, Lfc;->o:Lfw;

    iget-object v3, p0, Lfc;->n:Lfu;

    invoke-direct {v0, v2, v3, v1}, Lfn;-><init>(Lfw;Lfu;Z)V

    invoke-virtual {v0}, Lfn;->a()V

    invoke-direct {p0}, Lfc;->l()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-ne v0, v8, :cond_1a

    const-string/jumbo v0, "cl"

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-ne v0, v8, :cond_1a

    const-string/jumbo v0, "wf"

    iget-object v4, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v4}, Lcom/baidu/location/BDLocation;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lfc;->v:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7530

    cmp-long v0, v4, v6

    if-gez v0, :cond_1a

    iput-object v9, p0, Lfc;->m:Lcom/baidu/location/BDLocation;

    move v0, v1

    :goto_1
    if-eqz v0, :cond_15

    invoke-static {}, Len;->a()Len;

    move-result-object v1

    iget-object v4, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    invoke-virtual {v1, v4, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    :cond_10
    :goto_2
    invoke-static {v9}, Ldp;->a(Lcom/baidu/location/BDLocation;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez v0, :cond_11

    iput-object v9, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    :cond_11
    :goto_3
    sget-object v0, Lfc;->c:Ljava/lang/String;

    const-string/jumbo v1, "ssid\":\""

    const-string/jumbo v4, "\""

    invoke-static {v0, v1, v4}, Ldp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_19

    iget-object v1, p0, Lfc;->n:Lfu;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lfc;->n:Lfu;

    invoke-virtual {v1, v0}, Lfu;->d(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfc;->k:Ljava/lang/String;

    :goto_4
    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-ne v0, v8, :cond_12

    const-string/jumbo v0, "cl"

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lfc;->o:Lfw;

    invoke-direct {p0, v0}, Lfc;->b(Lfw;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    iget-object v1, p0, Lfc;->o:Lfw;

    sget-object v4, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v5, Lcom/baidu/location/c/d$b;->do:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/c/d;->a(Lfw;Lfu;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lfc;->o:Lfw;

    iput-object v0, p0, Lfc;->q:Lfw;

    :cond_12
    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->d()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    if-ne v0, v8, :cond_13

    const-string/jumbo v0, "wf"

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v4

    iget-object v6, p0, Lfc;->n:Lfu;

    sget-object v8, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v9, Lcom/baidu/location/c/d$b;->do:Lcom/baidu/location/c/d$b;

    move-object v5, v2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/baidu/location/c/d;->a(Lfw;Lfu;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    iget-object v0, p0, Lfc;->n:Lfu;

    iput-object v0, p0, Lfc;->p:Lfu;

    :cond_13
    invoke-static {}, Lec;->a()Lec;

    move-result-object v0

    sget-object v1, Lfc;->c:Ljava/lang/String;

    iget-object v2, p0, Lfc;->o:Lfw;

    iget-object v4, p0, Lfc;->n:Lfu;

    invoke-virtual {v0, v1, v2, v4, v3}, Lec;->a(Ljava/lang/String;Lfw;Lfu;Lcom/baidu/location/BDLocation;)V

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v0

    invoke-virtual {v0}, Lfz;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->i()V

    :cond_14
    invoke-direct {p0}, Lfc;->l()V

    goto/16 :goto_0

    :cond_15
    invoke-static {}, Len;->a()Len;

    move-result-object v1

    invoke-virtual {v1, v9, v11}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lfc;->v:J

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->b()Ldq;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ldq;->d(J)V

    invoke-virtual {v9}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    if-ne v1, v8, :cond_16

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->b()Ldq;

    move-result-object v1

    const-string/jumbo v4, "ons"

    invoke-virtual {v1, v4}, Ldq;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lfc;->o:Lfw;

    if-eqz v1, :cond_10

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->b()Ldq;

    move-result-object v1

    iget-object v4, p0, Lfc;->o:Lfw;

    invoke-virtual {v4}, Lfw;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldq;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_16
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->b()Ldq;

    move-result-object v1

    const-string/jumbo v4, "onf"

    invoke-virtual {v1, v4}, Ldq;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lfc;->o:Lfw;

    if-eqz v1, :cond_17

    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->b()Ldq;

    move-result-object v1

    iget-object v4, p0, Lfc;->o:Lfw;

    invoke-virtual {v4}, Lfw;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldq;->b(Ljava/lang/String;)V

    :cond_17
    invoke-static {}, Ldy;->a()Ldy;

    move-result-object v1

    invoke-virtual {v1}, Ldy;->c()V

    goto/16 :goto_2

    :cond_18
    iput-object v2, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    goto/16 :goto_3

    :cond_19
    iput-object v2, p0, Lfc;->k:Ljava/lang/String;

    goto/16 :goto_4

    :cond_1a
    move v0, v10

    goto/16 :goto_1
.end method

.method public b(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lfc;->c(Landroid/os/Message;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfc;->r:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfc;->s:Z

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfc;->s:Z

    iput-boolean v0, p0, Lfc;->t:Z

    iput-boolean v0, p0, Lfc;->G:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfc;->H:Z

    invoke-virtual {p0}, Lfc;->i()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfc;->x:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lfc;->y:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lfc;->j:Z

    return v0
.end method

.method public h()V
    .locals 1

    iget-boolean v0, p0, Lfc;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lfc;->g(Landroid/os/Message;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfc;->t:Z

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lfc;->l:Lcom/baidu/location/BDLocation;

    return-void
.end method

.method public j()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/c/d;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/baidu/location/c/d;->a()Lcom/baidu/location/c/d;

    move-result-object v0

    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v1

    invoke-virtual {v1}, Lfy;->f()Lfw;

    move-result-object v1

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v2

    invoke-virtual {v2}, Lfz;->j()Lfu;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/baidu/location/c/d$c;->if:Lcom/baidu/location/c/d$c;

    sget-object v5, Lcom/baidu/location/c/d$b;->a:Lcom/baidu/location/c/d$b;

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/location/c/d;->a(Lfw;Lfu;Lcom/baidu/location/BDLocation;Lcom/baidu/location/c/d$c;Lcom/baidu/location/c/d$b;)Lcom/baidu/location/BDLocation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/BDLocation;->f()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_6

    :cond_0
    invoke-static {}, Lec;->a()Lec;

    move-result-object v0

    invoke-virtual {v0, v6}, Lec;->a(Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->f()I

    move-result v0

    const/16 v2, 0x42

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    sget-object v2, Ldp;->f:Ljava/lang/String;

    const-string/jumbo v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->i()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v6

    :cond_1
    sget-boolean v2, Ldp;->g:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->n()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v6

    :cond_2
    sget-boolean v2, Ldp;->h:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/baidu/location/BDLocation;->a()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_3

    move v0, v6

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Len;->a()Len;

    move-result-object v0

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Len;->a(Lcom/baidu/location/BDLocation;I)V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lec;->a()Lec;

    move-result-object v0

    invoke-virtual {v0, v6}, Lec;->a(Z)Lcom/baidu/location/BDLocation;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method
