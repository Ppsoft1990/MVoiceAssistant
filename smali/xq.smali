.class public Lxq;
.super Lwo;
.source "TranslateOpLogHelper.java"


# static fields
.field public static b:Lxq;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxq;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    sget-object v0, Lxq;->b:Lxq;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lxq;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lxq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxq;->b:Lxq;

    .line 26
    :cond_0
    sget-object v0, Lxq;->b:Lxq;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/iflytek/viafly/translate/TranslateMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/iflytek/viafly/translate/TranslateMode;

    .prologue
    const/4 v2, 0x2

    .line 163
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Lcom/iflytek/viafly/translate/TranslateMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "modeSub":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v2, v1, :cond_0

    .line 166
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_0
    invoke-virtual {p0, v0}, Lxq;->l(Ljava/lang/String;)V

    .line 170
    .end local v0    # "modeSub":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 43
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_scene"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string/jumbo v1, "FT89530"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 53
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 61
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_scene"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "FT89532"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_scene"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "FT89534"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "FT89536"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string/jumbo v1, "FT89537"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_scene"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v1, "FT89538"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 103
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string/jumbo v1, "FT90208"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 6
    .param p1, "scene"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_scene"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string/jumbo v1, "FT90209"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 123
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 134
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string/jumbo v1, "FT90203"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 6
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_entry"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v1, "FT89541"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 6
    .param p1, "position"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_position"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v1, "FT89542"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 156
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_operation"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v1, "FT89543"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 180
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 6
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "d_error"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string/jumbo v1, "FT89544"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lxq;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 190
    return-void
.end method
