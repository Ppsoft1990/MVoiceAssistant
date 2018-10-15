.class public Lwy;
.super Lwo;
.source "CommonOpLogHelper.java"


# static fields
.field private static b:Lwy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public static a(Landroid/content/Context;)Lwy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lwy;->b:Lwy;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lwy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lwy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwy;->b:Lwy;

    .line 23
    :cond_0
    sget-object v0, Lwy;->b:Lwy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lwy;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 36
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "opCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lwy;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 45
    return-void
.end method
