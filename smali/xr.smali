.class public Lxr;
.super Lwo;
.source "VersionAutoDownOpLogHelper.java"


# static fields
.field private static b:Lxr;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxr;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lxr;->b:Lxr;

    if-nez v0, :cond_1

    .line 30
    const-class v1, Lxr;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lxr;->b:Lxr;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lxr;

    invoke-direct {v0, p0}, Lxr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxr;->b:Lxr;

    .line 34
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lxr;->b:Lxr;

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
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
    .line 124
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    .line 127
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_lx_version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 46
    const-string/jumbo v1, "FT72001"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 47
    invoke-direct {p0, p1}, Lxr;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 46
    invoke-virtual/range {v0 .. v5}, Lxr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v1, "FT72002"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 57
    invoke-direct {p0, p1}, Lxr;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 56
    invoke-virtual/range {v0 .. v5}, Lxr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 58
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string/jumbo v1, "FT72003"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 67
    invoke-direct {p0, p1}, Lxr;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 66
    invoke-virtual/range {v0 .. v5}, Lxr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 68
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v1, "FT72004"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 77
    invoke-direct {p0, p1}, Lxr;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 76
    invoke-virtual/range {v0 .. v5}, Lxr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 80
    iget-object v0, p0, Lxr;->a:Landroid/content/Context;

    invoke-static {v0}, Lxb;->a(Landroid/content/Context;)Lxb;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->version_update:Lcom/iflytek/viafly/blc/log/entities/OpEntryType;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/log/entities/OpEntryType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxb;->a(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string/jumbo v1, "FT72005"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 90
    invoke-direct {p0, p1}, Lxr;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 89
    invoke-virtual/range {v0 .. v5}, Lxr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 91
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v1, "FT72006"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 100
    invoke-direct {p0, p1}, Lxr;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 99
    invoke-virtual/range {v0 .. v5}, Lxr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 101
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v1, "FT72007"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 110
    invoke-direct {p0, p1}, Lxr;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lxr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 111
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string/jumbo v1, "FT72008"

    const-wide/16 v2, 0x0

    const-string/jumbo v4, "success"

    .line 120
    invoke-direct {p0, p1}, Lxr;->i(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 119
    invoke-virtual/range {v0 .. v5}, Lxr;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 121
    return-void
.end method
