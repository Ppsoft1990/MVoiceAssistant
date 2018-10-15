.class public Lqz;
.super Ljava/lang/Object;
.source "MicDiscoverTabBizHandler.java"


# instance fields
.field private a:Lrb;

.field private b:Lra;

.field private c:Lrd;

.field private d:Lre;

.field private e:Lyn;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lqz$1;

    invoke-direct {v0, p0}, Lqz$1;-><init>(Lqz;)V

    iput-object v0, p0, Lqz;->e:Lyn;

    .line 31
    new-instance v0, Lrb;

    invoke-direct {v0}, Lrb;-><init>()V

    iput-object v0, p0, Lqz;->a:Lrb;

    .line 32
    new-instance v0, Lra;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lqz;->e:Lyn;

    invoke-direct {v0, v1, v2}, Lra;-><init>(Landroid/content/Context;Lyn;)V

    iput-object v0, p0, Lqz;->b:Lra;

    .line 33
    new-instance v0, Lrd;

    invoke-direct {v0}, Lrd;-><init>()V

    iput-object v0, p0, Lqz;->c:Lrd;

    .line 34
    return-void
.end method

.method static synthetic a(Lqz;)Lrd;
    .locals 1
    .param p0, "x0"    # Lqz;

    .prologue
    .line 18
    iget-object v0, p0, Lqz;->c:Lrd;

    return-object v0
.end method

.method static synthetic b(Lqz;)Lrb;
    .locals 1
    .param p0, "x0"    # Lqz;

    .prologue
    .line 18
    iget-object v0, p0, Lqz;->a:Lrb;

    return-object v0
.end method

.method static synthetic c(Lqz;)Lre;
    .locals 1
    .param p0, "x0"    # Lqz;

    .prologue
    .line 18
    iget-object v0, p0, Lqz;->d:Lre;

    return-object v0
.end method


# virtual methods
.method public a()Lrc;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lqz;->a:Lrb;

    invoke-virtual {v0}, Lrb;->a()Lrc;

    move-result-object v0

    return-object v0
.end method

.method public a(Lre;)V
    .locals 4
    .param p1, "tabBizListener"    # Lre;

    .prologue
    .line 41
    iput-object p1, p0, Lqz;->d:Lre;

    .line 42
    iget-object v2, p0, Lqz;->b:Lra;

    invoke-virtual {v2}, Lra;->a()J

    move-result-wide v0

    .line 43
    .local v0, "requestId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 44
    const-string/jumbo v2, "MicDiscoverTabBizHandler"

    const-string/jumbo v3, "getBusinessInfo fail"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    return-void
.end method
