.class public Lcom/iflytek/greenplug/client/RedirectActivity;
.super Landroid/app/Activity;
.source "RedirectActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RedirectActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/RedirectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "pluginpkg"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "pluginpkg":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/RedirectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "pluginact"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "pluginact":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 27
    const-string/jumbo v3, "RedirectActivity"

    const-string/jumbo v4, "Redirect plugin is null."

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/greenplug/client/RedirectActivity;->finish()V

    .line 43
    return-void

    .line 29
    :cond_0
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 32
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/greenplug/client/PluginManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    :goto_1
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-static {v0}, Lcom/iflytek/greenplug/client/GreenPlug;->startActivity(Landroid/content/Intent;)I

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 39
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v3, "RedirectActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No such plugin : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
