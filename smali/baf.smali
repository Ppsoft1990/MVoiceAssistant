.class public Lbaf;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

.field private c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

.field private d:Lxr;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lbaf;->a:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lbaf;->a:Landroid/content/Context;

    invoke-static {v0}, Lxr;->a(Landroid/content/Context;)Lxr;

    move-result-object v0

    iput-object v0, p0, Lbaf;->d:Lxr;

    .line 48
    return-void
.end method

.method static synthetic a(Lbaf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbaf;

    .prologue
    .line 36
    iget-object v0, p0, Lbaf;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lbaf;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lbaf;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lbaf;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lbaf;Lcom/baidu/aiupdatesdk/UpdateInfo;)V
    .locals 0
    .param p0, "x0"    # Lbaf;
    .param p1, "x1"    # Lcom/baidu/aiupdatesdk/UpdateInfo;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lbaf;->a(Lcom/baidu/aiupdatesdk/UpdateInfo;)V

    return-void
.end method

.method private a(Lcom/baidu/aiupdatesdk/UpdateInfo;)V
    .locals 11
    .param p1, "updateInfo"    # Lcom/baidu/aiupdatesdk/UpdateInfo;

    .prologue
    .line 94
    const-string/jumbo v7, "BaiduChanelUpdateHelper"

    const-string/jumbo v8, "showDialog start"

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v7, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    iget-object v8, p0, Lbaf;->a:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 97
    iget-object v7, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    iget-object v8, p0, Lbaf;->a:Landroid/content/Context;

    const v9, 0x7f0c031b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 98
    const-string/jumbo v2, "\u7acb\u5373\u66f4\u65b0"

    .line 99
    .local v2, "positiveBtnText":Ljava/lang/String;
    const-string/jumbo v1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 100
    .local v1, "negativeBtnText":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getChangeLog()Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "updateDetail":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->isForceUpdate()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lbaf;->a:Landroid/content/Context;

    const v9, 0x7f0c02ec

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lbaf;->a:Landroid/content/Context;

    const v9, 0x7f0c02ed

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 111
    :goto_0
    iget-object v7, p0, Lbaf;->a:Landroid/content/Context;

    const v8, 0x7f0c02e8

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "strInstallNote":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "strUpdateNote":Ljava/lang/String;
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    .local v3, "sp":Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/high16 v8, -0x10000

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x22

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 116
    iget-object v7, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    invoke-virtual {v7, v3}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 118
    iget-object v7, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    iget-object v8, p0, Lbaf;->a:Landroid/content/Context;

    const v9, 0x7f0c0318

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setCheckboxTips(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 120
    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->isForceUpdate()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    iget-object v7, p0, Lbaf;->a:Landroid/content/Context;

    const v8, 0x7f0c00b0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    iget-object v7, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    new-instance v8, Lbaf$2;

    invoke-direct {v8, p0, p1}, Lbaf$2;-><init>(Lbaf;Lcom/baidu/aiupdatesdk/UpdateInfo;)V

    invoke-virtual {v7, v1, v8}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 147
    iget-object v7, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    new-instance v8, Lbaf$3;

    invoke-direct {v8, p0}, Lbaf$3;-><init>(Lbaf;)V

    invoke-virtual {v7, v2, v8}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 162
    iget-object v7, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    new-instance v8, Lbaf$4;

    invoke-direct {v8, p0}, Lbaf$4;-><init>(Lbaf;)V

    invoke-virtual {v7, v8}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    .line 172
    :try_start_0
    iget-object v7, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    invoke-virtual {v7}, Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    const-string/jumbo v7, "BaiduChanelUpdateHelper"

    const-string/jumbo v8, "showDialog end"

    invoke-static {v7, v8}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 104
    .end local v3    # "sp":Landroid/text/SpannableString;
    .end local v4    # "strInstallNote":Ljava/lang/String;
    .end local v5    # "strUpdateNote":Ljava/lang/String;
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 105
    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 107
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lbaf;->a:Landroid/content/Context;

    const v9, 0x7f0c0305

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lbaf;->a:Landroid/content/Context;

    const v9, 0x7f0c0306

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 173
    .restart local v3    # "sp":Landroid/text/SpannableString;
    .restart local v4    # "strInstallNote":Ljava/lang/String;
    .restart local v5    # "strUpdateNote":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "BaiduChanelUpdateHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showAutoUpdateUI context: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lbaf;->a:Landroid/content/Context;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const-string/jumbo v7, "BaiduChanelUpdateHelper"

    const-string/jumbo v8, ""

    invoke-static {v7, v8, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic b(Lbaf;)Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lbaf;

    .prologue
    .line 36
    iget-object v0, p0, Lbaf;->c:Lcom/iflytek/viafly/ui/dialog/AutoCheckVersionDialog$Builder;

    return-object v0
.end method

.method static synthetic b(Lbaf;Lcom/baidu/aiupdatesdk/UpdateInfo;)V
    .locals 0
    .param p0, "x0"    # Lbaf;
    .param p1, "x1"    # Lcom/baidu/aiupdatesdk/UpdateInfo;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lbaf;->b(Lcom/baidu/aiupdatesdk/UpdateInfo;)V

    return-void
.end method

.method private b(Lcom/baidu/aiupdatesdk/UpdateInfo;)V
    .locals 8
    .param p1, "updateInfo"    # Lcom/baidu/aiupdatesdk/UpdateInfo;

    .prologue
    .line 258
    iget-object v4, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setCheckedUI()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 259
    iget-object v4, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v5, "\u65b0\u7248\u672c\u66f4\u65b0"

    invoke-virtual {v4, v5}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 261
    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->getChangeLog()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "updateDetail":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/aiupdatesdk/UpdateInfo;->isForceUpdate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbaf;->a:Landroid/content/Context;

    const v6, 0x7f0c02ec

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbaf;->a:Landroid/content/Context;

    const v6, 0x7f0c02ed

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 272
    :goto_0
    iget-object v4, p0, Lbaf;->a:Landroid/content/Context;

    const v5, 0x7f0c02e8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "strInstallNote":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "strUpdateNote":Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 275
    .local v0, "sp":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x10000

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x22

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 277
    iget-object v4, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    invoke-virtual {v4, v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 279
    iget-object v4, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v5, "\u4e0b\u6b21\u518d\u8bf4"

    new-instance v6, Lbaf$8;

    invoke-direct {v6, p0, p1}, Lbaf$8;-><init>(Lbaf;Lcom/baidu/aiupdatesdk/UpdateInfo;)V

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 295
    iget-object v4, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v5, "\u7acb\u5373\u66f4\u65b0"

    new-instance v6, Lbaf$9;

    invoke-direct {v6, p0}, Lbaf$9;-><init>(Lbaf;)V

    invoke-virtual {v4, v5, v6}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 305
    return-void

    .line 265
    .end local v0    # "sp":Landroid/text/SpannableString;
    .end local v1    # "strInstallNote":Ljava/lang/String;
    .end local v2    # "strUpdateNote":Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 268
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lbaf;->a:Landroid/content/Context;

    const v6, 0x7f0c0305

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbaf;->a:Landroid/content/Context;

    const v6, 0x7f0c0306

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method static synthetic c(Lbaf;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lbaf;

    .prologue
    .line 36
    iget-object v0, p0, Lbaf;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lbaf;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lbaf;

    .prologue
    .line 36
    iget-object v0, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    return-object v0
.end method

.method static synthetic e(Lbaf;)Lxr;
    .locals 1
    .param p0, "x0"    # Lbaf;

    .prologue
    .line 36
    iget-object v0, p0, Lbaf;->d:Lxr;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 56
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    const-string/jumbo v1, "this api level is not supported"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lbaf;->a:Landroid/content/Context;

    new-instance v1, Lbaf$1;

    invoke-direct {v1, p0}, Lbaf$1;-><init>(Lbaf;)V

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/AIUpdateSDK;->updateCheck(Landroid/content/Context;Lcom/baidu/aiupdatesdk/CheckUpdateCallback;)V

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    .line 187
    const-string/jumbo v0, "BaiduChanelUpdateHelper"

    const-string/jumbo v1, "this api level is not supported"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lbaf;->a:Landroid/content/Context;

    invoke-static {v0}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    invoke-virtual {v0}, Lhl;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lbaf;->a:Landroid/content/Context;

    const-string/jumbo v1, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    iget-object v1, p0, Lbaf;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 197
    iget-object v0, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v1, "\u6b63\u5728\u68c0\u67e5\u66f4\u65b0"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 199
    iget-object v0, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lbaf$5;

    invoke-direct {v2, p0}, Lbaf$5;-><init>(Lbaf;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 207
    iget-object v0, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    new-instance v1, Lbaf$6;

    invoke-direct {v1, p0}, Lbaf$6;-><init>(Lbaf;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    .line 216
    iget-object v0, p0, Lbaf;->b:Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/CheckVersionDialog;

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lbaf$7;

    invoke-direct {v1, p0}, Lbaf$7;-><init>(Lbaf;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
