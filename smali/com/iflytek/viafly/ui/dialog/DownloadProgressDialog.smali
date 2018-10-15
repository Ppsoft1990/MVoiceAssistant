.class public Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;
.super Lcom/iflytek/viafly/ui/dialog/CustomDialog;
.source "DownloadProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProgressDialog"


# instance fields
.field private dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    .line 28
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setContentView(Landroid/view/View;)V

    .line 30
    return-void
.end method


# virtual methods
.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method public setPercentage(D)V
    .locals 5
    .param p1, "percentage"    # D

    .prologue
    .line 73
    const-string/jumbo v1, "DownloadProgressDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPercentage(), percentage is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_0

    .line 75
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 77
    :cond_0
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 78
    .local v0, "precent":I
    iget-object v1, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setPercent(I)V

    .line 79
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public setPositiveButtonClickable(Z)V
    .locals 1
    .param p1, "isClickable"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setPositiveButtonClickable(Z)V

    .line 95
    return-void
.end method

.method public setPositiveButtonClickableTextColor()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setPositiveButtonClickableTextColor()V

    .line 103
    return-void
.end method

.method public setPositiveButtonUnClickableTextColor()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setPositiveButtonUnClickableTextColor()V

    .line 99
    return-void
.end method

.method public setSizeInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "sizeInfo"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string/jumbo v0, "DownloadProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSizeInfo(), sizeInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setSizeInfo(Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method public switchDownloadView()V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "DownloadProgressDialog"

    const-string/jumbo v1, "switchDownloadView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->DOWNLOADING:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->switchView(Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;)V

    .line 38
    return-void
.end method

.method public switchErrorView(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, "DownloadProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchErrorView(), errorMsg is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->DOWNLOAD_ERROR:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->switchView(Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;)V

    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->setErrorViewTip(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    return-void
.end method

.method public switchRequestView()V
    .locals 2

    .prologue
    .line 41
    const-string/jumbo v0, "DownloadProgressDialog"

    const-string/jumbo v1, "switchRequestView()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;

    sget-object v1, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;->REQUESTING:Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialogView;->switchView(Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog$ViewStatus;)V

    .line 43
    return-void
.end method
