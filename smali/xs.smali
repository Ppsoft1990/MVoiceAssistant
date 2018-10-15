.class public Lxs;
.super Lwp;
.source "VersionOpLogHelper.java"


# static fields
.field private static c:Lxs;


# instance fields
.field private b:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lwp;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lxs;->b:I

    .line 36
    return-void
.end method

.method public static a(Landroid/content/Context;)Lxs;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lxs;->c:Lxs;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lxs;

    invoke-direct {v0, p0}, Lxs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lxs;->c:Lxs;

    .line 31
    :cond_0
    sget-object v0, Lxs;->c:Lxs;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "updateFlag"    # I

    .prologue
    .line 43
    const-string/jumbo v0, "BlcOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClickUpdate | updateFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput p1, p0, Lxs;->b:I

    .line 45
    return-void
.end method

.method public c()Z
    .locals 7

    .prologue
    .line 55
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v1, "record()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lxs;->b()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "click_update"

    iget v2, p0, Lxs;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    const-string/jumbo v1, "SD49001"

    invoke-virtual {p0}, Lxs;->a()J

    move-result-wide v2

    const-string/jumbo v4, "success"

    .line 63
    invoke-virtual {p0}, Lxs;->b()Ljava/util/Map;

    move-result-object v5

    move-object v0, p0

    .line 62
    invoke-virtual/range {v0 .. v5}, Lxs;->a(Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;)V

    .line 64
    const/4 v0, 0x0

    return v0

    .line 58
    :catch_0
    move-exception v6

    .line 59
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "BlcOpLogHelper"

    const-string/jumbo v1, ""

    invoke-virtual {v6}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
