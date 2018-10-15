.class public Lcom/iflytek/viafly/mutiprocess/MutualActivateService;
.super Landroid/app/Service;
.source "MutualActivateService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_from"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p0}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v1

    const-string/jumbo v2, "FT89810"

    invoke-virtual {v1, v2, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    const-string/jumbo v0, "MutualActivateService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 32
    const-string/jumbo v3, "MutualActivateService"

    const-string/jumbo v4, "onStartCommand"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    if-eqz p1, :cond_0

    const-string/jumbo v3, "p_from"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const-string/jumbo v3, "p_from"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "from":Ljava/lang/String;
    const-string/jumbo v3, "MutualActivateService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartCommand intent extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const-string/jumbo v3, "com.ophone.reader.ui"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    const-string/jumbo v3, "reader"

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/mutiprocess/MutualActivateService;->a(Ljava/lang/String;)V

    .line 45
    .end local v1    # "from":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v2, "service":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/mutiprocess/MutualActivateService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 47
    const-string/jumbo v3, "MutualActivateService"

    const-string/jumbo v4, "Congratulations, you start ling xi success."

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/iflytek/viafly/mutiprocess/MutualActivateService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v2    # "service":Landroid/content/Intent;
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 39
    .restart local v1    # "from":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "com.newspaper.client"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const-string/jumbo v3, "news"

    invoke-direct {p0, v3}, Lcom/iflytek/viafly/mutiprocess/MutualActivateService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v1    # "from":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MutualActivateService"

    const-string/jumbo v4, "onStartCommand"

    invoke-static {v3, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
