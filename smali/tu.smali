.class public Ltu;
.super Ljava/lang/Object;
.source "MutualActivateGrayCtrlManager.java"

# interfaces
.implements Lvp$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltu$a;
    }
.end annotation


# static fields
.field private static b:Landroid/content/Context;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "MutualActivateGrayCtrlManager"

    iput-object v0, p0, Ltu;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ltu;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Ltu;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 29
    sput-object p0, Ltu;->b:Landroid/content/Context;

    .line 31
    :cond_0
    invoke-static {}, Ltu$a;->a()Ltu;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_MUTUAL_ACTIVATE_CTRL"

    invoke-virtual {v0, v1, p1}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Ltu;->b()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "state":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmcc.IFLY_MUTUAL_ACTIVATE_CTRL"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lil;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 36
    .local p1, "grayHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string/jumbo v1, "120031"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    .local v0, "mutualActivate":Ljava/lang/String;
    const-string/jumbo v1, "MutualActivateGrayCtrlManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mutual activate gray is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-nez v0, :cond_1

    .line 42
    const-string/jumbo v0, ""

    .line 44
    :cond_1
    invoke-direct {p0, v0}, Ltu;->a(Ljava/lang/String;)V

    .line 46
    new-instance v1, Ltv;

    sget-object v2, Ltu;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Ltv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ltv;->a()V

    goto :goto_0
.end method
