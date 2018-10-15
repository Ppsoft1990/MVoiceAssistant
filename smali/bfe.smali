.class public Lbfe;
.super Lben;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbfe$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:J

.field public h:Ljava/lang/String;

.field private i:Lben;

.field private j:J

.field private k:[B

.field private l:Ljava/lang/String;

.field private m:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lben;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbfe;->d:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lbfe;->j:J

    return-void
.end method

.method private a(Lbei;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lbfe;->i:Lben;

    invoke-virtual {p1}, Lbei;->d()Lbem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lbem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbef;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lbem;->a()Lcom/rsanalyticssdk/b/a/c;

    move-result-object v1

    sget-object v2, Lcom/rsanalyticssdk/b/a/c;->b:Lcom/rsanalyticssdk/b/a/c;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lbem;->b()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lbem;->b()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lbei;->d()Lbem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbfe;->a(Lbem;)V

    invoke-virtual {p0}, Lbfe;->g()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lbfe;->j()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lbei;->c()Lbej;

    move-result-object v0

    check-cast v0, Lbey;

    invoke-virtual {v0}, Lbey;->a()Lbem;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lbey;->a()Lbem;

    move-result-object v0

    invoke-virtual {v0}, Lbem;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbef;->b(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lbfe;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lbfe;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-static {}, Lbec;->a()Lbec;

    move-result-object v0

    invoke-virtual {v0}, Lbec;->d()V

    invoke-virtual {p0}, Lbfe;->g()V

    goto :goto_0
.end method

.method private a(Lbfe$a;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lbfe;->i:Lben;

    invoke-virtual {p1}, Lbfe$a;->d()Lbem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbfe$a;->d()Lbem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbfe;->a(Lbem;)V

    invoke-virtual {p0}, Lbfe;->g()V

    const-string/jumbo v0, "load track data fail! %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lbfe$a;->d()Lbem;

    move-result-object v3

    invoke-virtual {v3}, Lbem;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbef;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lbfe$a;->d:[B

    iput-object v0, p0, Lbfe;->k:[B

    iget-object v0, p1, Lbfe$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lbfe;->l:Ljava/lang/String;

    iget-object v0, p1, Lbfe$a;->i:Lorg/json/JSONArray;

    iput-object v0, p0, Lbfe;->m:Lorg/json/JSONArray;

    invoke-direct {p0}, Lbfe;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lbfe;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lbfe;->g()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lbfe;->i()V

    goto :goto_0
.end method

.method static synthetic a(Lbfe;)V
    .locals 0

    invoke-direct {p0}, Lbfe;->h()V

    return-void
.end method

.method static synthetic a(Lbfe;Lbei;)V
    .locals 0

    invoke-direct {p0, p1}, Lbfe;->a(Lbei;)V

    return-void
.end method

.method static synthetic a(Lbfe;Lbfe$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbfe;->a(Lbfe$a;)V

    return-void
.end method

.method static synthetic b(Lbfe;)V
    .locals 0

    invoke-direct {p0}, Lbfe;->k()V

    return-void
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lbfe;->k:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfe;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 1

    iget-object v0, p0, Lbfe;->m:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 2

    invoke-virtual {p0}, Lbfe;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lbfe$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbfe$a;-><init>(Lbfe;Lbfe$1;)V

    iget-boolean v1, p0, Lbfe;->c:Z

    iput-boolean v1, v0, Lbfe$a;->b:Z

    iget-object v1, p0, Lbfe;->h:Ljava/lang/String;

    iput-object v1, v0, Lbfe$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lbfe;->i:Lben;

    iget-object v0, p0, Lbfe;->i:Lben;

    new-instance v1, Lbfe$2;

    invoke-direct {v1, p0}, Lbfe$2;-><init>(Lbfe;)V

    invoke-virtual {v0, v1}, Lben;->a(Lbeo;)V

    iget-object v0, p0, Lbfe;->i:Lben;

    invoke-virtual {v0}, Lben;->a()V

    goto :goto_0
.end method

.method private i()V
    .locals 5

    invoke-virtual {p0}, Lbfe;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lbey;

    invoke-direct {v0}, Lbey;-><init>()V

    iget-object v1, p0, Lbfe;->a:Ljava/lang/String;

    iput-object v1, v0, Lbey;->g:Ljava/lang/String;

    iget-object v1, p0, Lbfe;->b:Ljava/lang/String;

    iput-object v1, v0, Lbey;->h:Ljava/lang/String;

    iget-object v1, p0, Lbfe;->m:Lorg/json/JSONArray;

    iput-object v1, v0, Lbey;->e:Lorg/json/JSONArray;

    invoke-direct {p0}, Lbfe;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "%s.crash"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbfe;->k:[B

    invoke-virtual {v0, v1, v2}, Lbey;->a(Ljava/lang/String;[B)V

    iget-object v2, p0, Lbfe;->l:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3, v1}, Lbey;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v1, Lbei;

    invoke-direct {v1}, Lbei;-><init>()V

    invoke-virtual {v1, v0}, Lbei;->a(Lbej;)V

    new-instance v0, Lbfe$3;

    invoke-direct {v0, p0}, Lbfe$3;-><init>(Lbfe;)V

    invoke-virtual {v1, v0}, Lbei;->a(Lbeo;)V

    iput-object v1, p0, Lbfe;->i:Lben;

    iget-object v0, p0, Lbfe;->i:Lben;

    invoke-virtual {v0}, Lben;->a()V

    goto :goto_0
.end method

.method private j()V
    .locals 6

    const-wide/32 v4, 0x9c40

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbfe$4;

    invoke-direct {v1, p0}, Lbfe$4;-><init>(Lbfe;)V

    iget-wide v2, p0, Lbfe;->j:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-wide v0, p0, Lbfe;->j:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lbfe;->j:J

    iget-wide v0, p0, Lbfe;->j:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iput-wide v4, p0, Lbfe;->j:J

    :cond_0
    return-void
.end method

.method private k()V
    .locals 0

    invoke-direct {p0}, Lbfe;->i()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-wide v0, p0, Lbfe;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbfe$1;

    invoke-direct {v1, p0}, Lbfe$1;-><init>(Lbfe;)V

    iget-wide v2, p0, Lbfe;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lbfe;->h()V

    goto :goto_0
.end method
