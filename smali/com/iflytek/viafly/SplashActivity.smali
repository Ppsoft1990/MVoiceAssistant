.class public Lcom/iflytek/viafly/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 67
    if-nez p1, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    const-string/jumbo v2, "extra_auto_download_shortcut"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {v0}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x25

    const/16 v7, 0x22

    const/4 v6, -0x1

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/iflytek/viafly/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 25
    .local v3, "outIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 26
    .local v2, "outAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 27
    .local v1, "lockScreenEntry":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 28
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 29
    const-string/jumbo v4, "locker_enter_lingxi_scene"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    :cond_0
    invoke-direct {p0, v3}, Lcom/iflytek/viafly/SplashActivity;->a(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-virtual {p0}, Lcom/iflytek/viafly/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Luo;->a(Landroid/content/Context;)Luo;

    move-result-object v4

    invoke-virtual {v4, v3}, Luo;->a(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lcom/iflytek/viafly/SplashActivity;->finish()V

    .line 64
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "from_where"

    const/16 v5, 0x1d

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const/high16 v4, 0x10400000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 44
    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_LOCKER_ENTER_CMCC_COMMON_CHANNEL"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "com.iflytek.cmcc.ACTION_OPEN_WEATHER_CHANNEL"

    .line 45
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 46
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string/jumbo v4, "locker_enter_lingxi_scene"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    :cond_3
    const-string/jumbo v4, "from_where"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_4

    .line 54
    const-string/jumbo v4, "from_where"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    :cond_4
    const-string/jumbo v4, "from_where"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 59
    const-string/jumbo v4, "from_where"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    :cond_5
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/iflytek/viafly/SplashActivity;->finish()V

    goto :goto_0
.end method
