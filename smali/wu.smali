.class public Lwu;
.super Lwo;
.source "AppAutoDownOpLogHelper.java"


# static fields
.field private static b:Lwu;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;)Lwu;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lwu;->b:Lwu;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lwu;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lwu;->b:Lwu;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lwu;

    invoke-direct {v0, p0}, Lwu;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwu;->b:Lwu;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    sget-object v0, Lwu;->b:Lwu;

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

.method private e(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_package_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "pgkname"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v1, "FT73001"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 47
    invoke-direct {p0, p1}, Lwu;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v5}, Lwu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .param p1, "pgkname"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v1, "FT73003"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 57
    invoke-direct {p0, p1}, Lwu;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 56
    invoke-virtual/range {v0 .. v5}, Lwu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 58
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .param p1, "pgkname"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string/jumbo v1, "FT73004"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 67
    invoke-direct {p0, p1}, Lwu;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 66
    invoke-virtual/range {v0 .. v5}, Lwu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 68
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6
    .param p1, "pgkname"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v1, "FT73002"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 77
    invoke-direct {p0, p1}, Lwu;->e(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v5}, Lwu;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 78
    return-void
.end method
