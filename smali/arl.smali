.class public Larl;
.super Ljava/lang/Object;
.source "PluginControllerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Larl$a;
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/content/Context;

.field private d:Larl$a;

.field private e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

.field private f:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Larl$a;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Larl$a;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Larl;->b:Landroid/content/Context;

    .line 41
    iput-object v0, p0, Larl;->c:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Larl;->d:Larl$a;

    .line 43
    iput-object v0, p0, Larl;->e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 44
    iput-object v0, p0, Larl;->f:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .line 108
    new-instance v0, Larl$4;

    invoke-direct {v0, p0}, Larl$4;-><init>(Larl;)V

    iput-object v0, p0, Larl;->g:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Larl;->b:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Larl;->d:Larl$a;

    .line 49
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Larl;->a:Landroid/util/SparseArray;

    .line 50
    return-void
.end method

.method static synthetic a(Larl;)Larl$a;
    .locals 1
    .param p0, "x0"    # Larl;

    .prologue
    .line 28
    iget-object v0, p0, Larl;->d:Larl$a;

    return-object v0
.end method

.method static synthetic a(Larl;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    .locals 0
    .param p0, "x0"    # Larl;
    .param p1, "x1"    # Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .prologue
    .line 28
    iput-object p1, p0, Larl;->e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    return-object p1
.end method

.method static synthetic a(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p0, "x0"    # Larl;
    .param p1, "x1"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Larl;->b(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 4
    .param p1, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 54
    const-string/jumbo v1, "PluginControllerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showTrafficDialogInner| installInfo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    if-nez p1, :cond_0

    .line 56
    const-string/jumbo v1, "PluginControllerView"

    const-string/jumbo v2, "showTrafficDialogInner param is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    iget-object v1, p0, Larl;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 61
    const-string/jumbo v1, "\u5f53\u524d\u4e0d\u5728WI-FI\u7f51\u7edc\u4e0b\uff0c\u4e0b\u8f7d\u4f1a\u4f7f\u7528\u6570\u636e\u6d41\u91cf"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 63
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Larl$1;

    invoke-direct {v2, p0, p1, v0}, Larl$1;-><init>(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 77
    const-string/jumbo v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Larl$2;

    invoke-direct {v2, p0, p1, v0}, Larl$2;-><init>(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 89
    new-instance v1, Larl$3;

    invoke-direct {v1, p0, p1}, Larl$3;-><init>(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 102
    const-string/jumbo v1, "PluginControllerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "begin show traf dialog| installInfo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    .line 104
    iput-object p1, p0, Larl;->f:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .line 105
    iput-object v0, p0, Larl;->e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    goto :goto_0
.end method

.method static synthetic b(Larl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Larl;

    .prologue
    .line 28
    iget-object v0, p0, Larl;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Larl;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 0
    .param p0, "x0"    # Larl;
    .param p1, "x1"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Larl;->a(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V

    return-void
.end method

.method private b(Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 14
    .param p1, "installInfo"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 179
    const-string/jumbo v9, "PluginControllerView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "showInstallDialogInner| installInfo= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-nez p1, :cond_1

    .line 181
    const-string/jumbo v9, "PluginControllerView"

    const-string/jumbo v12, "showInstallDialogInner() param is null"

    invoke-static {v9, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v6

    .line 185
    .local v6, "pluginType":I
    new-instance v2, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;

    iget-object v9, p0, Larl;->c:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;-><init>(Landroid/content/Context;)V

    .line 187
    .local v2, "dialog":Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;
    iget-object v9, p0, Larl;->a:Landroid/util/SparseArray;

    invoke-virtual {v9, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    move-result-object v9

    sget-object v12, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->init:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    if-ne v9, v12, :cond_4

    .line 189
    iget-object v9, p0, Larl;->d:Larl$a;

    if-eqz v9, :cond_2

    .line 190
    iget-object v9, p0, Larl;->d:Larl$a;

    invoke-interface {v9, v6}, Larl$a;->c(I)V

    .line 215
    :cond_2
    :goto_1
    const-string/jumbo v8, "\u63d2\u4ef6"

    .line 216
    .local v8, "title":Ljava/lang/String;
    iget-object v9, p0, Larl;->d:Larl$a;

    if-eqz v9, :cond_3

    .line 217
    iget-object v9, p0, Larl;->d:Larl$a;

    invoke-interface {v9, v6}, Larl$a;->e(I)Ljava/lang/String;

    move-result-object v8

    .line 219
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\u6b63\u5728\u5b89\u88c5"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 220
    const-string/jumbo v9, "\u53d6\u6d88"

    new-instance v12, Larl$5;

    invoke-direct {v12, p0, v6}, Larl$5;-><init>(Larl;I)V

    invoke-virtual {v2, v9, v12}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 230
    const-string/jumbo v9, "\u540e\u53f0\u4e0b\u8f7d"

    new-instance v12, Larl$6;

    invoke-direct {v12, p0, v2}, Larl$6;-><init>(Larl;Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;)V

    invoke-virtual {v2, v9, v12}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 237
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setCancelable(Z)V

    .line 238
    new-instance v9, Larl$7;

    invoke-direct {v9, p0, v6}, Larl$7;-><init>(Larl;I)V

    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 245
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 246
    const-string/jumbo v9, "PluginControllerView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "start showInstallDialog| pluginType= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v9, 0x51

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v12, v13}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->show(III)V

    .line 250
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    move-result-object v9

    sget-object v12, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->requesting:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    if-ne v9, v12, :cond_0

    .line 251
    const-wide/16 v12, 0x0

    invoke-virtual {v2, v12, v13}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPercentage(D)V

    .line 252
    const-string/jumbo v9, "0.0M/0.0M"

    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setSizeInfo(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->switchRequestView()V

    .line 254
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPositiveButtonClickable(Z)V

    .line 255
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPositiveButtonUnClickableTextColor()V

    goto/16 :goto_0

    .line 192
    .end local v8    # "title":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    move-result-object v9

    sget-object v12, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->downloading:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    if-ne v9, v12, :cond_7

    .line 193
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->switchDownloadView()V

    .line 194
    const/4 v3, 0x0

    .line 195
    .local v3, "percentArr":[D
    iget-object v9, p0, Larl;->d:Larl$a;

    if-eqz v9, :cond_5

    .line 196
    iget-object v9, p0, Larl;->d:Larl$a;

    invoke-interface {v9, v6}, Larl$a;->d(I)[D

    move-result-object v3

    .line 198
    :cond_5
    if-eqz v3, :cond_2

    .line 199
    const/4 v9, 0x0

    aget-wide v0, v3, v9

    .line 200
    .local v0, "currentBytes":D
    const/4 v9, 0x1

    aget-wide v10, v3, v9

    .line 201
    .local v10, "totalBytes":D
    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_6

    .line 202
    div-double v4, v0, v10

    .line 203
    .local v4, "installPercent":D
    invoke-virtual {v2, v4, v5}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPercentage(D)V

    .line 205
    .end local v4    # "installPercent":D
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Lasd;->a(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 206
    invoke-static {v10, v11}, Lasd;->a(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "sizeStr":Ljava/lang/String;
    invoke-virtual {v2, v7}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setSizeInfo(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 209
    .end local v0    # "currentBytes":D
    .end local v3    # "percentArr":[D
    .end local v7    # "sizeStr":Ljava/lang/String;
    .end local v10    # "totalBytes":D
    :cond_7
    invoke-virtual {p1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->b()Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    move-result-object v9

    sget-object v12, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;->installing:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo$PluginInstallStatus;

    if-ne v9, v12, :cond_2

    .line 210
    invoke-virtual {v2}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->switchDownloadView()V

    .line 211
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v12, v13}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setPercentage(D)V

    .line 212
    const-string/jumbo v9, "\u5b89\u88c5\u4e2d"

    invoke-virtual {v2, v9}, Lcom/iflytek/viafly/ui/dialog/DownloadProgressDialog;->setSizeInfo(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic c(Larl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Larl;

    .prologue
    .line 28
    iget-object v0, p0, Larl;->a:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 277
    const-string/jumbo v0, "PluginControllerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initDownProgress| pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Larl;->g:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 280
    return-void
.end method

.method public a(IDLjava/lang/String;)V
    .locals 4
    .param p1, "pluginType"    # I
    .param p2, "installPercent"    # D
    .param p4, "sizeStr"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v2, p0, Larl;->g:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 292
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 293
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 294
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "installPercent"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 295
    const-string/jumbo v2, "sizeStr"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 297
    iget-object v2, p0, Larl;->g:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "UIContext"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 265
    const-string/jumbo v0, "PluginControllerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTrafficDialog| info= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput-object p1, p0, Larl;->c:Landroid/content/Context;

    .line 267
    iget-object v0, p0, Larl;->g:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 268
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string/jumbo v0, "PluginControllerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showToast| tip= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Larl;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Larl;->e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Larl;->e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->dismiss()V

    .line 303
    const-string/jumbo v0, "PluginControllerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "traf dismiss| "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Larl;->f:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Larl;->e:Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 305
    iget-object v0, p0, Larl;->d:Larl$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larl;->f:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Larl;->d:Larl$a;

    iget-object v1, p0, Larl;->f:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .line 307
    invoke-virtual {v1}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;->a()I

    move-result v1

    .line 306
    invoke-interface {v0, v1}, Larl$a;->a(I)V

    .line 309
    :cond_0
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 3
    .param p1, "pluginType"    # I

    .prologue
    .line 283
    const-string/jumbo v0, "PluginControllerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissInstallDialog| pluginType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Larl;->g:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 286
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;)V
    .locals 3
    .param p1, "UIContext"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/iflytek/viafly/pluginmanagernew/entities/PluginInstallInfo;

    .prologue
    .line 271
    const-string/jumbo v0, "PluginControllerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showInstallDialog| info= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iput-object p1, p0, Larl;->c:Landroid/content/Context;

    .line 273
    iget-object v0, p0, Larl;->g:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    return-void
.end method
