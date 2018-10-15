.class public Laof;
.super Ljava/lang/Object;
.source "MiguSunGrayCtrlManager.java"

# interfaces
.implements Lvp$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laof$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, "MiguSunGrayCtrlManager"

    iput-object v0, p0, Laof;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Laof;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Laof$a;->a()Laof;

    move-result-object v0

    return-object v0
.end method

.method private a(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 43
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_MIGU_SUN_CTRL"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Z)V

    .line 44
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_MIGU_SUN_CTRL"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
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
    .line 28
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string/jumbo v1, "120025"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 33
    .local v0, "grayLocalTypeValue":Ljava/lang/String;
    const-string/jumbo v1, "MiguSunGrayCtrlManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SUN gray is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Laof;->a(Z)V

    goto :goto_0

    .line 36
    :cond_2
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Laof;->a(Z)V

    goto :goto_0
.end method
