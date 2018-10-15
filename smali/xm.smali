.class public Lxm;
.super Lwo;
.source "SmartScheduleLogHelper.java"


# static fields
.field private static c:Lxm;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 22
    const-string/jumbo v0, "SmartScheduleLogHelper"

    iput-object v0, p0, Lxm;->b:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxm;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lxm;->c:Lxm;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lxm;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lxm;->c:Lxm;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lxm;

    invoke-direct {v0, p0}, Lxm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxm;->c:Lxm;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lxm;->c:Lxm;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 141
    const-string/jumbo v1, "FT77011"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxm;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v5, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "80003"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const-string/jumbo v0, "d_type"

    const-string/jumbo v1, "airPollution"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :goto_0
    const-string/jumbo v1, "FT77001"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxm;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 105
    return-void

    .line 93
    :cond_0
    const-string/jumbo v0, "80002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string/jumbo v0, "d_type"

    const-string/jumbo v1, "tempChange"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 95
    :cond_1
    const-string/jumbo v0, "DailyTrafficSchedule"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const-string/jumbo v0, "d_type"

    const-string/jumbo v1, "dayFlow"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_2
    const-string/jumbo v0, "TrafficSchedule"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const-string/jumbo v0, "d_type"

    const-string/jumbo v1, "monthFlow"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_3
    const-string/jumbo v0, "80001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const-string/jumbo v0, "d_type"

    const-string/jumbo v1, "abnormalWeather"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_4
    const-string/jumbo v0, "d_type"

    const-string/jumbo v1, "hotEvent"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

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
    .line 115
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lxm;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT77002"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lxm;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 109
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "FT77003"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lxm;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 113
    return-void
.end method
