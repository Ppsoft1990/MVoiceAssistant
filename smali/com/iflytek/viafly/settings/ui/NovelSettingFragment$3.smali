.class Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$3;
.super Ljava/lang/Object;
.source "NovelSettingFragment.java"

# interfaces
.implements Larn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->installOfflineSpeech()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 289
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 290
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "NovelSettingFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 284
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 279
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 320
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 271
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "NovelSettingFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 308
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    const/4 v2, 0x1

    .line 253
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 254
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-static {v1, v2}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;I)V

    .line 255
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-static {v1}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;)V

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v0, "offlineParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "d_type"

    const-string/jumbo v2, "offline"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;

    invoke-virtual {v1}, Lcom/iflytek/viafly/settings/ui/NovelSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lwy;->a(Landroid/content/Context;)Lwy;

    move-result-object v1

    const-string/jumbo v2, "FT90131"

    invoke-virtual {v1, v2, v0}, Lwy;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 264
    .end local v0    # "offlineParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lari;->a()Lari;

    move-result-object v1

    const-string/jumbo v2, "NovelSettingFragment"

    invoke-virtual {v1, v2}, Lari;->a(Ljava/lang/String;)V

    .line 266
    :cond_1
    return-void
.end method

.method public onUninstallError(II)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 302
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 297
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 247
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "NovelSettingFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 314
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 241
    return-void
.end method
