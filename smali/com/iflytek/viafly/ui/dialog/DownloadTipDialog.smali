.class public Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;
.super Lcom/iflytek/viafly/ui/dialog/CustomDialog;
.source "DownloadTipDialog.java"


# instance fields
.field private dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/ui/dialog/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    .line 16
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    .line 17
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->setContentView(Landroid/view/View;)V

    .line 18
    return-void
.end method


# virtual methods
.method public setFileName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->setAboveTextViewMessage(Ljava/lang/CharSequence;)V

    .line 26
    return-void
.end method

.method public setFileSize(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->setBelowTextViewMessage(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->dialogView:Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialogView;->setTitle(Ljava/lang/CharSequence;)V

    .line 22
    return-void
.end method
