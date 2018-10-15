.class Lez;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez$a;
    }
.end annotation


# static fields
.field private static a:Lez;


# instance fields
.field private b:Lfu;

.field private c:Lfw;

.field private d:J

.field private final e:J

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lez;->b:Lfu;

    iput-object v2, p0, Lez;->c:Lfw;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lez;->d:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lez;->e:J

    iput-object v2, p0, Lez;->f:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lez;
    .locals 2

    const-class v1, Lez;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lez;->a:Lez;

    if-nez v0, :cond_0

    new-instance v0, Lez;

    invoke-direct {v0}, Lez;-><init>()V

    sput-object v0, Lez;->a:Lez;

    :cond_0
    sget-object v0, Lez;->a:Lez;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lez;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lez;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lez;->f:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "locationtag"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_0
    invoke-static {}, Len;->a()Len;

    move-result-object v1

    const/16 v2, 0x259

    invoke-virtual {v1, v0, v2}, Len;->a(Landroid/os/Bundle;I)V

    return-void

    :cond_0
    const-string/jumbo v1, "locationtag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method private a(Lfu;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v2

    invoke-virtual {v2}, Lfz;->k()Lfu;

    move-result-object v2

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

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

    if-ne v2, p1, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Lfw;->a(Lfw;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lez;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lez;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lez;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lez;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lez;->d:J

    iget-object v0, p0, Lez;->b:Lfu;

    invoke-direct {p0, v0}, Lez;->a(Lfu;)Z

    move-result v0

    iget-object v1, p0, Lez;->c:Lfw;

    invoke-direct {p0, v1}, Lez;->a(Lfw;)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v0, p0, Lez;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lez;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lez;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lfr;->a()Lfy;

    move-result-object v0

    invoke-virtual {v0}, Lfy;->f()Lfw;

    move-result-object v0

    iput-object v0, p0, Lez;->c:Lfw;

    invoke-static {}, Lga;->a()Lfz;

    move-result-object v0

    invoke-virtual {v0}, Lfz;->k()Lfu;

    move-result-object v0

    iput-object v0, p0, Lez;->b:Lfu;

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lez;->c:Lfw;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lez;->c:Lfw;

    invoke-virtual {v1}, Lfw;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lez;->c:Lfw;

    invoke-virtual {v1}, Lfw;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v1, p0, Lez;->b:Lfu;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lez;->b:Lfu;

    invoke-virtual {v1}, Lfu;->a()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lez;->b:Lfu;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lfu;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-static {}, Lfs;->a()Lfv;

    move-result-object v1

    invoke-virtual {v1}, Lfv;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string/jumbo v1, "&sema=aptag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Ldj;->a()Ldj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ldj;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Len;->a()Len;

    move-result-object v1

    invoke-virtual {v1}, Len;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lez$a;

    invoke-direct {v1, p0}, Lez$a;-><init>(Lez;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lez$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
