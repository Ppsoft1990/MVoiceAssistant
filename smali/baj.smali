.class public Lbaj;
.super Ljava/lang/Object;
.source "LxPostDownloadManager.java"

# interfaces
.implements Lbah;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lban;

.field private c:Lxr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lbaj;->a:Landroid/content/Context;

    .line 33
    new-instance v0, Lban;

    invoke-direct {v0}, Lban;-><init>()V

    iput-object v0, p0, Lbaj;->b:Lban;

    .line 34
    invoke-static {p1}, Lxr;->a(Landroid/content/Context;)Lxr;

    move-result-object v0

    iput-object v0, p0, Lbaj;->c:Lxr;

    .line 35
    return-void
.end method

.method private b(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Z
    .locals 1
    .param p1, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 68
    const-string/jumbo v0, "LxPostDownloadManager"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 4
    .param p1, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    .line 39
    const-string/jumbo v1, "LxPostDownloadManager"

    const-string/jumbo v2, "onDownloadSuccess"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0, p1}, Lbaj;->b(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    const-string/jumbo v1, "LxPostDownloadManager"

    const-string/jumbo v2, "onDownloadSuccess | updateInfo is invalid"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lbaj;->c:Lxr;

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxr;->b(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhl;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "channelID":Ljava/lang/String;
    const-string/jumbo v1, "LxPostDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "extra: channelID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string/jumbo v1, "16010017"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lbaj;->b:Lban;

    iget-object v2, p0, Lbaj;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lban;->a(Landroid/content/Context;Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V

    .line 59
    const-string/jumbo v1, "LxPostDownloadManager"

    const-string/jumbo v2, "onDownloadSuccess | addNotification"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lbaj;->c:Lxr;

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxr;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;Landroid/content/Intent;)V
    .locals 3
    .param p1, "updateInfo"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string/jumbo v1, "extra_action"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "click"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const-string/jumbo v1, "LxPostDownloadManager"

    const-string/jumbo v2, "onNotificationClicked | click the notification"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lbaj;->b()V

    .line 85
    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lbaj;->a(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lbaj;->c:Lxr;

    invoke-virtual {p1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxr;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    const-string/jumbo v1, "delete"

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string/jumbo v1, "LxPostDownloadManager"

    const-string/jumbo v2, "onNotificationClicked | delete the notification"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lbaj;->a:Landroid/content/Context;

    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-virtual {v0, p1}, Lns;->a(Ljava/lang/String;)V

    .line 97
    const-string/jumbo v0, "LxPostDownloadManager"

    const-string/jumbo v1, "installApp | goto installed"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string/jumbo v0, "LxPostDownloadManager"

    const-string/jumbo v1, "installApp | apk has been deleted"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lbaj;->b:Lban;

    iget-object v1, p0, Lbaj;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lban;->a(Landroid/content/Context;)V

    .line 73
    const-string/jumbo v0, "LxPostDownloadManager"

    const-string/jumbo v1, "onDownloadSuccess | deleteNofication"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method
