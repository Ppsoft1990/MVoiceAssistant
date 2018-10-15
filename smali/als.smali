.class public Lals;
.super Ljava/lang/Object;
.source "HomeSignInDataHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lalt;

.field private c:Lalw;

.field private d:Ljava/lang/String;

.field private e:Lyn;


# direct methods
.method public constructor <init>(Lalt;)V
    .locals 1
    .param p1, "listener"    # Lalt;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "HomeSignInDataHelper"

    iput-object v0, p0, Lals;->a:Ljava/lang/String;

    .line 57
    new-instance v0, Lals$1;

    invoke-direct {v0, p0}, Lals$1;-><init>(Lals;)V

    iput-object v0, p0, Lals;->e:Lyn;

    .line 30
    iput-object p1, p0, Lals;->b:Lalt;

    .line 31
    return-void
.end method

.method static synthetic a(Lals;)Lalt;
    .locals 1
    .param p0, "x0"    # Lals;

    .prologue
    .line 20
    iget-object v0, p0, Lals;->b:Lalt;

    return-object v0
.end method

.method static synthetic b(Lals;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lals;

    .prologue
    .line 20
    iget-object v0, p0, Lals;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 34
    const-string/jumbo v0, "HomeSignInDataHelper"

    const-string/jumbo v1, "requestSignInfo begin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lalw;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "getsigninfo2"

    iget-object v3, p0, Lals;->e:Lyn;

    invoke-direct {v0, v1, v2, v3}, Lalw;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lals;->c:Lalw;

    .line 36
    iget-object v0, p0, Lals;->c:Lalw;

    invoke-virtual {v0}, Lalw;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)J
    .locals 4
    .param p1, "opCode"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string/jumbo v0, "HomeSignInDataHelper"

    const-string/jumbo v1, "requestAddSign begin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object p1, p0, Lals;->d:Ljava/lang/String;

    .line 42
    new-instance v0, Lalw;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "addscore2"

    iget-object v3, p0, Lals;->e:Lyn;

    invoke-direct {v0, v1, v2, v3}, Lalw;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    invoke-virtual {v0, p1}, Lalw;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(J)V
    .locals 1
    .param p1, "requestId"    # J

    .prologue
    .line 52
    iget-object v0, p0, Lals;->c:Lalw;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lals;->c:Lalw;

    invoke-virtual {v0, p1, p2}, Lalw;->cancelRequest(J)V

    .line 55
    :cond_0
    return-void
.end method

.method public b()J
    .locals 4

    .prologue
    .line 46
    const-string/jumbo v0, "HomeSignInDataHelper"

    const-string/jumbo v1, "requestOpCodes begin"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Lalw;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "getopcodesofscore"

    iget-object v3, p0, Lals;->e:Lyn;

    invoke-direct {v0, v1, v2, v3}, Lalw;-><init>(Landroid/content/Context;Ljava/lang/String;Lyn;)V

    iput-object v0, p0, Lals;->c:Lalw;

    .line 48
    iget-object v0, p0, Lals;->c:Lalw;

    invoke-virtual {v0}, Lalw;->b()J

    move-result-wide v0

    return-wide v0
.end method
