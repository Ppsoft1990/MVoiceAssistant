.class public Lbam;
.super Ljava/lang/Object;
.source "VersionCheckManager.java"

# interfaces
.implements Lvu$a;
.implements Lyn;


# instance fields
.field public a:Landroid/os/Handler;

.field private final b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:Lxr;

.field private g:Z

.field private h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

.field private i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

.field private j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, "VersionCheckManager"

    iput-object v0, p0, Lbam;->b:Ljava/lang/String;

    .line 63
    iput v1, p0, Lbam;->d:I

    .line 64
    iput-boolean v1, p0, Lbam;->e:Z

    .line 142
    new-instance v0, Lbam$5;

    invoke-direct {v0, p0}, Lbam$5;-><init>(Lbam;)V

    iput-object v0, p0, Lbam;->a:Landroid/os/Handler;

    .line 80
    const-string/jumbo v0, "VersionCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "VersionCheckManager context : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p1, p0, Lbam;->c:Landroid/content/Context;

    .line 82
    iput p2, p0, Lbam;->d:I

    .line 83
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lxs;->a(Landroid/content/Context;)Lxs;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lxs;->a(J)V

    .line 84
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lxr;->a(Landroid/content/Context;)Lxr;

    move-result-object v0

    iput-object v0, p0, Lbam;->f:Lxr;

    .line 85
    invoke-direct {p0}, Lbam;->g()V

    .line 86
    return-void
.end method

