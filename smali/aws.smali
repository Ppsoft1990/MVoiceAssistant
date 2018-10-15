.class public Laws;
.super Ljava/lang/Object;
.source "PersonalizedRingtoneIconLoaderManager.java"


# static fields
.field private static a:Laws;


# instance fields
.field private b:Lbcu;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Laws;->c:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Laws;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Laws;->b(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static a(Landroid/content/Context;)Laws;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Laws;->a:Laws;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Laws;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Laws;->a:Laws;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Laws;

    invoke-direct {v0, p0}, Laws;-><init>(Landroid/content/Context;)V

    sput-object v0, Laws;->a:Laws;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Laws;->a:Laws;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Laws;Lcom/iflytek/base/skin/customView/XImageView;)V
    .locals 0
    .param p0, "x0"    # Laws;
    .param p1, "x1"    # Lcom/iflytek/base/skin/customView/XImageView;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Laws;->a(Lcom/iflytek/base/skin/customView/XImageView;)V

    return-void
.end method

.method private a(Lcom/iflytek/base/skin/customView/XImageView;)V
    .locals 1
    .param p1, "imageView"    # Lcom/iflytek/base/skin/customView/XImageView;

    .prologue
    .line 96
    const v0, 0x7f020173

    invoke-virtual {p1, v0}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 97
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f020173

    .line 101
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 102
    invoke-virtual {v1, v2}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 103
    invoke-virtual {v1, v2}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v1

    iput-object v1, p0, Laws;->b:Lbcu;

    .line 109
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v0, "metric":Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/base/skin/customView/XImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "imageView"    # Lcom/iflytek/base/skin/customView/XImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-direct {p0, p1}, Laws;->a(Lcom/iflytek/base/skin/customView/XImageView;)V

    goto :goto_0

    .line 54
    :cond_1
    const-string/jumbo v0, "image."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "statelist."

    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    :cond_2
    sget-object v0, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, p2, v0}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    iget-object v1, p0, Laws;->b:Lbcu;

    new-instance v2, Laws$1;

    invoke-direct {v2, p0, p1}, Laws$1;-><init>(Laws;Lcom/iflytek/base/skin/customView/XImageView;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V

    goto :goto_0
.end method
