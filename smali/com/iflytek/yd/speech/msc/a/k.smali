.class public final Lcom/iflytek/yd/speech/msc/a/k;
.super Ljava/lang/Object;


# instance fields
.field private A:J

.field private B:Z

.field private C:Ljava/util/ArrayList;

.field private D:Ljava/util/ArrayList;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->C:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->D:Ljava/util/ArrayList;

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->g:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->h:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->i:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->j:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->k:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->l:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->m:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->n:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->o:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->p:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->q:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->r:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->s:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->t:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->u:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->y:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->z:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->v:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->w:I

    iput v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->x:I

    iput p1, p0, Lcom/iflytek/yd/speech/msc/a/k;->c:I

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static t()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->c:I

    return v0
.end method

.method protected final a(I)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/speech/msc/a/k;->q:I

    return-void
.end method

.method protected final a(III)V
    .locals 0

    iput p1, p0, Lcom/iflytek/yd/speech/msc/a/k;->v:I

    iput p2, p0, Lcom/iflytek/yd/speech/msc/a/k;->w:I

    iput p3, p0, Lcom/iflytek/yd/speech/msc/a/k;->x:I

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/k;->d:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected final b(I)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->C:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->C:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->D:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->t:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->t:I

    :cond_0
    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->u:I

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/k;->e:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/k;->a:Ljava/lang/String;

    return-void
.end method

.method protected final d()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss SSS"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->f:Ljava/lang/String;

    return-void
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/speech/msc/a/k;->b:Ljava/lang/String;

    return-void
.end method

.method protected final e()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->h:I

    return-void
.end method

.method protected final f()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->g:I

    return-void
.end method

.method protected final g()V
    .locals 4

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->i:I

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->i:I

    :cond_0
    return-void
.end method

.method protected final h()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->j:I

    return-void
.end method

.method protected final i()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->k:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->k:I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->B:Z

    return-void
.end method

.method protected final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->B:Z

    return v0
.end method

.method protected final k()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->k:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->k:I

    :cond_0
    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->B:Z

    return-void
.end method

.method protected final l()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->m:I

    return-void
.end method

.method protected final m()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->n:I

    return-void
.end method

.method protected final n()V
    .locals 4

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->o:I

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->o:I

    :cond_0
    return-void
.end method

.method protected final o()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->p:I

    return-void
.end method

.method protected final p()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->r:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->r:I

    :cond_0
    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->s:I

    return-void
.end method

.method protected final q()V
    .locals 4

    iget v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->y:I

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->y:I

    :cond_0
    return-void
.end method

.method protected final r()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->A:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->z:I

    iget v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->y:I

    if-gez v1, :cond_0

    iput v0, p0, Lcom/iflytek/yd/speech/msc/a/k;->y:I

    :cond_0
    return-void
.end method

.method protected final s()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "app_caller_appid"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string/jumbo v1, "app_cver"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const-string/jumbo v1, "app_ssb"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->g:I

    if-ltz v2, :cond_2

    :try_start_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    const-string/jumbo v1, "app_start"

    iget-object v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->f:Ljava/lang/String;

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    const-string/jumbo v1, "app_stop"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->h:I

    if-ltz v2, :cond_4

    :try_start_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_4
    :goto_4
    const-string/jumbo v1, "app_fau"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->i:I

    if-ltz v2, :cond_5

    :try_start_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    :goto_5
    const-string/jumbo v1, "app_lau"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->j:I

    if-ltz v2, :cond_6

    :try_start_6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_6
    :goto_6
    const-string/jumbo v1, "app_frs"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->k:I

    if-ltz v2, :cond_7

    :try_start_7
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_7
    :goto_7
    const-string/jumbo v1, "app_lrs"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->l:I

    if-ltz v2, :cond_8

    :try_start_8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_8
    :goto_8
    const-string/jumbo v1, "rec_open"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->m:I

    if-ltz v2, :cond_9

    :try_start_9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    :cond_9
    :goto_9
    const-string/jumbo v1, "rec_ready"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->n:I

    if-ltz v2, :cond_a

    :try_start_a
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    :cond_a
    :goto_a
    const-string/jumbo v1, "rec_start"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->o:I

    if-ltz v2, :cond_b

    :try_start_b
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    :cond_b
    :goto_b
    const-string/jumbo v1, "rec_close"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->p:I

    if-ltz v2, :cond_c

    :try_start_c
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    :cond_c
    :goto_c
    const-string/jumbo v1, "rec_ustop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/iflytek/yd/speech/msc/a/k;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    :try_start_d
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    :cond_d
    :goto_d
    const-string/jumbo v1, "vad_fau"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->r:I

    if-ltz v2, :cond_e

    :try_start_e
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_e

    :cond_e
    :goto_e
    const-string/jumbo v1, "vad_lau"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->s:I

    if-ltz v2, :cond_f

    :try_start_f
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_f

    :cond_f
    :goto_f
    const-string/jumbo v1, "vad_fos"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->t:I

    if-ltz v2, :cond_10

    :try_start_10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_10

    :cond_10
    :goto_10
    const-string/jumbo v1, "vad_eos"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->u:I

    if-ltz v2, :cond_11

    :try_start_11
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_11

    :cond_11
    :goto_11
    iget-object v1, p0, Lcom/iflytek/yd/speech/msc/a/k;->C:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_12
    const-string/jumbo v2, "vad_auwt"

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/k;->C:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/speech/msc/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v2, "vad_auwl"

    iget-object v3, p0, Lcom/iflytek/yd/speech/msc/a/k;->D:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3}, Lcom/iflytek/yd/speech/msc/a/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const-string/jumbo v1, "ui_frs"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->y:I

    if-ltz v2, :cond_12

    :try_start_13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_12

    :cond_12
    :goto_12
    const-string/jumbo v1, "ui_lrs"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->z:I

    if-ltz v2, :cond_13

    :try_start_14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_13

    :cond_13
    :goto_13
    const-string/jumbo v1, "vad_vpos"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->v:I

    if-ltz v2, :cond_14

    :try_start_15
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_14

    :cond_14
    :goto_14
    const-string/jumbo v1, "vad_spos"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->w:I

    if-ltz v2, :cond_15

    :try_start_16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_15

    :cond_15
    :goto_15
    const-string/jumbo v1, "vad_epos"

    iget v2, p0, Lcom/iflytek/yd/speech/msc/a/k;->x:I

    if-ltz v2, :cond_16

    :try_start_17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_16

    :cond_16
    :goto_16
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_9

    :catch_a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_a

    :catch_b
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_b

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_c

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d

    :catch_e
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_e

    :catch_f
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_f

    :catch_10
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_10

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_12
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_12

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_13

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_14

    :catch_15
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_15

    :catch_16
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_16
.end method
