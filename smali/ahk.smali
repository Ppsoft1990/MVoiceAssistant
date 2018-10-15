.class public Lahk;
.super Laht;
.source "HomePluginInstallHelper.java"

# interfaces
.implements Larn;


# instance fields
.field private a:Z

.field private c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

.field private d:Lari;


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lahk;)V
    .locals 0
    .param p0, "x0"    # Lahk;

    .prologue
    .line 39
    invoke-direct {p0}, Lahk;->k()V

    return-void
.end method

.method static synthetic b(Lahk;)Lari;
    .locals 1
    .param p0, "x0"    # Lahk;

    .prologue
    .line 39
    iget-object v0, p0, Lahk;->d:Lari;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lahk;->p()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lahk$2;

    invoke-direct {v1, p0}, Lahk$2;-><init>(Lahk;)V

    invoke-static {v0, v1}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    .line 235
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    invoke-super {p0, p1, p2}, Laht;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    invoke-super {p0, p1}, Laht;->a(Landroid/os/Message;)V

    .line 108
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->dismiss()V

    .line 111
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "des"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 136
    new-instance v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {p0}, Lahk;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 137
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 138
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 139
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setIsNeedDismiss(ZZ)V

    .line 140
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    const-string/jumbo v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 141
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    const-string/jumbo v1, "\u5b89\u88c5"

    sget-object v2, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    new-instance v3, Lahk$1;

    invoke-direct {v3, p0}, Lahk$1;-><init>(Lahk;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setRightButton(Ljava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 148
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v4, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/SimpleDialog;

    .line 149
    return-void
.end method

.method public a(Z)Z
    .locals 2
    .param p1, "isFirst"    # Z

    .prologue
    .line 57
    invoke-static {}, Lari;->a()Lari;

    move-result-object v0

    iput-object v0, p0, Lahk;->d:Lari;

    .line 58
    iget-object v0, p0, Lahk;->d:Lari;

    const-string/jumbo v1, "HomePluginInstallHelper"

    invoke-virtual {v0, v1, p0}, Lari;->a(Ljava/lang/String;Larn;)V

    .line 61
    invoke-virtual {p0}, Lahk;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lare;->a(Landroid/content/Context;)Lare;

    move-result-object v0

    const-string/jumbo v1, "Home_Launch"

    .line 62
    invoke-virtual {v0, v1}, Lare;->b(Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Laht;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    const-string/jumbo v0, "com.iflytek.cmcc.ACTION_APK_DOWNLOAD_OFFLINE_VOICE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lahk;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazk;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lahk;->d(Z)V

    .line 102
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Laht;->b(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 98
    :cond_1
    invoke-virtual {p0}, Lahk;->e_()V

    goto :goto_0
.end method

.method public b(Z)Z
    .locals 4
    .param p1, "isFirst"    # Z

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 71
    invoke-static {}, Lasg;->a()Lasg;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lask;

    invoke-virtual {p0}, Lahk;->o()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lasg;->a([ILasg$b;)V

    .line 72
    const-string/jumbo v0, "HomePluginInstallHelper"

    const-string/jumbo v1, "lingxi launch, request plugin info"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-super {p0, p1}, Laht;->b(Z)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lahk;->d:Lari;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lahk;->d:Lari;

    const-string/jumbo v1, "HomePluginInstallHelper"

    invoke-virtual {v0, v1}, Lari;->a(Ljava/lang/String;)V

    .line 88
    :cond_0
    invoke-super {p0}, Laht;->c()Z

    move-result v0

    return v0
.end method

.method public d(Z)V
    .locals 0
    .param p1, "downloadVoiceHandle"    # Z

    .prologue
    .line 118
    iput-boolean p1, p0, Lahk;->a:Z

    .line 119
    return-void
.end method

.method public e_()V
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lahk;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string/jumbo v0, "\u63d0\u793a"

    const-string/jumbo v1, "\u5f53\u524d\u672a\u5b89\u88c5\u79bb\u7ebf\u8bed\u97f3\u8d44\u6e90\u5305\uff0c\u662f\u5426\u5b89\u88c5"

    invoke-virtual {p0, v0, v1}, Lahk;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lahk;->a:Z

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lahk;->c:Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->isDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDownloadError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 204
    return-void
.end method

.method public onDownloadFinish(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 199
    return-void
.end method

.method public onDownloadProgress(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;D)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "percent"    # D

    .prologue
    .line 209
    return-void
.end method

.method public onDownloadStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 191
    invoke-virtual {p0}, Lahk;->q()Lahw;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lahk;->q()Lahw;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lahw;->sendEmptyMessage(I)Z

    .line 194
    :cond_0
    return-void
.end method

.method public onInstallError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 154
    return-void
.end method

.method public onInstallStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 2
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 166
    invoke-virtual {p0}, Lahk;->q()Lahw;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    invoke-virtual {p0}, Lahk;->q()Lahw;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lahw;->sendEmptyMessage(I)Z

    .line 169
    :cond_0
    return-void
.end method

.method public onInstallSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 159
    return-void
.end method

.method public onUninstallError(II)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "errorCode"    # I

    .prologue
    .line 219
    return-void
.end method

.method public onUninstallSuccess(I)V
    .locals 0
    .param p1, "pluginType"    # I

    .prologue
    .line 214
    return-void
.end method

.method public onUpdateError(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;
    .param p3, "errorTip"    # Ljava/lang/String;

    .prologue
    .line 179
    return-void
.end method

.method public onUpdateStart(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 184
    return-void
.end method

.method public onUpdateSuccess(ILcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p1, "pluginType"    # I
    .param p2, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 174
    return-void
.end method
