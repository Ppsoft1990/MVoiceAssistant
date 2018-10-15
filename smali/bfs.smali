.class public Lbfs;
.super Ljava/lang/Object;


# static fields
.field static volatile a:I

.field static volatile b:J

.field static volatile c:J

.field private static d:Lbhh;

.field private static volatile e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbfw;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile h:J

.field private static volatile i:J

.field private static volatile j:J

.field private static k:Ljava/lang/String;

.field private static volatile l:I

.field private static volatile m:Ljava/lang/String;

.field private static volatile n:Ljava/lang/String;

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static q:Lbhc;

.field private static r:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static volatile s:Z

.field private static t:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbfs;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbfs;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lbfs;->g:Ljava/util/Map;

    sput-wide v2, Lbfs;->h:J

    sput-wide v2, Lbfs;->i:J

    sput-wide v2, Lbfs;->j:J

    const-string/jumbo v0, ""

    sput-object v0, Lbfs;->k:Ljava/lang/String;

    sput v4, Lbfs;->l:I

    const-string/jumbo v0, ""

    sput-object v0, Lbfs;->m:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lbfs;->n:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbfs;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lbfs;->p:Ljava/util/Map;

    invoke-static {}, Lbhn;->b()Lbhc;

    move-result-object v0

    sput-object v0, Lbfs;->q:Lbhc;

    sput-object v5, Lbfs;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    const/4 v0, 0x1

    sput-boolean v0, Lbfs;->s:Z

    sput v4, Lbfs;->a:I

    sput-wide v2, Lbfs;->b:J

    sput-object v5, Lbfs;->t:Landroid/content/Context;

    sput-wide v2, Lbfs;->c:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;ZLbft;)I
    .locals 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz p1, :cond_9

    sget-wide v6, Lbfs;->i:J

    sub-long v6, v4, v6

    invoke-static {}, Lbfq;->d()I

    move-result v0

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_9

    move v0, v1

    :goto_0
    sput-wide v4, Lbfs;->i:J

    sget-wide v6, Lbfs;->j:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    invoke-static {}, Lbhn;->c()J

    move-result-wide v6

    sput-wide v6, Lbfs;->j:J

    :cond_0
    sget-wide v6, Lbfs;->j:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    invoke-static {}, Lbhn;->c()J

    move-result-wide v4

    sput-wide v4, Lbfs;->j:J

    invoke-static {p0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbgp;->b(Landroid/content/Context;)Lbhd;

    move-result-object v0

    invoke-virtual {v0}, Lbhd;->d()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbgp;->b(Landroid/content/Context;)Lbhd;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbhd;->a(I)V

    :cond_1
    invoke-static {v2}, Lbfq;->c(I)V

    sput v2, Lbfs;->a:I

    invoke-static {v2}, Lbhn;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbfs;->k:Ljava/lang/String;

    move v0, v1

    :cond_2
    sget-object v3, Lbfs;->k:Ljava/lang/String;

    invoke-static {p2}, Lbhn;->a(Lbft;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lbft;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lbfs;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    sget-object v4, Lbfs;->p:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :goto_1
    if-eqz v1, :cond_4

    invoke-static {p2}, Lbhn;->a(Lbft;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lbfq;->q()I

    move-result v0

    invoke-static {}, Lbfq;->o()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-static {p0}, Lbhn;->x(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lbfs;->a(Landroid/content/Context;Lbft;)V

    :goto_2
    sget-object v0, Lbfs;->p:Ljava/util/Map;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-boolean v0, Lbfs;->s:Z

    if-eqz v0, :cond_5

    invoke-static {p0}, Lbfs;->f(Landroid/content/Context;)V

    sput-boolean v2, Lbfs;->s:Z

    :cond_5
    sget v0, Lbfs;->l:I

    return v0

    :cond_6
    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "Exceed StatConfig.getMaxDaySessionNumbers()."

    invoke-virtual {v0, v1}, Lbhc;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-static {p0, p2}, Lbfs;->a(Landroid/content/Context;Lbft;)V

    goto :goto_2

    :cond_8
    move v1, v0

    goto :goto_1

    :cond_9
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    sput-wide p0, Lbfs;->h:J

    return-wide p0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    sget-object p0, Lbfs;->t:Landroid/content/Context;

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    sput-object p0, Lbfs;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lbfq;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbfs;->q:Lbhc;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "commitEvents, maxNumber="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbhc;->b(Ljava/lang/Object;)V

    :cond_2
    invoke-static {p0}, Lbfs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The Context of StatService.commitEvents() can not be null!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    if-lt p1, v1, :cond_4

    if-nez p1, :cond_5

    :cond_4
    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The maxNumber of StatService.commitEvents() should be -1 or bigger than 0."

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lbfs;->t:Landroid/content/Context;

    invoke-static {v1}, Lbfu;->a(Landroid/content/Context;)Lbfu;

    move-result-object v1

    invoke-virtual {v1}, Lbfu;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lbfs;->d:Lbhh;

    new-instance v2, Lbgd;

    invoke-direct {v2, v0, p1}, Lbgd;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Lbhh;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Lbft;)V
    .locals 4

    invoke-static {p0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lbfq;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "start new session."

    invoke-virtual {v0, v1}, Lbhc;->h(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lbfs;->l:I

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lbhn;->a()I

    move-result v0

    sput v0, Lbfs;->l:I

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lbfq;->b(I)V

    invoke-static {}, Lbfq;->p()V

    new-instance v0, Lbgl;

    new-instance v1, Lbgc;

    sget v2, Lbfs;->l:I

    invoke-static {}, Lbfs;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, p1}, Lbgc;-><init>(Landroid/content/Context;ILorg/json/JSONObject;Lbft;)V

    invoke-direct {v0, v1}, Lbgl;-><init>(Lbfy;)V

    invoke-virtual {v0}, Lbgl;->a()V

    :cond_3
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lbft;)V
    .locals 4

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lbfs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The Context or pageName of StatService.trackBeginPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lbfs;->d:Lbhh;

    new-instance v3, Lbii;

    invoke-direct {v3, v1, v0, p2}, Lbii;-><init>(Ljava/lang/String;Landroid/content/Context;Lbft;)V

    invoke-virtual {v2, v3}, Lbhh;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;Lbft;)V
    .locals 4

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lbfs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The Context of StatService.trackCustomEvent() can not be null!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lbfs;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The event_id of StatService.trackCustomEvent() can not be null or empty."

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lbfw;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lbfw;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Properties;)V

    invoke-static {v0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lbfs;->d:Lbhh;

    new-instance v3, Lbih;

    invoke-direct {v3, v0, p3, v1}, Lbih;-><init>(Landroid/content/Context;Lbft;Lbfw;)V

    invoke-virtual {v2, v3}, Lbhh;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lbfs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The Context of StatService.reportSdkSelfException() can not be null!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lbfs;->d:Lbhh;

    new-instance v2, Lbif;

    invoke-direct {v2, v0, p1}, Lbif;-><init>(Landroid/content/Context;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lbhh;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a()Z
    .locals 2

    sget v0, Lbfs;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbfs;->b:J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lbft;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lbfq;->c()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lbfs;->q:Lbhc;

    const-string/jumbo v2, "MTA StatService is disable."

    invoke-virtual {v1, v2}, Lbhc;->e(Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v1, "2.0.3"

    invoke-static {}, Lbfq;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lbfs;->q:Lbhc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "MTA SDK version, current: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ,required: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbhc;->h(Ljava/lang/Object;)V

    :cond_1
    if-eqz p0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const-string/jumbo v1, "Context or mtaSdkVersion in StatService.startStatService() is null, please check it!"

    sget-object v2, Lbfs;->q:Lbhc;

    invoke-virtual {v2, v1}, Lbhc;->e(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lbfq;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lbfs;->q:Lbhc;

    invoke-virtual {v2, v1}, Lbhc;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {v1}, Lbhn;->b(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p2}, Lbhn;->b(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "MTA SDK version conflicted, current: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",required: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". please delete the current SDK and download the latest one. official website: http://mta.qq.com/ or http://mta.oa.com/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbfs;->q:Lbhc;

    invoke-virtual {v2, v1}, Lbhc;->e(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lbfq;->a(Z)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p0}, Lbfq;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string/jumbo v1, "-"

    invoke-static {v1}, Lbfq;->a(Ljava/lang/String;)V

    :cond_6
    if-eqz p1, :cond_7

    invoke-static {p0, p1}, Lbfq;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    invoke-static {p0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v1

    if-eqz v1, :cond_8

    sget-object v1, Lbfs;->d:Lbhh;

    new-instance v2, Lbgi;

    invoke-direct {v2, p0, p3}, Lbgi;-><init>(Landroid/content/Context;Lbft;)V

    invoke-virtual {v1, v2}, Lbhh;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1

    sget-object v0, Lbfs;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0
.end method

.method static b()Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lbfq;->b:Lbhx;

    iget v2, v2, Lbhx;->d:I

    if-eqz v2, :cond_0

    const-string/jumbo v2, "v"

    sget-object v3, Lbfq;->b:Lbhx;

    iget v3, v3, Lbhx;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    sget-object v2, Lbfq;->b:Lbhx;

    iget v2, v2, Lbhx;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lbfq;->a:Lbhx;

    iget v2, v2, Lbhx;->d:I

    if-eqz v2, :cond_1

    const-string/jumbo v2, "v"

    sget-object v3, Lbfq;->a:Lbhx;

    iget v3, v3, Lbhx;->d:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    sget-object v2, Lbfq;->a:Lbhx;

    iget v2, v2, Lbhx;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Lbfs;->q:Lbhc;

    invoke-virtual {v2, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static declared-synchronized b(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lbfs;

    monitor-enter v1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lbfs;->d:Lbhh;

    if-nez v0, :cond_0

    invoke-static {p0}, Lbfs;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lbfs;->t:Landroid/content/Context;

    new-instance v2, Lbhh;

    invoke-direct {v2}, Lbhh;-><init>()V

    sput-object v2, Lbfs;->d:Lbhh;

    const/4 v2, 0x0

    invoke-static {v2}, Lbhn;->a(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lbfs;->k:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lbfq;->i:J

    add-long/2addr v2, v4

    sput-wide v2, Lbfs;->h:J

    sget-object v2, Lbfs;->d:Lbhh;

    new-instance v3, Lbid;

    invoke-direct {v3, v0}, Lbid;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lbhh;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;Lbft;)V
    .locals 2

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lbfs;->d:Lbhh;

    new-instance v1, Lbgh;

    invoke-direct {v1, p0, p1}, Lbgh;-><init>(Landroid/content/Context;Lbft;)V

    invoke-virtual {v0, v1}, Lbhh;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lbft;)V
    .locals 4

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lbfs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The Context or pageName of StatService.trackEndPage() can not be null or empty!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lbfs;->d:Lbhh;

    new-instance v3, Lbgg;

    invoke-direct {v3, v0, v1, p2}, Lbgg;-><init>(Landroid/content/Context;Ljava/lang/String;Lbft;)V

    invoke-virtual {v2, v3}, Lbhh;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lbfs;->m:Ljava/lang/String;

    return-object p0
.end method

.method static c()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lbfs;->a:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lbfs;->b:J

    return-void
.end method

.method public static c(Landroid/content/Context;Lbft;)V
    .locals 2

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lbfs;->d:Lbhh;

    new-instance v1, Lbie;

    invoke-direct {v1, p0, p1}, Lbie;-><init>(Landroid/content/Context;Lbft;)V

    invoke-virtual {v0, v1}, Lbhh;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    sget-object v0, Lbfq;->c:Ljava/lang/String;

    invoke-static {p0, v0, v8, v9}, Lbhs;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v0, "2.0.3"

    invoke-static {v0}, Lbhn;->b(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v0, 0x1

    cmp-long v6, v4, v2

    if-gtz v6, :cond_0

    sget-object v0, Lbfs;->q:Lbhc;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "MTA is disable for current version:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",wakeup version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->e(Ljava/lang/Object;)V

    move v0, v1

    :cond_0
    sget-object v2, Lbfq;->d:Ljava/lang/String;

    invoke-static {p0, v2, v8, v9}, Lbhs;->a(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    sget-object v0, Lbfs;->q:Lbhc;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "MTA is disable for current time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",wakeup time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbhc;->e(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, Lbfq;->a(Z)V

    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method static d(Landroid/content/Context;)Lbhh;
    .locals 3

    sget-object v0, Lbfs;->d:Lbhh;

    if-nez v0, :cond_1

    const-class v1, Lbfs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbfs;->d:Lbhh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p0}, Lbfs;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    sget-object v0, Lbfs;->d:Lbhh;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v2, Lbfs;->q:Lbhc;

    invoke-virtual {v2, v0}, Lbhc;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lbfq;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lbfs;->n:Ljava/lang/String;

    return-object p0
.end method

.method static d()V
    .locals 2

    sget v0, Lbfs;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lbfs;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lbfs;->b:J

    sget-object v0, Lbfs;->t:Landroid/content/Context;

    invoke-static {v0}, Lbfs;->g(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    sget-object v0, Lbfs;->t:Landroid/content/Context;

    return-object v0
.end method

.method static e(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lbfs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The Context of StatService.sendNetworkDetector() can not be null!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lbfz;

    invoke-direct {v1, v0}, Lbfz;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lbia;->b(Landroid/content/Context;)Lbia;

    move-result-object v0

    new-instance v2, Lbig;

    invoke-direct {v2}, Lbig;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbia;->a(Lbfy;Lbhz;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lbfs;->q:Lbhc;

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic f()Lbhc;
    .locals 1

    sget-object v0, Lbfs;->q:Lbhc;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lbfs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lbfs;->d(Landroid/content/Context;)Lbhh;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lbfs;->d:Lbhh;

    new-instance v2, Lbge;

    invoke-direct {v2, v0}, Lbge;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lbhh;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic g()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lbfs;->r:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lbfq;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lbfq;->n:I

    if-lez v0, :cond_0

    invoke-static {p0}, Lbfs;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v0, Lbfs;->q:Lbhc;

    const-string/jumbo v1, "The Context of StatService.testSpeed() can not be null!"

    invoke-virtual {v0, v1}, Lbhc;->e(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lbgp;->a(Landroid/content/Context;)Lbgp;

    move-result-object v0

    invoke-virtual {v0}, Lbgp;->c()V

    goto :goto_0
.end method

.method static synthetic h()Ljava/util/Map;
    .locals 1

    sget-object v0, Lbfs;->o:Ljava/util/Map;

    return-object v0
.end method

.method static h(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0xea60

    invoke-static {}, Lbfq;->k()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lbfs;->c:J

    const-string/jumbo v0, "last_period_ts"

    sget-wide v2, Lbfs;->c:J

    invoke-static {p0, v0, v2, v3}, Lbhs;->b(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lbfs;->a(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lbfs;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lbfs;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k()J
    .locals 2

    sget-wide v0, Lbfs;->h:J

    return-wide v0
.end method

.method static synthetic l()Ljava/util/Map;
    .locals 1

    sget-object v0, Lbfs;->g:Ljava/util/Map;

    return-object v0
.end method
