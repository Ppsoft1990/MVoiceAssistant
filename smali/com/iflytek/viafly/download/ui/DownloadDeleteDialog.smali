.class public final Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;
.super Lcom/iflytek/viafly/ui/activity/BaseDialog;
.source "DownloadDeleteDialog.java"


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Lcom/iflytek/common/download/entities/DownloadInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/iflytek/viafly/ui/activity/BaseDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    const-string/jumbo v1, "DownloadDeleteDialog"

    const-string/jumbo v2, "-------->> onClick()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->finish()V

    .line 74
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "DOWNLOAD_INFO"

    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->b:Lcom/iflytek/common/download/entities/DownloadInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    const-string/jumbo v1, "DELETE_FILE"

    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const-string/jumbo v0, "DownloadDeleteDialog"

    const-string/jumbo v1, "------------->> onCreate()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-super {p0, p1}, Lcom/iflytek/viafly/ui/activity/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/iflytek/common/download/entities/DownloadInfo;

    iput-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->b:Lcom/iflytek/common/download/entities/DownloadInfo;

    .line 36
    return-void
.end method

.method protected registerListener()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/iflytek/base/skin/customView/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method protected setView()V
    .locals 6

    .prologue
    .line 40
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->setContentView(Landroid/view/View;)V

    .line 41
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getMainTitle()Landroid/widget/TextView;

    move-result-object v2

    const-string/jumbo v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0}, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {}, Lcom/iflytek/base/skin/ThemeManager;->getInstance()Lcom/iflytek/base/skin/ThemeManager;

    move-result-object v3

    const-string/jumbo v4, "image.setting_item_normal"

    sget-object v5, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/base/skin/ThemeManager;->getDrawable(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 44
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03008a

    iget-object v3, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    .line 45
    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v3

    .line 44
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "View":Landroid/view/View;
    const v2, 0x7f0b03bc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->a:Landroid/widget/CheckBox;

    .line 48
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 49
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v2

    const-string/jumbo v3, "\u53d6\u6d88"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v2

    const-string/jumbo v3, "\u5220\u9664"

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->setRightWarnStatus()V

    .line 53
    iget-object v2, p0, Lcom/iflytek/viafly/download/ui/DownloadDeleteDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 54
    return-void
.end method
