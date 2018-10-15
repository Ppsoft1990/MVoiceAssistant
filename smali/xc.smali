.class public Lxc;
.super Lwo;
.source "HistoryItemOpLogHelper.java"


# static fields
.field private static b:Lxc;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxc;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lxc;->b:Lxc;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lxc;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lxc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxc;->b:Lxc;

    .line 31
    :cond_0
    sget-object v0, Lxc;->b:Lxc;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 80
    :cond_0
    const-string/jumbo v0, "HistoryItemOpLogHelper"

    const-string/jumbo v1, "appendFDOpLog | operation code or result is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lxc;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 93
    .local p2, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 94
    const-string/jumbo v0, "HistoryItemOpLogHelper"

    const-string/jumbo v1, "appendFDOpLog | operation code is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    const-string/jumbo v0, "success"

    invoke-virtual {p0, p1, v0, p2}, Lxc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
