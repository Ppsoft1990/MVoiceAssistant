.class public Lahc;
.super Laht;
.source "HomeHeadsetHelper.java"


# instance fields
.field private a:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 1
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahc;->c:Z

    .line 53
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lahc;->a:Z

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Laht;->a(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public b(Z)Z
    .locals 4
    .param p1, "isFirst"    # Z

    .prologue
    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lahc$1;

    invoke-direct {v1, p0}, Lahc$1;-><init>(Lahc;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 79
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lahc;->a:Z

    .line 86
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lahc;->a:Z

    return v0
.end method

.method public g()V
    .locals 10

    .prologue
    const/16 v9, 0x12d

    const/4 v5, 0x1

    .line 98
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x15

    if-ge v6, v7, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-boolean v6, p0, Lahc;->a:Z

    if-eqz v6, :cond_0

    .line 108
    iget-boolean v6, p0, Lahc;->c:Z

    if-nez v6, :cond_0

    .line 111
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->c()Lcom/iflytek/viafly/ViaFlyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/iflytek/viafly/ViaFlyApp;->h()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    const-string/jumbo v6, "com.cmcc.viafly.headset"

    invoke-static {v6}, Lcom/iflytek/greenplug/client/GreenPlug;->isPluginRunning(Ljava/lang/String;)Z

    move-result v2

    .line 113
    .local v2, "isRunning":Z
    if-eqz v2, :cond_2

    .line 114
    const-string/jumbo v5, "HomeHeadsetHelper"

    const-string/jumbo v6, "Mobius process is running"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v2    # "isRunning":Z
    :cond_2
    invoke-static {}, Lari;->a()Lari;

    move-result-object v6

    invoke-virtual {v6, v9}, Lari;->b(I)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    move-result-object v4

    .line 121
    .local v4, "pluginStatus":Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    sget-object v6, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    if-eq v4, v6, :cond_3

    sget-object v6, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->outside_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    if-ne v4, v6, :cond_4

    :cond_3
    move v1, v5

    .line 130
    .local v1, "isPluginInstalled":Z
    :goto_1
    invoke-static {}, Lgs;->a()Lgs;

    move-result-object v6

    invoke-virtual {v6}, Lgs;->f()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v6, "HomeHeadsetHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onResumeDelayedInWorkThread name is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "MGA1000"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lagv;->o()Lahi;

    move-result-object v6

    invoke-virtual {v6}, Lahi;->h()Z

    move-result v6

    if-nez v6, :cond_0

    .line 134
    const-string/jumbo v6, "HomeHeadsetHelper"

    const-string/jumbo v7, "mobius is connected"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean v5, p0, Lahc;->c:Z

    .line 138
    invoke-static {}, Lil;->a()Lil;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmcc.IFLY_HEADSET_AUTO_START"

    invoke-virtual {v5, v6}, Lil;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 139
    const-string/jumbo v5, "HomeHeadsetHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BluetoothHeadset event start dialog "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lahc;->p()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v0, "actionIntent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lahc;->p()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 121
    .end local v0    # "actionIntent":Landroid/content/Intent;
    .end local v1    # "isPluginInstalled":Z
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 147
    .restart local v1    # "isPluginInstalled":Z
    .restart local v3    # "name":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->c()Lcom/iflytek/viafly/ViaFlyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iflytek/viafly/ViaFlyApp;->h()Z

    move-result v5

    if-nez v5, :cond_6

    .line 151
    const-string/jumbo v5, "HomeHeadsetHelper"

    const-string/jumbo v6, "\u63d2\u4ef6\u6846\u67b6\u672a\u521d\u59cb\u5b8c\u6210"

    invoke-static {v5, v6}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lxj;->a(Landroid/content/Context;)Lxj;

    move-result-object v5

    const-string/jumbo v6, "bluetooth"

    invoke-virtual {v5, v6}, Lxj;->a(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v5

    const-string/jumbo v6, "LX_100133"

    invoke-virtual {v5, v6}, Lwz;->a(Ljava/lang/String;)V

    .line 156
    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Larc;->a()Larc;

    move-result-object v5

    invoke-virtual {v5}, Larc;->h()V

    .line 162
    new-instance v6, Lasi;

    invoke-virtual {p0}, Lahc;->p()Landroid/content/Context;

    move-result-object v5

    new-instance v7, Lahc$2;

    invoke-direct {v7, p0}, Lahc$2;-><init>(Lahc;)V

    invoke-direct {v6, v5, v7}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    .line 167
    invoke-virtual {p0}, Lahc;->p()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    sget-object v7, Lasc;->a:Lasc;

    sget-object v8, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->bottom_tool_bar:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-virtual {v6, v5, v9, v7, v8}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto/16 :goto_0
.end method
