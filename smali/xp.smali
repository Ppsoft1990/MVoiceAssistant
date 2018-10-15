.class public Lxp;
.super Lwo;
.source "TrafficScheduleOpLogHelper.java"


# static fields
.field private static b:Lxp;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxp;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    sget-object v0, Lxp;->b:Lxp;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lxp;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lxp;->b:Lxp;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lxp;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lxp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxp;->b:Lxp;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lxp;->b:Lxp;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "TrafficScheduleOpLogHelper"

    const-string/jumbo v1, "recordTrafficScheduleInfo"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lxp;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 54
    return-void
.end method
