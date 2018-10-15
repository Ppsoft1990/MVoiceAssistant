.class Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;
.super Lmt;
.source "HeadSetFoundActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-direct {p0}, Lmt;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3}, Lmt;->onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    .line 184
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    :cond_0
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lmt;->onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 176
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_0
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 167
    invoke-super {p0, p1, p2}, Lmt;->onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 168
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 171
    :cond_0
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-super {p0, p1, p2, p3}, Lmt;->onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V

    .line 159
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    :cond_0
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lmt;->onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 150
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    :cond_0
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 136
    invoke-super {p0, p1, p2}, Lmt;->onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    .line 137
    const/16 v0, 0x12d

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity$2;->a:Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;

    invoke-static {v0}, Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;->a(Lcom/iflytek/cmcc/gp/ear/HeadSetFoundActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 141
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/PluginFactory;->getPluginManager()Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iflytek/framework/plugin/internal/interfaces/IPluginManager;->enterPlugin(I)I

    .line 143
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    const-string/jumbo v1, "HeadSetFoundActivity"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method
