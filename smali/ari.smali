.class public Lari;
.super Larj;
.source "PluginController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lari$a;
    }
.end annotation


# static fields
.field private static b:Lari;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Larm;

.field private d:Larp;

.field private e:Larr;

.field private f:Lasg;

.field private g:Lark;

.field private h:Laro;

.field private i:Larl;

.field private j:Larl$a;

.field private k:Larm$a;

.field private l:Larp$a;

.field private m:Larr$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Larj;-><init>()V

    .line 49
    iput-object v0, p0, Lari;->c:Larm;

    .line 50
    iput-object v0, p0, Lari;->d:Larp;

    .line 51
    iput-object v0, p0, Lari;->e:Larr;

    .line 52
    iput-object v0, p0, Lari;->f:Lasg;

    .line 53
    iput-object v0, p0, Lari;->g:Lark;

    .line 54
    iput-object v0, p0, Lari;->h:Laro;

    .line 56
    iput-object v0, p0, Lari;->i:Larl;

    .line 88
    new-instance v0, Lari$1;

    invoke-direct {v0, p0}, Lari$1;-><init>(Lari;)V

    iput-object v0, p0, Lari;->j:Larl$a;

    .line 146
    new-instance v0, Lari$2;

    invoke-direct {v0, p0}, Lari$2;-><init>(Lari;)V

    iput-object v0, p0, Lari;->k:Larm$a;

    .line 219
    new-instance v0, Lari$3;

    invoke-direct {v0, p0}, Lari$3;-><init>(Lari;)V

    iput-object v0, p0, Lari;->l:Larp$a;

    .line 293
    new-instance v0, Lari$4;

    invoke-direct {v0, p0}, Lari$4;-><init>(Lari;)V

    iput-object v0, p0, Lari;->m:Larr$a;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lari;->a:Landroid/content/Context;

    .line 77
    new-instance v0, Lark;

    invoke-direct {v0}, Lark;-><init>()V

    iput-object v0, p0, Lari;->g:Lark;

    .line 78
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v0

    iput-object v0, p0, Lari;->f:Lasg;

    .line 80
    new-instance v0, Larm;

    iget-object v1, p0, Lari;->a:Landroid/content/Context;

    iget-object v2, p0, Lari;->k:Larm$a;

    invoke-direct {v0, v1, v2}, Larm;-><init>(Landroid/content/Context;Larm$a;)V

    iput-object v0, p0, Lari;->c:Larm;

    .line 81
    new-instance v0, Larp;

    iget-object v1, p0, Lari;->a:Landroid/content/Context;

    iget-object v2, p0, Lari;->l:Larp$a;

    invoke-direct {v0, v1, v2}, Larp;-><init>(Landroid/content/Context;Larp$a;)V

    iput-object v0, p0, Lari;->d:Larp;

    .line 82
    new-instance v0, Larr;

    iget-object v1, p0, Lari;->a:Landroid/content/Context;

    iget-object v2, p0, Lari;->m:Larr$a;

    invoke-direct {v0, v1, v2}, Larr;-><init>(Landroid/content/Context;Larr$a;)V

    iput-object v0, p0, Lari;->e:Larr;

    .line 83
    new-instance v0, Larl;

    iget-object v1, p0, Lari;->a:Landroid/content/Context;

    iget-object v2, p0, Lari;->j:Larl$a;

    invoke-direct {v0, v1, v2}, Larl;-><init>(Landroid/content/Context;Larl$a;)V

    iput-object v0, p0, Lari;->i:Larl;

    .line 85
    new-instance v0, Laro;

    invoke-direct {v0}, Laro;-><init>()V

    iput-object v0, p0, Lari;->h:Laro;

    .line 86
    return-void
.end method

.method public static a()Lari;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lari;->b:Lari;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lari;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    sget-object v0, Lari;->b:Lari;

    if-nez v0, :cond_1

    .line 60
    const-class v1, Lari;

    monitor-enter v1

    .line 61
    :try_start_0
    sget-object v0, Lari;->b:Lari;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lari;

    invoke-direct {v0, p0}, Lari;-><init>(Landroid/content/Context;)V

    sput-object v0, Lari;->b:Lari;

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    sget-object v0, Lari;->b:Lari;

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lari;)Larm;
    .locals 1
    .param p0, "x0"    # Lari;

    .prologue
    .line 43
    iget-object v0, p0, Lari;->c:Larm;

    return-object v0
.end method

