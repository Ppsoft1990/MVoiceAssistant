.class public Lbhe;
.super Ljava/lang/Object;


# static fields
.field static a:Lbhg;

.field private static d:Lbhc;

.field private static e:Lorg/json/JSONObject;


# instance fields
.field b:Ljava/lang/Integer;

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lbhn;->b()Lbhc;

    move-result-object v0

    sput-object v0, Lbhe;->d:Lbhc;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lbhe;->e:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbhe;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lbhe;->c:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lbhe;->a(Landroid/content/Context;)Lbhg;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbhn;->m(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lbhe;->b:Ljava/lang/Integer;

    invoke-static {p1}, Lbfu;->a(Landroid/content/Context;)Lbfu;

    move-result-object v0

    invoke-virtual {v0}, Lbfu;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhe;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lbhe;->d:Lbhc;

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static declared-synchronized a(Landroid/content/Context;)Lbhg;
    .locals 4

    const-class v1, Lbhe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbhe;->a:Lbhg;

    if-nez v0, :cond_0

    new-instance v0, Lbhg;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lbhg;-><init>(Landroid/content/Context;Lbhf;)V

    sput-object v0, Lbhe;->a:Lbhg;

    :cond_0
    sget-object v0, Lbhe;->a:Lbhg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/Thread;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v1, Lbhe;->a:Lbhg;

    if-eqz v1, :cond_0

    sget-object v1, Lbhe;->a:Lbhg;

    invoke-virtual {v1, v0, p2}, Lbhg;->a(Lorg/json/JSONObject;Ljava/lang/Thread;)V

    :cond_0
    const-string/jumbo v1, "cn"

    iget-object v2, p0, Lbhe;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbht;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lbhe;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "tn"

    iget-object v2, p0, Lbhe;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-nez p2, :cond_3

    const-string/jumbo v1, "ev"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    sget-object v0, Lbhe;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    sget-object v0, Lbhe;->e:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string/jumbo v0, "eva"

    sget-object v1, Lbhe;->e:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string/jumbo v1, "errkv"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lbhe;->d:Lbhc;

    invoke-virtual {v1, v0}, Lbhc;->b(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
