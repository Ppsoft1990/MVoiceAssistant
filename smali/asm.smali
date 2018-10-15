.class public Lasm;
.super Ljava/lang/Object;
.source "PluginIconLoaderManager.java"


# static fields
.field private static a:Lasm;


# instance fields
.field private b:Lbcu;

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lasm;->c:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lasm;->c:Landroid/content/Context;

    invoke-direct {p0, v0}, Lasm;->b(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lasm;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lasm;->a:Lasm;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lasm;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lasm;->a:Lasm;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lasm;

    invoke-direct {v0, p0}, Lasm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lasm;->a:Lasm;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lasm;->a:Lasm;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lasm;Lcom/iflytek/base/skin/customView/XImageView;I)V
    .locals 0
    .param p0, "x0"    # Lasm;
    .param p1, "x1"    # Lcom/iflytek/base/skin/customView/XImageView;
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lasm;->a(Lcom/iflytek/base/skin/customView/XImageView;I)V

    return-void
.end method

.method private a(Lcom/iflytek/base/skin/customView/XImageView;I)V
    .locals 2
    .param p1, "imageView"    # Lcom/iflytek/base/skin/customView/XImageView;
    .param p2, "pluginType"    # I

    .prologue
    .line 98
    const-string/jumbo v0, ""

    .line 99
    .local v0, "res":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 113
    :pswitch_0
    const v1, 0x7f020308

    invoke-virtual {p1, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setImageResource(I)V

    .line 117
    :goto_0
    return-void

    .line 101
    :pswitch_1
    const-string/jumbo v0, "image.lockscreen_icon"

    .line 116
    :goto_1
    sget-object v1, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomSrc(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    goto :goto_0

    .line 104
    :pswitch_2
    const-string/jumbo v0, "image.menu_offline"

    .line 105
    goto :goto_1

    .line 107
    :pswitch_3
    const-string/jumbo v0, "image.ic_game"

    .line 108
    goto :goto_1

    .line 110
    :pswitch_4
    const-string/jumbo v0, "image.ic_game"

    .line 111
    goto :goto_1

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private b(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f020308

    .line 121
    new-instance v1, Lbcu$a;

    invoke-direct {v1}, Lbcu$a;-><init>()V

    .line 122
    invoke-virtual {v1, v2}, Lbcu$a;->b(I)Lbcu$a;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v2}, Lbcu$a;->a(I)Lbcu$a;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v2}, Lbcu$a;->c(I)Lbcu$a;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Lbcu$a;->a()Lbcu$a;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lbcu$a;->b()Lbcu$a;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lbcu$a;->c()Lbcu;

    move-result-object v1

    iput-object v1, p0, Lasm;->b:Lbcu;

    .line 129
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v0, "metric":Landroid/util/DisplayMetrics;
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 140
    return-void
.end method


# virtual methods
.method public a(Lcom/iflytek/base/skin/customView/XImageView;Ljava/lang/String;I)V
    .locals 3
    .param p1, "imageView"    # Lcom/iflytek/base/skin/customView/XImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "pluginType"    # I

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-direct {p0, p1, p3}, Lasm;->a(Lcom/iflytek/base/skin/customView/XImageView;I)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {}, Lazl;->a()Lazl;

    move-result-object v0

    iget-object v1, p0, Lasm;->b:Lbcu;

    new-instance v2, Lasm$1;

    invoke-direct {v2, p0, p1, p3}, Lasm$1;-><init>(Lasm;Lcom/iflytek/base/skin/customView/XImageView;I)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lazl;->a(Ljava/lang/String;Landroid/widget/ImageView;Lbcu;Lbdd;)V

    goto :goto_0
.end method