.method static synthetic a(Lari;ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p0, "x0"    # Lari;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lari;->b(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    return-void
.end method

.method static synthetic a(Lari;Lasc;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lari;
    .param p1, "x1"    # Lasc;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lari;->a(Lasc;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lari;
    .param p1, "x1"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lari;->e(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lasc;Ljava/lang/String;)V
    .locals 3
    .param p1, "installMode"    # Lasc;
    .param p2, "tip"    # Ljava/lang/String;

    .prologue
    .line 451
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showToast| installMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "tip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lasc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 454
    iget-object v0, p0, Lari;->i:Larl;

    invoke-virtual {v0, p2}, Larl;->a(Ljava/lang/String;)V

    .line 456
    :cond_0
    return-void
.end method

.method static synthetic b(Lari;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lari;

    .prologue
    .line 43
    iget-object v0, p0, Lari;->a:Landroid/content/Context;

    return-object v0
.end method

.method private b(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 405
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleInstallStart| installInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0, p2}, Lari;->a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 408
    iget-object v0, p0, Lari;->d:Larp;

    invoke-virtual {v0, p1}, Larp;->a(I)V

    .line 410
    invoke-static {p1}, Lasb;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lari;->a(IZ)Z

    .line 412
    iget-object v0, p0, Lari;->g:Lark;

    invoke-virtual {v0, p1, p2}, Lark;->b(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 413
    iget-object v0, p0, Lari;->i:Larl;

    invoke-virtual {v0, p1}, Larl;->b(I)V

    .line 415
    :cond_0
    return-void
.end method

.method static synthetic b(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lari;
    .param p1, "x1"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lari;->f(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lari;)Larl;
    .locals 1
    .param p0, "x0"    # Lari;

    .prologue
    .line 43
    iget-object v0, p0, Lari;->i:Larl;

    return-object v0
.end method

.method static synthetic c(Lari;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lari;
    .param p1, "x1"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lari;->d(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lari;)Lark;
    .locals 1
    .param p0, "x0"    # Lari;

    .prologue
    .line 43
    iget-object v0, p0, Lari;->g:Lark;

    return-object v0
.end method

.method private d(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p2, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 394
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDownloadError| installInfo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorTip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    .line 397
    .local v0, "pluginType":I
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->downloading:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    if-ne v1, v2, :cond_0

    .line 398
    invoke-virtual {p0, p1, p2}, Lari;->b(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lari;->a(IZ)Z

    .line 401
    :cond_0
    iget-object v1, p0, Lari;->i:Larl;

    invoke-virtual {v1, v0}, Larl;->b(I)V

    .line 402
    return-void
.end method

.method static synthetic e(Lari;)Lasg;
    .locals 1
    .param p0, "x0"    # Lari;

    .prologue
    .line 43
    iget-object v0, p0, Lari;->f:Lasg;

    return-object v0
.end method

.method private e(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p2, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 419
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleInstallError| installInfo= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "errorTip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-nez p1, :cond_0

    .line 435
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string/jumbo v0, "\u5b89\u88c5\u7a7a\u95f4\u4e0d\u8db3"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lari;->c:Larm;

    .line 427
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-virtual {v0, v1}, Larm;->a(Ljava/lang/String;)V

    .line 430
    :cond_1
    invoke-virtual {p0, p1, p2}, Lari;->a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lari;->i:Larl;

    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Larl;->b(I)V

    .line 433
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lari;->a(Lasc;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lari;->a(IZ)Z

    goto :goto_0
.end method

.method private f(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 4
    .param p1, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p2, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 439
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleUpdateError| installInfo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorTip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    .line 443
    .local v0, "pluginType":I
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lari;->a(Lasc;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0, p1, p2}, Lari;->c(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lari;->a(IZ)Z

    .line 447
    iget-object v1, p0, Lari;->i:Larl;

    invoke-virtual {v1, v0}, Larl;->b(I)V

    .line 448
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 580
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uninstall() | pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lari;->e:Larr;

    invoke-virtual {v0, p1}, Larr;->a(I)V

    .line 582
    return-void
.end method

.method public a(ILandroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V
    .locals 6
    .param p1, "pluginType"    # I
    .param p2, "pUIContext"    # Landroid/content/Context;
    .param p3, "isInstallTask"    # Z
    .param p4, "entryType"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;
    .param p5, "installMode"    # Lasc;

    .prologue
    .line 462
    invoke-static {p1}, Lcom/iflytek/framework/plugin/internal/entities/PluginType;->toList(I)Ljava/util/List;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lari;->a(Ljava/util/List;Landroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 464
    return-void
.end method

.method public a(Ljava/util/List;Landroid/content/Context;ZLcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V
    .locals 6
    .param p2, "pUIContext"    # Landroid/content/Context;
    .param p3, "isInstallTask"    # Z
    .param p4, "entryType"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;
    .param p5, "installMode"    # Lasc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/content/Context;",
            "Z",
            "Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;",
            "Lasc;",
            ")V"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, "pluginTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string/jumbo v2, "PluginController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "install() | pluginTypes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isInstallTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " entryType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " installMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {p1}, Lazk;->a(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 481
    const-string/jumbo v2, "\u6ca1\u6709\u672a\u5b89\u88c5\u63d2\u4ef6"

    invoke-direct {p0, p5, v2}, Lari;->a(Lasc;Ljava/lang/String;)V

    .line 577
    :cond_0
    return-void

    .line 486
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 488
    .local v1, "pluginType":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 489
    .local v0, "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-eqz v0, :cond_2

    .line 490
    const-string/jumbo v3, "\u5b89\u88c5\u4efb\u52a1\u5df2\u5b58\u5728"

    invoke-direct {p0, p5, v3}, Lari;->a(Lasc;Ljava/lang/String;)V

    goto :goto_0

    .line 495
    :cond_2
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .end local v0    # "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v0, v3, p4, p5}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;-><init>(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;Lasc;)V

    .line 496
    .restart local v0    # "installInfo":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    iget-object v3, p0, Lari;->g:Lark;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lark;->a(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 499
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lasa;->h(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 500
    const-string/jumbo v3, "PluginController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "black plugin, DONOT install, type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string/jumbo v3, "\u60a8\u7684\u624b\u673a\u6682\u4e0d\u652f\u6301\u8be5\u529f\u80fd"

    invoke-direct {p0, v0, v3}, Lari;->e(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_3
    iget-object v3, p0, Lari;->h:Laro;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Lari$5;

    invoke-direct {v5, p0, p2}, Lari$5;-><init>(Lari;Landroid/content/Context;)V

    invoke-virtual {v3, v4, v5}, Laro;->a(ILaro$a;)V

    goto :goto_0
.end method

.method public a(IZ)Z
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "isRemoveDownloadTask"    # Z

    .prologue
    .line 625
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeInstallTask() | pluginType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isRemoveDownloadTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p0, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    .line 628
    .local v0, "info":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    if-eqz v0, :cond_1

    .line 629
    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->e()Lasc;

    move-result-object v1

    invoke-virtual {v1}, Lasc;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 630
    :cond_0
    iget-object v1, p0, Lari;->c:Larm;

    invoke-virtual {v0}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Larm;->a(Ljava/lang/String;)V

    .line 633
    :cond_1
    iget-object v1, p0, Lari;->g:Lark;

    invoke-virtual {v1, p1}, Lark;->b(I)Z

    move-result v1

    return v1
.end method

.method public b(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    .locals 5
    .param p1, "pluginType"    # I

    .prologue
    .line 586
    const-string/jumbo v2, "PluginController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPluginStatus() | pluginType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    invoke-static {p1}, Lasa;->a(I)Z

    move-result v0

    .line 589
    .local v0, "isPluginInstalled":Z
    invoke-virtual {p0, p1}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 590
    if-eqz v0, :cond_0

    .line 591
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->updating:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    .line 609
    :goto_0
    return-object v2

    .line 593
    :cond_0
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installing:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    goto :goto_0

    .line 596
    :cond_1
    if-eqz v0, :cond_2

    .line 597
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    goto :goto_0

    .line 599
    :cond_2
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lasg;->a(I)Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;

    move-result-object v1

    .line 601
    .local v1, "plugin":Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;
    if-eqz v1, :cond_3

    const-string/jumbo v2, "gp_apk"

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/NetPluginInfo$NetPlugin;->getKind()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->not_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    goto :goto_0

    .line 606
    :cond_3
    invoke-static {p1}, Lasb;->a(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 607
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->outside_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    goto :goto_0

    .line 609
    :cond_4
    sget-object v2, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->not_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 640
    iget-object v1, p0, Lari;->i:Larl;

    invoke-virtual {v1}, Larl;->a()Z

    move-result v0

    .line 641
    .local v0, "result":Z
    const-string/jumbo v1, "PluginController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeTrafficWarningTask() result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    return v0
.end method

.method public c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 616
    const-string/jumbo v0, "PluginController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getInstallTask() | pluginType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lari;->g:Lark;

    invoke-virtual {v0, p1}, Lark;->a(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v0

    return-object v0
.end method
