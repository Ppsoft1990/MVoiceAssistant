.class public Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;
.super Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;
.source "ResUpdateDialog.java"

# interfaces
.implements Lno$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;,
        Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;
    }
.end annotation


# instance fields
.field public o:Landroid/os/Handler;

.field private p:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;

.field private q:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

.field private r:I

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;-><init>()V

    .line 51
    sget-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->q:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->s:Z

    .line 172
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$1;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    return-void
.end method

.method private a(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 550
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 551
    const/4 p1, 0x3

    .line 556
    .end local p1    # "type":I
    :cond_0
    :goto_0
    return p1

    .line 552
    .restart local p1    # "type":I
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 553
    const/16 p1, 0x8

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string/jumbo v0, "com.iflytek.cmcc.EXTRA_DOWNLOAD_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    goto :goto_0
.end method

.method private a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->q:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;
    .param p1, "x1"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .param p1, "isSucceed"    # Z

    .prologue
    const v5, 0x7f0c0038

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 322
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    if-eqz p1, :cond_1

    .line 326
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 330
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    .line 331
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    if-ne v3, v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 339
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    .line 342
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->s:Z

    return v0
.end method

.method private b(ILjava/lang/String;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x3

    const/4 v3, 0x1

    .line 525
    if-ne p1, v3, :cond_1

    .line 527
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 526
    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v2, "yueyu_resource"

    const-string/jumbo v4, "\u7ca4\u8bed\u8d44\u6e90"

    .line 533
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 532
    invoke-static {v5}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v5

    .line 533
    invoke-virtual {v5, v1}, Lns;->d(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, p2

    .line 527
    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->finish()V

    .line 547
    return-void

    .line 535
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 536
    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v2, "cnsms_resource"

    const-string/jumbo v4, "\u79bb\u7ebf\u77ed\u4fe1\u542c\u5199\u5305"

    .line 543
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 542
    invoke-static {v1}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v1

    .line 543
    invoke-virtual {v1, v5}, Lns;->d(I)Ljava/lang/String;

    move-result-object v6

    move v1, v5

    move-object v5, p2

    .line 537
    invoke-virtual/range {v0 .. v6}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->f()V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 422
    invoke-static {p1}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x1

    .line 425
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e()V

    return-void
.end method

.method static synthetic d(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .prologue
    .line 46
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    return v0
.end method

.method private d()Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->q:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    return-object v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 233
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    if-ne v0, v2, :cond_2

    .line 234
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f0c03c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 239
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    if-ne v0, v2, :cond_3

    .line 243
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    .line 244
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c01c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iflytek/base/skin/customView/XButton;->setVisibility(I)V

    .line 255
    return-void

    .line 235
    :cond_2
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    if-ne v0, v3, :cond_0

    .line 236
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f0c006e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 245
    :cond_3
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    if-ne v0, v3, :cond_1

    .line 246
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    .line 247
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-static {v1}, Lcom/iflytek/viafly/util/IflyStringUtil;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->i()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 266
    new-instance v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->p:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;

    .line 267
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->p:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 268
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 274
    .line 275
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    .line 275
    invoke-virtual {v0, v1}, Lno;->b(I)V

    .line 276
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->h()V

    .line 277
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 288
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 296
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 302
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c03c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 315
    return-void

    .line 304
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    if-ne v0, v3, :cond_0

    .line 305
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->d()Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->UNZIP_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->p:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->p:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;->cancel(Z)Z

    .line 353
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    .line 354
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b:Lyd;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b:Lyd;

    invoke-virtual {v0}, Lyd;->a()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 401
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 402
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 403
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 404
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 406
    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "type"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 453
    if-eqz p3, :cond_3

    instance-of v2, p3, Lyd;

    if-eqz v2, :cond_3

    .line 454
    check-cast p3, Lyd;

    .end local p3    # "result":Ljava/lang/Object;
    iput-object p3, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b:Lyd;

    .line 455
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 459
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_1

    .line 460
    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(ILjava/lang/String;)V

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 462
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_2
    const v2, 0x7f0c02ea

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Ljava/lang/String;)V

    .line 467
    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    goto :goto_0

    .line 470
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, p2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c(I)I

    move-result v1

    .line 471
    .local v1, "state":I
    const/16 v2, 0x384

    if-eq v1, v2, :cond_4

    const v2, 0xc3c09

    if-ne v1, v2, :cond_5

    .line 473
    :cond_4
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x4c4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 475
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 476
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 478
    .end local v0    # "message":Landroid/os/Message;
    :cond_5
    const v2, 0x7f0c02f7

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Ljava/lang/String;)V

    .line 479
    sget-object v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->IDLE_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-direct {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    goto :goto_0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c(I)I

    move-result v1

    .line 503
    .local v1, "state":I
    if-eqz v1, :cond_0

    .line 504
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x4c4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 506
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 507
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 522
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 511
    :cond_0
    new-instance v2, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$2;-><init>(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;ILjava/lang/String;)V

    invoke-static {p0, v2}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/yd/business/OperationInfo;II)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p2, "requestType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 494
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(IIILjava/lang/Object;)V

    .line 496
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 495
    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-class v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .line 497
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 496
    invoke-virtual {v0, v1}, Lno;->b(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 430
    sget-object v0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->CHECK_RES_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;)V

    .line 433
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    .line 433
    invoke-virtual {v0, v1}, Lns;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 443
    new-instance v1, Lyd;

    invoke-direct {v1}, Lyd;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b:Lyd;

    .line 445
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 444
    invoke-static {v1}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v1

    .line 445
    invoke-virtual {v1}, Lvu;->d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 446
    .local v0, "info":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-eqz v0, :cond_0

    .line 447
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->b:Lyd;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lyd;->a(Ljava/lang/String;)V

    .line 449
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 486
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->j()V

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->s:Z

    .line 488
    invoke-super {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->finish()V

    .line 489
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->d()Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->DOWNLOAD_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    if-ne v0, v1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->g()V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->m:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-static {p0}, Lazo;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 127
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->d()Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;->UNZIP_STATUS:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$UpdateStatus;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->p:Lcom/iflytek/viafly/versionupdate/ResUpdateDialog$a;

    if-eqz v0, :cond_3

    .line 128
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->j()V

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->finish()V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-class v1, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1, p0}, Lno;->a(Ljava/lang/String;Lno$b;)V

    .line 85
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->a(Landroid/content/Intent;)V

    .line 86
    invoke-super {p0, p1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->onCreate(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->onNewIntent(Landroid/content/Intent;)V

    .line 282
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->onStop()V

    .line 116
    return-void
.end method

.method protected setView()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    .line 138
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {p0, v2}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->setContentView(Landroid/view/View;)V

    .line 139
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getMainTitle()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    .line 140
    iget v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 141
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    const v3, 0x7f0c03c4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 145
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03014f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "body_view":Landroid/view/View;
    const v2, 0x7f0b0777

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->d:Landroid/widget/ImageView;

    .line 148
    const v2, 0x7f0b0778

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->e:Landroid/widget/TextView;

    .line 149
    const v2, 0x7f0b0779

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->f:Landroid/widget/ProgressBar;

    .line 150
    const v2, 0x7f0b077a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->g:Landroid/widget/LinearLayout;

    .line 152
    const v2, 0x7f0b077d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->h:Landroid/widget/TextView;

    .line 153
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v2

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 156
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v2

    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 157
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 160
    const v2, 0x7f0b077b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->k:Landroid/widget/ImageView;

    .line 161
    const v2, 0x7f0b077c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->l:Landroid/widget/ImageView;

    .line 162
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    .line 163
    invoke-static {p0, v2, v3}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 164
    .local v1, "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 166
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->k:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void

    .line 142
    .end local v0    # "body_view":Landroid/view/View;
    .end local v1    # "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->r:I

    if-ne v2, v6, :cond_0

    .line 143
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/ResUpdateDialog;->c:Landroid/widget/TextView;

    const v3, 0x7f0c006e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
