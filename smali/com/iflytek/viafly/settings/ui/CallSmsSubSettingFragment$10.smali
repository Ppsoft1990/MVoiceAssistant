.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;
.super Ljava/lang/Object;
.source "CallSmsSubSettingFragment.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkSmsSpeechModePm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 1715
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1719
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v0, 0x0

    .line 1720
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    if-eqz p1, :cond_1

    .line 1721
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v1, v0

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .local v1, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpl;

    .line 1722
    .local v3, "permission":Lpl;
    invoke-virtual {v3}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-eq v5, v6, :cond_5

    .line 1723
    if-nez v1, :cond_4

    .line 1724
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1726
    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :goto_1
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v1, v0

    .line 1728
    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_0

    .end local v3    # "permission":Lpl;
    :cond_0
    move-object v0, v1

    .line 1730
    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_1
    if-nez v0, :cond_3

    .line 1731
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$900(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lpp;

    move-result-object v4

    invoke-virtual {v4}, Lpp;->b()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .line 1732
    invoke-static {v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1000(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->c()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1733
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    const-string/jumbo v5, "\u65e0\u7f51\u7edc\u65f6\u4f7f\u7528\u8bed\u97f3\u53d1\u9001\u77ed\u4fe1\u529f\u80fd\u9700\u8981\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce\u3002"

    sget-object v6, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;->sms_text_setting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-static {v4, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1100(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 1743
    :goto_3
    return-void

    .line 1735
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-static {v5}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$1200(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;)Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;

    move-result-object v5

    const-string/jumbo v6, "com.iflytek.cmccIFLY_SMS_SPEECH_MODE"

    invoke-static {v4, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$800(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Lcom/iflytek/viafly/settings/ui/XPreferenceCheckBoxForSetting;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1740
    :catch_0
    move-exception v2

    .line 1741
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v4, "CallSmsSubSettingFragment"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1738
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$10;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-virtual {v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 1740
    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_4

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v3    # "permission":Lpl;
    :cond_4
    move-object v0, v1

    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_1

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_5
    move-object v0, v1

    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_2
.end method
