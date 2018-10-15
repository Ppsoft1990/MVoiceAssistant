.class Lqq$1;
.super Ljava/lang/Object;
.source "MainSpeechToolAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqq;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrf;

.field final synthetic b:Lqq;


# direct methods
.method constructor <init>(Lqq;Lrf;)V
    .locals 0
    .param p1, "this$0"    # Lqq;

    .prologue
    .line 89
    iput-object p1, p0, Lqq$1;->b:Lqq;

    iput-object p2, p0, Lqq$1;->a:Lrf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    const-string/jumbo v3, "NATIVE"

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "MORE"

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 94
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 95
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v3}, Lrf;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v3, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v3}, Lrf;->d()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "TranslateMainActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 99
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100070"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxq;->a(Landroid/content/Context;)Lxq;

    move-result-object v3

    const-string/jumbo v4, "toolBar"

    invoke-virtual {v3, v4}, Lxq;->j(Ljava/lang/String;)V

    .line 175
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->b(Lqq;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->b(Lqq;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 178
    :cond_2
    return-void

    .line 101
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v3}, Lrf;->d()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ScheduleHomePageActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 102
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100073"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->a(Landroid/content/Context;)Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;

    move-result-object v3

    const-string/jumbo v4, "toolBar"

    invoke-virtual {v3, v4}, Lcom/iflytek/viafly/blc/log/helper/impl/SheduleOpLogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    iget-object v3, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v3}, Lrf;->d()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "VoiceNoteActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v0, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_type"

    const-string/jumbo v4, "toolEntrance"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT90202"

    invoke-virtual {v3, v4, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 110
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 111
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_type"

    const-string/jumbo v4, "more"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT90011"

    invoke-virtual {v3, v4, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100116"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    const v5, 0x7f040003

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MainSpeechToolAdapter"

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 121
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    const-string/jumbo v3, "WEB"

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 123
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v3

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v5}, Lrf;->d()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v3, v4, v5, v6}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .restart local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "d_type"

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->f()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxe;->a(Landroid/content/Context;)Lxe;

    move-result-object v3

    const-string/jumbo v4, "FT90011"

    invoke-virtual {v3, v4, v0}, Lxe;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 127
    const-string/jumbo v3, "topic"

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 128
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100121"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :cond_7
    const-string/jumbo v3, "ugc"

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100136"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    .end local v0    # "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    const-string/jumbo v3, "PLUGIN"

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    const-string/jumbo v3, "tvRemote"

    iget-object v4, p0, Lqq$1;->a:Lrf;

    invoke-virtual {v4}, Lrf;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 135
    new-instance v4, Lasi;

    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lqq$1$1;

    invoke-direct {v5, p0}, Lqq$1$1;-><init>(Lqq$1;)V

    invoke-direct {v4, v3, v5}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    iget-object v3, p0, Lqq$1;->b:Lqq;

    .line 139
    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    const/16 v5, 0xe

    sget-object v6, Lasc;->a:Lasc;

    sget-object v7, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->bottom_tool_bar:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-virtual {v4, v3, v5, v6, v7}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto/16 :goto_0

    .line 143
    :cond_9
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lxj;->a(Landroid/content/Context;)Lxj;

    move-result-object v3

    const-string/jumbo v4, "icon"

    invoke-virtual {v3, v4}, Lxj;->a(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v3

    const-string/jumbo v4, "LX_100133"

    invoke-virtual {v3, v4}, Lwz;->a(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lari;->a()Lari;

    move-result-object v3

    const-string/jumbo v4, "MainSpeechToolAdapter"

    new-instance v5, Lqq$1$2;

    invoke-direct {v5, p0}, Lqq$1$2;-><init>(Lqq$1;)V

    invoke-virtual {v3, v4, v5}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 166
    new-instance v4, Lasi;

    iget-object v3, p0, Lqq$1;->b:Lqq;

    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lqq$1$3;

    invoke-direct {v5, p0}, Lqq$1$3;-><init>(Lqq$1;)V

    invoke-direct {v4, v3, v5}, Lasi;-><init>(Landroid/content/Context;Lasi$a;)V

    iget-object v3, p0, Lqq$1;->b:Lqq;

    .line 171
    invoke-static {v3}, Lqq;->a(Lqq;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;

    const/16 v5, 0x12d

    sget-object v6, Lasc;->a:Lasc;

    sget-object v7, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->bottom_tool_bar:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-virtual {v4, v3, v5, v6, v7}, Lasi;->a(Lcom/iflytek/viafly/ui/activity/BaseFragmentActivity;ILasc;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    goto/16 :goto_0
.end method
