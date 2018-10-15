.class public final Lcom/iflytek/viafly/versionupdate/UpdateDialog;
.super Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;
.source "UpdateDialog.java"

# interfaces
.implements Lvu$a;


# instance fields
.field public o:Landroid/os/Handler;

.field private p:I

.field private q:Landroid/view/View;

.field private r:Z

.field private s:Landroid/content/Context;

.field private t:Lxr;

.field private u:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;-><init>()V

    .line 74
    iput v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->p:I

    .line 78
    iput-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->r:Z

    .line 99
    new-instance v0, Lcom/iflytek/viafly/versionupdate/UpdateDialog$1;

    invoke-direct {v0, p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog$1;-><init>(Lcom/iflytek/viafly/versionupdate/UpdateDialog;)V

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/UpdateDialog;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/UpdateDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .param p1, "noPrompt"    # Z

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->t:Lxr;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxr;->h(Ljava/lang/String;)V

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->t:Lxr;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxr;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/viafly/versionupdate/UpdateDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->r:Z

    return v0
.end method

.method static synthetic b(Lcom/iflytek/viafly/versionupdate/UpdateDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iflytek/viafly/versionupdate/UpdateDialog;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->s:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 435
    const-string/jumbo v4, "\u7248\u672c\u66f4\u65b0"

    .line 436
    .local v4, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v4

    .line 441
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 440
    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p1}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v6

    .line 442
    .local v6, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 443
    invoke-virtual {v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, "filePath":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v7}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    new-instance v8, Lns;

    invoke-direct {v8}, Lns;-><init>()V

    .line 446
    .local v8, "installManager":Lns;
    invoke-virtual {v8, v7}, Lns;->a(Ljava/lang/String;)V

    .line 455
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "installManager":Lns;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->finish()V

    .line 457
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_300004"

    .line 458
    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 459
    return-void

    .line 449
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v2, "lingxi_update_application"

    move v3, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "update_no_prompt_version"

    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->finish()V

    .line 227
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 243
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f0c02ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0c0037

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 252
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleCancleStatus()V

    .line 253
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 259
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->c:Landroid/widget/TextView;

    const v5, 0x7f0c031d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 260
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    const-string/jumbo v1, ""

    .line 263
    .local v1, "textPrompt":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "updateDetail":Ljava/lang/String;
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "updateInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 268
    :try_start_0
    const-string/jumbo v4, "###"

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 282
    :goto_0
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 284
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->c:Landroid/widget/TextView;

    const v5, 0x7f0c031b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 289
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v4

    const v5, 0x7f0c0040

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 292
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/DialogView;->setRightConfirmStatus()V

    .line 293
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v4

    const v5, 0x7f0c005f

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 294
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v4, v5, :cond_0

    .line 295
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v4

    const v5, 0x7f0c00b0

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->i()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 299
    const-string/jumbo v4, "BaseUpdateDialog"

    const-string/jumbo v5, "needUpdateUI | app has download!"

    invoke-static {v4, v5}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->c:Landroid/widget/TextView;

    const v5, 0x7f0c031e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 301
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v4

    const v5, 0x7f0c0041

    invoke-virtual {v4, v5}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 304
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->t:Lxr;

    iget-object v5, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lxr;->e(Ljava/lang/String;)V

    .line 306
    :cond_1
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BaseUpdateDialog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v1

    .line 272
    goto/16 :goto_0

    .line 273
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v4, v5, :cond_3

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c02ec

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c02ed

    .line 275
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 276
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 277
    move-object v1, v3

    goto/16 :goto_0

    .line 279
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0c0305

    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0306

    .line 280
    invoke-virtual {p0, v5}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->s:Landroid/content/Context;

    invoke-static {v0}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v0

    invoke-virtual {v0}, Lbak;->c()Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->u:Z

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->s:Landroid/content/Context;

    invoke-static {v1}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v1

    invoke-virtual {v1}, Lbak;->d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 323
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->u:Z

    goto :goto_0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->u:Z

    return v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 469
    const-string/jumbo v0, "BaseUpdateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVerionCheckError | errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(IIILjava/lang/Object;)V

    .line 471
    return-void
.end method

.method protected a(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 333
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 334
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 335
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 336
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 338
    return-void
.end method

.method protected a(IILjava/lang/Object;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "type"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    .line 386
    if-eqz p3, :cond_1

    instance-of v0, p3, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v0, :cond_1

    .line 387
    check-cast p3, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .end local p3    # "result":Ljava/lang/Object;
    iput-object p3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 388
    sget-object v0, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->f()V

    .line 398
    :goto_0
    return-void

    .line 391
    :cond_0
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    goto :goto_0

    .line 395
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_1
    const v0, 0x7f0c02f7

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    goto :goto_0
.end method

.method protected a(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->c(I)I

    move-result v1

    .line 414
    .local v1, "state":I
    if-eqz v1, :cond_0

    .line 415
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x4c4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 417
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 418
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->o:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 432
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->s:Landroid/content/Context;

    new-instance v3, Lcom/iflytek/viafly/versionupdate/UpdateDialog$2;

    invoke-direct {v3, p0, p2}, Lcom/iflytek/viafly/versionupdate/UpdateDialog$2;-><init>(Lcom/iflytek/viafly/versionupdate/UpdateDialog;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    const/4 v2, 0x0

    .line 463
    const-string/jumbo v0, "BaseUpdateDialog"

    const-string/jumbo v1, "onVersionCheckResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2, v2, p1}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(IIILjava/lang/Object;)V

    .line 465
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorContent"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->a(Ljava/lang/String;)V

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->s:Landroid/content/Context;

    const v1, 0x7f0c0302

    .line 405
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->c:Landroid/widget/TextView;

    const v1, 0x7f0c031c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 407
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    const-string/jumbo v0, "BaseUpdateDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkUpdateVersion type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v0, 0x1

    iget v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->p:I

    if-ne v0, v1, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->f()V

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->p:I

    if-nez v0, :cond_0

    .line 355
    invoke-static {p0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 356
    const v0, 0x7f0c02fd

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->setSingleConfirmStatus()V

    goto :goto_0

    .line 359
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->e()V

    .line 360
    invoke-static {p0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {v0, v3, p0, v3}, Lvu;->a(ILvu$a;Z)V

    goto :goto_0
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 370
    new-instance v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-direct {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;-><init>()V

    iput-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 371
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v1

    invoke-virtual {v1}, Lvu;->d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 372
    .local v0, "info":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-eqz v0, :cond_0

    .line 373
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateType(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)V

    .line 375
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateInfo(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateDetail(Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateShowId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateShowId(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateVersion(Ljava/lang/String;)V

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->h()V

    .line 382
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->r:Z

    .line 127
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->finish()V

    .line 139
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v0

    sget-object v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v0, v1, :cond_1

    .line 140
    const-string/jumbo v0, "BaseUpdateDialog"

    const-string/jumbo v1, "finish sendBroadcast ACTION_FORCE_CLOSE "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_FORCE_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->sendBroadcast(Landroid/content/Intent;)V

    .line 143
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 195
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->finish()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 200
    iget-boolean v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->m:Z

    if-eqz v0, :cond_2

    .line 201
    invoke-static {p0}, Lazo;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 202
    :cond_2
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    const-string/jumbo v0, "BaseUpdateDialog"

    const-string/jumbo v1, "onClick | click update no traffic"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->s:Landroid/content/Context;

    invoke-static {v0}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v0

    invoke-virtual {v0}, Lbak;->e()V

    .line 205
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->t:Lxr;

    iget-object v1, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxr;->f(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->finish()V

    goto :goto_0

    .line 208
    :cond_3
    invoke-static {p0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lxs;->a(I)V

    .line 209
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/view/DialogView;->getLeftButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->q:Landroid/view/View;

    .line 215
    invoke-direct {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->d()V

    .line 216
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "launch_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->p:I

    .line 90
    :cond_0
    iput-object p0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->s:Landroid/content/Context;

    .line 91
    invoke-static {p0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lxs;->a(J)V

    .line 92
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lxr;->a(Landroid/content/Context;)Lxr;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->t:Lxr;

    .line 93
    invoke-super {p0, p1}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->onCreate(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/iflytek/viafly/versionupdate/BaseUpdateDialog;->onDestroy()V

    .line 148
    const-string/jumbo v0, "BaseUpdateDialog"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {p0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    invoke-virtual {v0}, Lxs;->c()Z

    .line 150
    invoke-static {p0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lvu;->b(Lvu$a;)V

    .line 151
    return-void
.end method

.method protected setView()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 155
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->setContentView(Landroid/view/View;)V

    .line 156
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getMainTitle()Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->c:Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->c:Landroid/widget/TextView;

    const v4, 0x7f0c031d

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 158
    invoke-virtual {p0}, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030089

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "body_view":Landroid/view/View;
    const v3, 0x7f0b03b4

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->e:Landroid/widget/TextView;

    .line 161
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->e:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 163
    const v3, 0x7f0b03b5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->i:Landroid/widget/LinearLayout;

    .line 164
    const v3, 0x7f0b03b6

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->j:Landroid/widget/CheckBox;

    .line 165
    const v3, 0x7f0b03b7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->f:Landroid/widget/ProgressBar;

    .line 166
    const v3, 0x7f0b03b8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->g:Landroid/widget/LinearLayout;

    .line 169
    const v3, 0x7f0b03bb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->h:Landroid/widget/TextView;

    .line 170
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 173
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v3

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 174
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getBody()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getRightButton()Lcom/iflytek/base/skin/customView/XButton;

    move-result-object v3

    const v4, 0x7f0c0038

    invoke-virtual {v3, v4}, Lcom/iflytek/base/skin/customView/XButton;->setText(I)V

    .line 178
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->setRightConfirmStatus()V

    .line 179
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getFootBarLevel2()Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->mDialogView:Lcom/iflytek/viafly/ui/view/DialogView;

    invoke-virtual {v3}, Lcom/iflytek/viafly/ui/view/DialogView;->getSingleCancelButton()Landroid/widget/Button;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    const v3, 0x7f0b03b9

    .line 183
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->k:Landroid/widget/ImageView;

    .line 184
    const v3, 0x7f0b03ba

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->l:Landroid/widget/ImageView;

    .line 185
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    .line 186
    invoke-static {p0, v4, v5}, Lcom/iflytek/yd/util/UIUtil;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v2, v6, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 187
    .local v2, "relativeLayoutLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0x9

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 188
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 189
    iget-object v3, p0, Lcom/iflytek/viafly/versionupdate/UpdateDialog;->k:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method
