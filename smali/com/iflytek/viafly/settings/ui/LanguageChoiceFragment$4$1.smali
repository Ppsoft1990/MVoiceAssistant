.class Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4$1;
.super Ljava/lang/Object;
.source "LanguageChoiceFragment.java"

# interfaces
.implements Larn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4$1;->this$1:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 368
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 363
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 358
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 383
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 353
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 373
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 342
    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4$1;->this$1:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4$1;->this$1:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment$4;->this$0:Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;->access$300(Lcom/iflytek/viafly/settings/ui/LanguageChoiceFragment;)V

    .line 346
    :cond_0
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "LanguageChoiceFragment"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 348
    :cond_1
    return-void
.end method

.method public onUninstallError(II)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 393
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 388
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 338
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 378
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 333
    return-void
.end method
