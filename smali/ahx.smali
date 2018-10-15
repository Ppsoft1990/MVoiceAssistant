.class public Lahx;
.super Ljava/lang/Object;
.source "MicGuidelHandler.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lahx;->a:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lahx;->a:Landroid/content/Context;

    new-instance v1, Lahx$3;

    invoke-direct {v1, p0}, Lahx$3;-><init>(Lahx;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    .line 186
    return-void
.end method

.method static synthetic a(Lahx;)V
    .locals 0
    .param p0, "x0"    # Lahx;

    .prologue
    .line 29
    invoke-direct {p0}, Lahx;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lqr;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "anchor"    # Lqr;

    .prologue
    .line 159
    invoke-static {p0}, Lahy;->a(Landroid/content/Context;)Lahy;

    move-result-object v0

    invoke-virtual {v0}, Lahy;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {p0}, Lahy;->a(Landroid/content/Context;)Lahy;

    move-result-object v0

    invoke-virtual {v0}, Lahy;->b()V

    .line 169
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "des"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    iget-object v1, p0, Lahx;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 128
    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 130
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lahx$1;

    invoke-direct {v2, p0, v0}, Lahx$1;-><init>(Lahx;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 140
    const-string/jumbo v1, "\u5b89\u88c5"

    new-instance v2, Lahx$2;

    invoke-direct {v2, p0, v0}, Lahx$2;-><init>(Lahx;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 150
    # invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 151
    return-void
.end method

.method static synthetic b(Lahx;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lahx;

    .prologue
    .line 29
    iget-object v0, p0, Lahx;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lqr;)Z
    .locals 6
    .param p1, "anchor"    # Lqr;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 60
    iget-object v4, p0, Lahx;->a:Landroid/content/Context;

    invoke-static {v4}, Lahy;->a(Landroid/content/Context;)Lahy;

    move-result-object v4

    invoke-virtual {v4}, Lahy;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lahx;->a:Landroid/content/Context;

    invoke-static {v4}, Lahy;->a(Landroid/content/Context;)Lahy;

    move-result-object v4

    invoke-virtual {v4}, Lahy;->b()V

    .line 74
    :cond_0
    iget-object v4, p0, Lahx;->a:Landroid/content/Context;

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Lhl;->c()Z

    move-result v0

    .line 77
    .local v0, "hasNetwork":Z
    invoke-static {v3}, Lasa;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    :cond_1
    :goto_0
    return v2

    .line 92
    :cond_2
    invoke-static {v3}, Lasa;->h(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    invoke-static {}, Lari;->a()Lari;

    move-result-object v4

    invoke-virtual {v4, v3}, Lari;->c(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    move-result-object v4

    if-nez v4, :cond_1

    .line 100
    if-nez v0, :cond_3

    .line 101
    const-string/jumbo v2, "\u6e29\u99a8\u63d0\u793a"

    const-string/jumbo v4, "\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u53ef\u4ee5\u5e2e\u60a8\u8282\u770180%\u7684\u6d41\u91cf\uff0c\u5efa\u8bae\u60a8\u9009\u62e9\u5b89\u88c5\u3002"

    invoke-direct {p0, v2, v4}, Lahx;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 102
    goto :goto_0

    .line 105
    :cond_3
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "SETTING_IS_NEED_SHOW_OFFLINE_INSTALL_DIALOG"

    invoke-virtual {v4, v5, v3}, Lil;->b(Ljava/lang/String;Z)Z

    move-result v1

    .line 107
    .local v1, "isNeedShow":Z
    if-eqz v1, :cond_1

    .line 108
    invoke-static {}, Lil;->a()Lil;

    move-result-object v4

    const-string/jumbo v5, "SETTING_IS_NEED_SHOW_OFFLINE_INSTALL_DIALOG"

    invoke-virtual {v4, v5, v2}, Lil;->a(Ljava/lang/String;Z)V

    .line 111
    const-string/jumbo v2, "\u6e29\u99a8\u63d0\u793a"

    const-string/jumbo v4, "\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u53ef\u4ee5\u5e2e\u60a8\u8282\u770180%\u7684\u6d41\u91cf\uff0c\u5efa\u8bae\u60a8\u9009\u62e9\u5b89\u88c5\u3002"

    invoke-direct {p0, v2, v4}, Lahx;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 112
    goto :goto_0
.end method
