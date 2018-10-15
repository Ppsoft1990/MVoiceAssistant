.class Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;
.super Ljava/lang/Object;
.source "CallSmsSubSettingFragment.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->checkOfflineTtsPm(Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

.field final synthetic val$entry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

.field final synthetic val$tipText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;->val$tipText:Ljava/lang/String;

    iput-object p3, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;->val$entry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

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
    .line 1592
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    const/4 v0, 0x0

    .line 1593
    .local v0, "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    if-eqz p1, :cond_1

    .line 1594
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

    .line 1595
    .local v3, "permission":Lpl;
    invoke-virtual {v3}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v5

    sget-object v6, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-eq v5, v6, :cond_4

    .line 1596
    if-nez v1, :cond_3

    .line 1597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1599
    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :goto_1
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v1, v0

    .line 1601
    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_0

    .end local v3    # "permission":Lpl;
    :cond_0
    move-object v0, v1

    .line 1603
    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 1604
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    iget-object v5, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;->val$tipText:Ljava/lang/String;

    iget-object v6, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;->val$entry:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;

    invoke-static {v4, v5, v6}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->access$600(Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;Ljava/lang/String;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallEntry;)V

    .line 1611
    :goto_3
    return-void

    .line 1606
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment$7;->this$0:Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;

    invoke-virtual {v4}, Lcom/iflytek/viafly/settings/ui/CallSmsSubSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 1608
    :catch_0
    move-exception v2

    .line 1609
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v4, "CallSmsSubSettingFragment"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1608
    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .end local v2    # "e":Ljava/lang/Exception;
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
    :cond_3
    move-object v0, v1

    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_1

    .end local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    :cond_4
    move-object v0, v1

    .end local v1    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    .restart local v0    # "deniedList":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    goto :goto_2
.end method
