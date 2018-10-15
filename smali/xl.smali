.class public Lxl;
.super Lwo;
.source "ResidenceTimeLogHelper.java"


# instance fields
.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lxl;->b:J

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxl;->c:Z

    .line 21
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .param p1, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 73
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 74
    const-string/jumbo v1, "page_name"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-object v0
.end method

.method private a(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lxl;->c:Z

    .line 81
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lxl;->c:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lxl;->a:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lxl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "ResidenceTimeLogHelper"

    const-string/jumbo v1, "startRecord already record | return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lxl;->a(Z)V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lxl;->b:J

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pageName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lxl;->a:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lxl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxl;->a(Z)V

    .line 58
    const-string/jumbo v1, "FD21000"

    iget-wide v2, p0, Lxl;->b:J

    const-string/jumbo v4, "success"

    .line 59
    invoke-direct {p0, p2}, Lxl;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lxl;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lxl;->b:J

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string/jumbo v0, "ResidenceTimeLogHelper"

    const-string/jumbo v1, "e ndRecord not start record | return"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
