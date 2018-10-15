.class public Laoh;
.super Ljava/lang/Object;
.source "MiguTokenGrayCtrlManager.java"

# interfaces
.implements Lvp$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoh$a;
    }
.end annotation


# instance fields
.field public final a:I

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "MiguTokenGrayCtrlManager"

    iput-object v0, p0, Laoh;->b:Ljava/lang/String;

    .line 24
    iput v1, p0, Laoh;->a:I

    .line 25
    iput v1, p0, Laoh;->c:I

    .line 26
    const/16 v0, 0xe

    iput v0, p0, Laoh;->d:I

    return-void
.end method

.method public static a()Laoh;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Laoh$a;->a()Laoh;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 53
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_MIGU_TOKEN_CTRL"

    invoke-virtual {v1, v2, p1}, Lil;->a(Ljava/lang/String;I)V

    .line 55
    if-nez p1, :cond_0

    .line 56
    const-string/jumbo v1, "MiguTokenGrayCtrlManager"

    const-string/jumbo v2, "Migu clear all info"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-static {}, Laod;->a()Laod;

    move-result-object v1

    invoke-virtual {v1}, Laod;->i()V

    .line 61
    :try_start_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 62
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeAllCookie()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_MIGU_TOKEN_CTRL"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Laoh;->c:I

    .line 69
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MiguTokenGrayCtrlManager"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public b()I
    .locals 4

    .prologue
    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 75
    .local v0, "version":I
    iget v1, p0, Laoh;->d:I

    if-ge v0, v1, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 82
    :goto_0
    return v1

    .line 79
    :cond_0
    const/4 v1, -0x1

    iget v2, p0, Laoh;->c:I

    if-ne v1, v2, :cond_1

    .line 80
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.IFLY_MIGU_TOKEN_CTRL"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lil;->b(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Laoh;->c:I

    .line 82
    :cond_1
    iget v1, p0, Laoh;->c:I

    goto :goto_0
.end method

.method public onGetGrayCtrlSuccess(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string/jumbo v1, "120027"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "grayLocalTypeValue":Ljava/lang/String;
    const-string/jumbo v1, "MiguTokenGrayCtrlManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Migu Token gray is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Laoh;->a(I)V

    goto :goto_0

    .line 46
    :cond_2
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Laoh;->a(I)V

    goto :goto_0
.end method
