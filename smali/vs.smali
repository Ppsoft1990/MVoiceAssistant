.class public final Lvs;
.super Ljava/lang/Object;
.source "BlcPermissionAdapter.java"

# interfaces
.implements Lom;


# static fields
.field private static a:Lvs;


# instance fields
.field private b:Lok;

.field private c:Lil;

.field private d:J


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lvs;->d:J

    .line 44
    invoke-static {}, Lon;->a()Lok;

    move-result-object v0

    iput-object v0, p0, Lvs;->b:Lok;

    .line 45
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    iput-object v0, p0, Lvs;->c:Lil;

    .line 46
    iget-object v0, p0, Lvs;->c:Lil;

    const-string/jumbo v1, "com.iflytek.cmcc.LAST_GET_PERMISSION"

    invoke-virtual {v0, v1}, Lil;->f(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lvs;->d:J

    .line 47
    iget-wide v0, p0, Lvs;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 48
    const-string/jumbo v0, "BlcPermissionAdapter"

    const-string/jumbo v1, "loadSavePermission date error,reset to now."

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvs;->d:J

    .line 51
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lvs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lvs;->a:Lvs;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lvs;

    invoke-direct {v0, p0}, Lvs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvs;->a:Lvs;

    .line 40
    :cond_0
    sget-object v0, Lvs;->a:Lvs;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lvs;->d:J

    sub-long v0, v2, v4

    .line 55
    .local v0, "interval":J
    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 56
    iget-object v2, p0, Lvs;->b:Lok;

    if-eqz v2, :cond_0

    .line 57
    iget-object v2, p0, Lvs;->b:Lok;

    invoke-interface {v2, p0}, Lok;->a(Lom;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string/jumbo v2, "BlcPermissionAdapter"

    const-string/jumbo v3, "requestPermission interval < ONE_DAY"

    invoke-static {v2, v3}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .param p1, "errorCode"    # I

    .prologue
    .line 73
    const-string/jumbo v0, "BlcPermissionAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPermissionError errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvs;->d:J

    .line 76
    iget-object v0, p0, Lvs;->c:Lil;

    const-string/jumbo v1, "com.iflytek.cmcc.LAST_GET_PERMISSION"

    iget-wide v2, p0, Lvs;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    .line 78
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/common/permission/data/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/common/permission/data/Permission;>;"
    const-string/jumbo v0, "BlcPermissionAdapter"

    const-string/jumbo v1, "onPermissionResult"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lvs;->d:J

    .line 68
    iget-object v0, p0, Lvs;->c:Lil;

    const-string/jumbo v1, "com.iflytek.cmcc.LAST_GET_PERMISSION"

    iget-wide v2, p0, Lvs;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lil;->a(Ljava/lang/String;J)V

    .line 69
    return-void
.end method