.method static synthetic a(Lbam;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lbam;

    .prologue
    .line 47
    iget-object v0, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    return-object v0
.end method

.method private a(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 276
    iget-object v1, p0, Lbam;->a:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 278
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 279
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 280
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lbam;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "type"    # I
    .param p3, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 165
    if-eqz p3, :cond_4

    instance-of v4, p3, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v4, :cond_4

    .line 166
    check-cast p3, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .end local p3    # "result":Ljava/lang/Object;
    iput-object p3, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 167
    sget-object v4, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->NoNeed:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    iget-object v5, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v5}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v5

    if-eq v4, v5, :cond_3

    invoke-virtual {p0}, Lbam;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 169
    iget-object v4, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setCheckedUI()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 170
    iget-object v4, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v5, "\u65b0\u7248\u672c\u66f4\u65b0"

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 172
    const-string/jumbo v1, ""

    .line 173
    .local v1, "textPrompt":Ljava/lang/String;
    iget-object v4, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v2

    .line 174
    .local v2, "updateDetail":Ljava/lang/String;
    iget-object v4, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "updateInfo":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    :try_start_0
    const-string/jumbo v4, "###"

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 190
    :goto_0
    iget-object v4, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    invoke-virtual {v4, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 192
    iget-object v4, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v5, "\u4e0b\u6b21\u518d\u8bf4"

    new-instance v6, Lbam$6;

    invoke-direct {v6, p0}, Lbam$6;-><init>(Lbam;)V

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 201
    iget-object v4, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v5, "\u7acb\u5373\u66f4\u65b0"

    new-instance v6, Lbam$7;

    invoke-direct {v6, p0}, Lbam$7;-><init>(Lbam;)V

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 220
    .end local v1    # "textPrompt":Ljava/lang/String;
    .end local v2    # "updateDetail":Ljava/lang/String;
    .end local v3    # "updateInfo":Ljava/lang/String;
    :goto_1
    return-void

    .line 179
    .restart local v1    # "textPrompt":Ljava/lang/String;
    .restart local v2    # "updateDetail":Ljava/lang/String;
    .restart local v3    # "updateInfo":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "VersionCheckManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v4, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v1

    .line 182
    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v4}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v4

    sget-object v5, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v4, v5, :cond_1

    .line 184
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbam;->c:Landroid/content/Context;

    const v6, 0x7f0c02ec

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbam;->c:Landroid/content/Context;

    const v6, 0x7f0c02ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 186
    move-object v1, v3

    goto :goto_0

    .line 188
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbam;->c:Landroid/content/Context;

    const v6, 0x7f0c0305

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbam;->c:Landroid/content/Context;

    const v6, 0x7f0c0306

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 213
    .end local v1    # "textPrompt":Ljava/lang/String;
    .end local v2    # "updateDetail":Ljava/lang/String;
    .end local v3    # "updateInfo":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->dismiss()V

    .line 214
    iget-object v4, p0, Lbam;->c:Landroid/content/Context;

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 217
    .restart local p3    # "result":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->dismiss()V

    .line 218
    iget-object v4, p0, Lbam;->c:Landroid/content/Context;

    const-string/jumbo v5, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method static synthetic a(Lbam;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lbam;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lbam;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lbam;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbam;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lbam;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 245
    const-string/jumbo v4, "\u7248\u672c\u66f4\u65b0"

    .line 246
    .local v4, "title":Ljava/lang/String;
    iget-object v0, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v4

    .line 250
    :cond_0
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    invoke-virtual {v0, p1}, Lno;->f(Ljava/lang/String;)Lcom/iflytek/common/download/entities/DownloadInfo;

    move-result-object v6

    .line 251
    .local v6, "downloadInfo":Lcom/iflytek/common/download/entities/DownloadInfo;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 252
    invoke-virtual {v6}, Lcom/iflytek/common/download/entities/DownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "filePath":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v7}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lns;->a(Landroid/content/Context;)Lns;

    move-result-object v0

    invoke-virtual {v0, v7}, Lns;->a(Ljava/lang/String;)V

    .line 268
    .end local v7    # "filePath":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lwz;->a(Landroid/content/Context;)Lwz;

    move-result-object v0

    const-string/jumbo v1, "LX_300004"

    invoke-virtual {v0, v1}, Lwz;->a(Ljava/lang/String;)V

    .line 269
    return-void

    .line 258
    .restart local v7    # "filePath":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v2, "lingxi_update_application"

    move v3, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    .end local v7    # "filePath":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    const-string/jumbo v2, "lingxi_update_application"

    move v3, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lno;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2
    .param p1, "noPrompt"    # Z

    .prologue
    .line 441
    invoke-direct {p0}, Lbam;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    if-eqz p1, :cond_1

    .line 443
    iget-object v0, p0, Lbam;->f:Lxr;

    iget-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxr;->h(Ljava/lang/String;)V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v0, p0, Lbam;->f:Lxr;

    iget-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxr;->g(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lbam;Z)Z
    .locals 0
    .param p0, "x0"    # Lbam;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lbam;->e:Z

    return p1
.end method

.method private b(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lno;->a(Landroid/content/Context;)Lno;

    move-result-object v0

    invoke-virtual {v0, p1}, Lno;->a(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lbam;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lbam;

    .prologue
    .line 47
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbam;Z)V
    .locals 0
    .param p0, "x0"    # Lbam;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lbam;->a(Z)V

    return-void
.end method

.method static synthetic c(Lbam;)Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    .locals 1
    .param p0, "x0"    # Lbam;

    .prologue
    .line 47
    iget-object v0, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v0

    invoke-virtual {v0}, Lbak;->c()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 289
    invoke-direct {p0}, Lbam;->c()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    const/4 v1, 0x0

    iput-boolean v1, p0, Lbam;->g:Z

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v1}, Lbak;->a(Landroid/content/Context;)Lbak;

    move-result-object v1

    invoke-virtual {v1}, Lbak;->d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 295
    .local v0, "updateInfo":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lbam;->g:Z

    goto :goto_0
.end method

.method static synthetic d(Lbam;)V
    .locals 0
    .param p0, "x0"    # Lbam;

    .prologue
    .line 47
    invoke-direct {p0}, Lbam;->f()V

    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lbam;->g:Z

    return v0
.end method

.method static synthetic e(Lbam;)Z
    .locals 1
    .param p0, "x0"    # Lbam;

    .prologue
    .line 47
    iget-boolean v0, p0, Lbam;->e:Z

    return v0
.end method

.method static synthetic f(Lbam;)Lxr;
    .locals 1
    .param p0, "x0"    # Lbam;

    .prologue
    .line 47
    iget-object v0, p0, Lbam;->f:Lxr;

    return-object v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 310
    const-string/jumbo v0, "VersionCheckManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkUpdateVersion type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbam;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v0, p0, Lbam;->d:I

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v0

    invoke-virtual {v0, v3, p0, v3}, Lvu;->a(ILvu$a;Z)V

    goto :goto_0
.end method

.method static synthetic g(Lbam;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lbam;

    .prologue
    .line 47
    iget-object v0, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 325
    new-instance v1, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-direct {v1}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;-><init>()V

    iput-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .line 326
    iget-object v1, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v1}, Lvu;->b(Landroid/content/Context;)Lvu;

    move-result-object v1

    invoke-virtual {v1}, Lvu;->d()Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    move-result-object v0

    .line 327
    .local v0, "info":Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;
    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setDownloadUrl(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateType(Lcom/iflytek/viafly/blc/operation/entities/UpdateType;)V

    .line 330
    iget-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateInfo(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateDetail(Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateShowId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateShowId(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->setUpdateVersion(Ljava/lang/String;)V

    .line 336
    :cond_0
    invoke-direct {p0}, Lbam;->d()V

    .line 337
    return-void
.end method

.method private h()V
    .locals 9

    .prologue
    .line 340
    const-string/jumbo v6, "VersionCheckManager"

    const-string/jumbo v7, "showDialog start"

    invoke-static {v6, v7}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string/jumbo v6, "VersionCheckManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showAutoUpdateUI context: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lbam;->c:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v6, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    iget-object v7, p0, Lbam;->c:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 344
    iget-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    iget-object v7, p0, Lbam;->c:Landroid/content/Context;

    const v8, 0x7f0c031b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 345
    const-string/jumbo v2, "\u7acb\u5373\u66f4\u65b0"

    .line 346
    .local v2, "positiveBtnText":Ljava/lang/String;
    const-string/jumbo v1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 347
    .local v1, "negativeBtnText":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 348
    .local v3, "textPrompt":Ljava/lang/String;
    iget-object v6, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v6}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateDetail()Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "updateDetail":Ljava/lang/String;
    iget-object v6, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v6}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "updateInfo":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 353
    :try_start_0
    const-string/jumbo v6, "###"

    const-string/jumbo v7, "\n"

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 366
    :goto_0
    iget-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    invoke-virtual {v6, v3}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 367
    iget-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    iget-object v7, p0, Lbam;->c:Landroid/content/Context;

    const v8, 0x7f0c0318

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setCheckboxTips(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 369
    iget-object v6, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v6}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v6

    sget-object v7, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v6, v7, :cond_0

    .line 370
    iget-object v6, p0, Lbam;->c:Landroid/content/Context;

    const v7, 0x7f0c00b0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 372
    :cond_0
    invoke-direct {p0}, Lbam;->e()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 373
    const-string/jumbo v6, "VersionCheckManager"

    const-string/jumbo v7, "needUpdateUI | app has download!"

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    iget-object v7, p0, Lbam;->c:Landroid/content/Context;

    const v8, 0x7f0c031e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 375
    iget-object v6, p0, Lbam;->c:Landroid/content/Context;

    const v7, 0x7f0c0041

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 378
    iget-object v6, p0, Lbam;->f:Lxr;

    iget-object v7, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v7}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lxr;->e(Ljava/lang/String;)V

    .line 381
    :cond_1
    iget-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    new-instance v7, Lbam$9;

    invoke-direct {v7, p0}, Lbam$9;-><init>(Lbam;)V

    invoke-virtual {v6, v1, v7}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 396
    iget-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    new-instance v7, Lbam$10;

    invoke-direct {v7, p0}, Lbam$10;-><init>(Lbam;)V

    invoke-virtual {v6, v2, v7}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 415
    iget-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    new-instance v7, Lbam$2;

    invoke-direct {v7, p0}, Lbam$2;-><init>(Lbam;)V

    invoke-virtual {v6, v7}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 432
    :try_start_1
    iget-object v6, p0, Lbam;->j:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    # hidden update dialog
    # invoke-virtual {v6}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    :goto_1
    const-string/jumbo v6, "VersionCheckManager"

    const-string/jumbo v7, "showDialog end"

    invoke-static {v6, v7}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "VersionCheckManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v6, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v6}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateInfo()Ljava/lang/String;

    move-result-object v3

    .line 357
    goto/16 :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v6, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v6}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getUpdateType()Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    move-result-object v6

    sget-object v7, Lcom/iflytek/viafly/blc/operation/entities/UpdateType;->Force:Lcom/iflytek/viafly/blc/operation/entities/UpdateType;

    if-ne v6, v7, :cond_3

    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lbam;->c:Landroid/content/Context;

    const v8, 0x7f0c02ec

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lbam;->c:Landroid/content/Context;

    const v8, 0x7f0c02ed

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 360
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 361
    move-object v3, v5

    goto/16 :goto_0

    .line 363
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lbam;->c:Landroid/content/Context;

    const v8, 0x7f0c0305

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lbam;->c:Landroid/content/Context;

    const v8, 0x7f0c0306

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 433
    :catch_1
    move-exception v0

    .line 434
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "VersionCheckManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showAutoUpdateUI context: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lbam;->c:Landroid/content/Context;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string/jumbo v6, "VersionCheckManager"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method static synthetic h(Lbam;)Z
    .locals 1
    .param p0, "x0"    # Lbam;

    .prologue
    .line 47
    invoke-direct {p0}, Lbam;->e()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 89
    const/4 v0, 0x1

    iget v1, p0, Lbam;->d:I

    if-ne v0, v1, :cond_1

    .line 90
    invoke-direct {p0}, Lbam;->h()V

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget v0, p0, Lbam;->d:I

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lbam;->c:Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 99
    :cond_2
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    iget-object v1, p0, Lbam;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 100
    iget-object v0, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v1, "\u6b63\u5728\u68c0\u67e5\u66f4\u65b0"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 102
    iget-object v0, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lbam$1;

    invoke-direct {v2, p0}, Lbam$1;-><init>(Lbam;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 111
    iget-object v0, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    new-instance v1, Lbam$3;

    invoke-direct {v1, p0}, Lbam$3;-><init>(Lbam;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 127
    iget-object v0, p0, Lbam;->i:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    .line 129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbam$4;

    invoke-direct {v1, p0}, Lbam$4;-><init>(Lbam;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 464
    const-string/jumbo v0, "VersionCheckManager"

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

    .line 465
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lbam;->a(IIILjava/lang/Object;)V

    .line 466
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lbam;->b(I)I

    move-result v1

    .line 224
    .local v1, "state":I
    if-eqz v1, :cond_0

    .line 225
    iget-object v2, p0, Lbam;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 226
    .local v0, "message":Landroid/os/Message;
    const/16 v2, 0x4c4

    iput v2, v0, Landroid/os/Message;->what:I

    .line 227
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 228
    iget-object v2, p0, Lbam;->a:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v2, p0, Lbam;->c:Landroid/content/Context;

    new-instance v3, Lbam$8;

    invoke-direct {v3, p0, p2}, Lbam$8;-><init>(Lbam;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    .prologue
    const/4 v2, 0x0

    .line 458
    const-string/jumbo v0, "VersionCheckManager"

    const-string/jumbo v1, "onVersionCheckResult"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2, v2, p1}, Lbam;->a(IIILjava/lang/Object;)V

    .line 460
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lbam;->h:Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;

    invoke-virtual {v0}, Lcom/iflytek/viafly/blc/operation/entities/UpdateInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 453
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p5, p2}, Lbam;->a(IIILjava/lang/Object;)V

    .line 454
    return-void
.end method
