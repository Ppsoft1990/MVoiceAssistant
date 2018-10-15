.class public Lagh;
.super Ljava/lang/Object;
.source "WebPageDownloadManager.java"

# interfaces
.implements Lug$a;
.implements Luh$a;


# static fields
.field private static d:Lagh;


# instance fields
.field private a:J

.field private b:Landroid/content/Context;

.field private c:Landroid/app/Activity;

.field private e:Luh;

.field private f:Lug;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/app/install/AppInstallInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lagh;->d:Lagh;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lagh;->a:J

    .line 77
    iput-object p1, p0, Lagh;->b:Landroid/content/Context;

    .line 78
    new-instance v0, Luh;

    invoke-direct {v0, p1, p0}, Luh;-><init>(Landroid/content/Context;Luh$a;)V

    iput-object v0, p0, Lagh;->e:Luh;

    .line 79
    new-instance v0, Lug;

    invoke-direct {v0, p1, p0}, Lug;-><init>(Landroid/content/Context;Lug$a;)V

    iput-object v0, p0, Lagh;->f:Lug;

    .line 80
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lagh;->g:Ljava/util/List;

    .line 81
    return-void
.end method

.method static synthetic a(Lagh;J)J
    .locals 1
    .param p0, "x0"    # Lagh;
    .param p1, "x1"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lagh;->a:J

    return-wide p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lagh;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-class v1, Lagh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lagh;->d:Lagh;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lagh;

    invoke-direct {v0, p0}, Lagh;-><init>(Landroid/content/Context;)V

    sput-object v0, Lagh;->d:Lagh;

    .line 87
    :cond_0
    sget-object v0, Lagh;->d:Lagh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lagh;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lagh;

    .prologue
    .line 53
    iget-object v0, p0, Lagh;->c:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/app/install/AppInstallInfo;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isAutoOpen"    # Z
    .param p5, "entry"    # Ljava/lang/String;
    .param p6, "type"    # I
    .param p7, "size"    # Ljava/lang/String;
    .param p8, "visiblity"    # I
    .param p9, "fileName"    # Ljava/lang/String;
    .param p10, "title"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const/4 v12, 0x0

    .line 353
    :goto_0
    return-object v12

    .line 341
    :cond_0
    iget-object v2, p0, Lagh;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 342
    .local v12, "historyInfo":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    invoke-virtual {v12}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {v12, p2}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c(Ljava/lang/String;)V

    .line 345
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a(Z)V

    .line 346
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d(Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 351
    .end local v12    # "historyInfo":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    :cond_2
    new-instance v1, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/iflytek/viafly/app/install/AppInstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .local v1, "newInfo":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    move-object v12, v1

    .line 353
    goto :goto_0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Lagh;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 312
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lagh;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lagh;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 318
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "entryType"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "errorCode"    # I

    .prologue
    .line 357
    iget-object v1, p0, Lagh;->b:Landroid/content/Context;

    invoke-static {v1}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lxa;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "errorIntent":Landroid/content/Intent;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string/jumbo v1, "entry_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lagh;->b:Landroid/content/Context;

    invoke-static {v1}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lxa;->a(ILandroid/content/Intent;)V

    .line 364
    return-void
.end method

.method static synthetic a(Lagh;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lagh;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 53
    invoke-direct/range {p0 .. p5}, Lagh;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 0
    .param p0, "x0"    # Lagh;
    .param p1, "x1"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lagh;->k(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    return-void
.end method

.method private a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;
    .param p2, "tip"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "showToastIfInFront() tip is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lagh;->b:Landroid/content/Context;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "showToastIfInFront() activity not front"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lagh;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tip"    # Ljava/lang/String;
    .param p2, "btnContent"    # Ljava/lang/String;

    .prologue
    .line 505
    const-string/jumbo v1, "WebPageDownloadManager"

    const-string/jumbo v2, "showInteractiveToast()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v1, p0, Lagh;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 508
    const-string/jumbo v1, "WebPageDownloadManager"

    const-string/jumbo v2, "onDownloadPending() activity not front"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_0
    return-void

    .line 511
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;-><init>()V

    .line 512
    .local v0, "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setToastTip(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 513
    invoke-virtual {v0, p2}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setBtnContent(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 514
    new-instance v1, Lagh$9;

    invoke-direct {v1, p0, v0}, Lagh$9;-><init>(Lagh;Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setOnClickListener(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 523
    iget-object v1, p0, Lagh;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Landroid/app/Activity;)Lcom/iflytek/viafly/ui/InteractiveToast;

    goto :goto_0
.end method

.method static synthetic b(Lagh;)J
    .locals 2
    .param p0, "x0"    # Lagh;

    .prologue
    .line 53
    iget-wide v0, p0, Lagh;->a:J

    return-wide v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 527
    const-string/jumbo v1, "WebPageDownloadManager"

    const-string/jumbo v2, "showSpaceNotEnoughDialog() "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lagh;->b:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    const-string/jumbo v1, "WebPageDownloadManager"

    const-string/jumbo v2, "showSpaceNotEnoughDialog() activity not front"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_0
    return-void

    .line 535
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    iget-object v1, p0, Lagh;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 536
    .local v0, "builder":Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 537
    const-string/jumbo v1, "\u624b\u673a\u5185\u5b58\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u7a7a\u95f4\u518d\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 538
    const-string/jumbo v1, "\u77e5\u9053\u4e86"

    sget-object v2, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    new-instance v3, Lagh$10;

    invoke-direct {v3, p0, v0}, Lagh$10;-><init>(Lagh;Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)V

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setSingleButton(ZLjava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 545
    new-instance v1, Lagh$2;

    invoke-direct {v1, p0, v0}, Lagh$2;-><init>(Lagh;Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 553
    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 554
    const-string/jumbo v1, "WebPageDownloadManager"

    const-string/jumbo v2, "begin show space dialog "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v4, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/SimpleDialog;

    goto :goto_0
.end method

.method static synthetic b(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 0
    .param p0, "x0"    # Lagh;
    .param p1, "x1"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lagh;->i(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    return-void
.end method

.method static synthetic c(Lagh;)V
    .locals 0
    .param p0, "x0"    # Lagh;

    .prologue
    .line 53
    invoke-direct {p0}, Lagh;->a()V

    return-void
.end method

.method private g(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 143
    const-string/jumbo v1, "WebPageDownloadManager"

    const-string/jumbo v2, "checkDownloadTask()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez p1, :cond_0

    .line 145
    const-string/jumbo v1, "WebPageDownloadManager"

    const-string/jumbo v2, "checkDownloadTask(), info is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lagh;->e:Luh;

    invoke-virtual {v1, p1}, Luh;->c(Lcom/iflytek/viafly/app/install/AppInstallInfo;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 169
    invoke-direct {p0, p1}, Lagh;->h(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 154
    :pswitch_0
    iget-object v1, p0, Lagh;->e:Luh;

    invoke-virtual {v1, p1}, Luh;->d(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    .line 156
    const-string/jumbo v1, "\u8be5\u6587\u4ef6\u5df2\u5b58\u5728\u4e0b\u8f7d\u7ba1\u7406\u4e2d\uff0c"

    const-string/jumbo v2, "\u70b9\u51fb\u67e5\u770b"

    invoke-direct {p0, v1, v2}, Lagh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v1, p0, Lagh;->e:Luh;

    invoke-virtual {v1, p1}, Luh;->e(Lcom/iflytek/viafly/app/install/AppInstallInfo;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p1, v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e(Ljava/lang/String;)V

    .line 163
    const-string/jumbo v1, "\u8be5\u6587\u4ef6\u5df2\u5b58\u5728\u4e0b\u8f7d\u7ba1\u7406\u4e2d\uff0c"

    const-string/jumbo v2, "\u70b9\u51fb\u67e5\u770b"

    invoke-direct {p0, v1, v2}, Lagh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0, p1}, Lagh;->h(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private h(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 175
    const-string/jumbo v1, "WebPageDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "downloadFile(), info is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    if-nez p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 180
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const-string/jumbo v1, "WebPageDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDownload | threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v1, p0, Lagh;->c:Landroid/app/Activity;

    new-instance v2, Lagh$1;

    invoke-direct {v2, p0, p1}, Lagh$1;-><init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    invoke-static {v1, v2}, Lpg;->a(Landroid/content/Context;Lpg$a;)V

    goto :goto_0
.end method

.method private i(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    const/4 v6, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 371
    const-string/jumbo v3, "WebPageDownloadManager"

    const-string/jumbo v4, "showDownloadTipDialog(), info is null"

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->k()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "fileName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->i()Ljava/lang/String;

    move-result-object v2

    .line 378
    .local v2, "size":Ljava/lang/String;
    const-string/jumbo v3, "WebPageDownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showDownloadTipDialog(), fileName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fileSize is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    const-string/jumbo v1, "\u672a\u77e5"

    .line 383
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 384
    const-string/jumbo v2, "\u672a\u77e5"

    .line 387
    :cond_2
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lagh;->a:J

    .line 388
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;

    iget-object v3, p0, Lagh;->c:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, "dialog":Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;
    const-string/jumbo v3, "\u4e0b\u8f7d\u63d0\u793a"

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6587\u4ef6\u540d\u79f0\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->setFileName(Ljava/lang/CharSequence;)V

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6587\u4ef6\u5927\u5c0f\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->setFileSize(Ljava/lang/CharSequence;)V

    .line 392
    const-string/jumbo v3, "\u53d6\u6d88"

    new-instance v4, Lagh$3;

    invoke-direct {v4, p0, p1, v0}, Lagh$3;-><init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;)V

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 405
    const-string/jumbo v3, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v4, Lagh$4;

    invoke-direct {v4, p0, p1, v0}, Lagh$4;-><init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;)V

    invoke-virtual {v0, v3, v4}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 420
    new-instance v3, Lagh$5;

    invoke-direct {v3, p0, p1}, Lagh$5;-><init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    invoke-virtual {v0, v3}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 431
    invoke-virtual {v0, v6}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->setCanceledOnTouchOutside(Z)V

    .line 432
    const-string/jumbo v3, "WebPageDownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "begin show download tip dialog| installInfo= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v3, 0x51

    invoke-virtual {v0, v3, v6, v6}, Lcom/iflytek/viafly/ui/dialog/DownloadTipDialog;->show(III)V

    goto/16 :goto_0
.end method

.method private j(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 438
    const-string/jumbo v1, "WebPageDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showTrafficDialog| installInfo= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-nez p1, :cond_0

    .line 440
    const-string/jumbo v1, "WebPageDownloadManager"

    const-string/jumbo v2, "showTrafficDialog param is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-void

    .line 444
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lagh;->a:J

    .line 445
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    iget-object v1, p0, Lagh;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 446
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 447
    const-string/jumbo v1, "\u5f53\u524d\u5728\u975ewifi\u7f51\u7edc\u4e0b\uff0c\u7ee7\u7eed\u4e0b\u8f7d\u53ef\u80fd\u4f1a\u88ab\u8fd0\u8425\u5546\u6536\u53d6\u6d41\u91cf\u8d39\u7528\u3002"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 449
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lagh$6;

    invoke-direct {v2, p0, p1, v0}, Lagh$6;-><init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 465
    const-string/jumbo v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Lagh$7;

    invoke-direct {v2, p0, p1, v0}, Lagh$7;-><init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 480
    new-instance v1, Lagh$8;

    invoke-direct {v1, p0, p1}, Lagh$8;-><init>(Lagh;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 494
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 495
    const-string/jumbo v1, "WebPageDownloadManager"

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

    .line 496
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    goto :goto_0
.end method

.method private k(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 500
    iget-object v0, p0, Lagh;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lagh;->e:Luh;

    invoke-virtual {v0, p1}, Luh;->b(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    .line 502
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 562
    iget-object v0, p0, Lagh;->f:Lug;

    invoke-virtual {v0, p1, p2}, Lug;->a(ILjava/lang/String;)V

    .line 563
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 91
    iput-object p1, p0, Lagh;->c:Landroid/app/Activity;

    .line 92
    return-void
.end method

.method public a(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 231
    if-nez p1, :cond_1

    .line 232
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "onInstallSuccess() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lagh;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lagh;->f:Lug;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lug;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/iflytek/viafly/app/install/AppInstallInfo;I)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;
    .param p2, "errorCode"    # I

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "onDownloadFail() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_0
    return-void

    .line 281
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 289
    const-string/jumbo v0, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-direct {p0, p1, v0}, Lagh;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 283
    :sswitch_0
    invoke-virtual {p0, p1}, Lagh;->d(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 286
    :sswitch_1
    invoke-direct {p0}, Lagh;->b()V

    goto :goto_0

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x38b -> :sswitch_0
        0xc3c0a -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lcom/iflytek/viafly/app/install/AppInstallInfo;JJ)V
    .locals 0
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;
    .param p2, "receivedBytes"    # J
    .param p4, "totalBytes"    # J

    .prologue
    .line 259
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "visibility"    # I
    .param p4, "filePath"    # Ljava/lang/String;
    .param p5, "fileName"    # Ljava/lang/String;
    .param p6, "size"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "downloadBrowserFile()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "browser_file"

    const/16 v6, 0xc

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v7, p6

    move v8, p3

    move-object/from16 v9, p5

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lagh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/app/install/AppInstallInfo;

    move-result-object v11

    .line 131
    .local v11, "info":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    if-eqz v11, :cond_0

    .line 136
    invoke-direct {p0, v11}, Lagh;->g(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "entry"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isAutoOpen"    # Z
    .param p6, "fileName"    # Ljava/lang/String;
    .param p7, "size"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string/jumbo v1, "WebPageDownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "downloadApp(), url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", appName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", packageName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isAutoOpen is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", entry is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", fileName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object v6, p1

    move-object/from16 v8, p7

    move-object/from16 v10, p6

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lagh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/iflytek/viafly/app/install/AppInstallInfo;

    move-result-object v12

    .line 109
    .local v12, "info":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    if-eqz v12, :cond_0

    .line 114
    invoke-direct {p0, v12}, Lagh;->g(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0
.end method

.method public b(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "onDownloadPending() info is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    const-string/jumbo v0, "\u5df2\u6dfb\u52a0\u81f3\u4e0b\u8f7d\u7ba1\u7406\u4e2d\uff0c"

    const-string/jumbo v1, "\u70b9\u51fb\u67e5\u770b"

    invoke-direct {p0, v0, v1}, Lagh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 253
    return-void
.end method

.method public d(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 263
    if-nez p1, :cond_0

    .line 264
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "onDownloadSuccess() info is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "onDownloadSuccess() packageName is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lagh;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_1
    iget-object v0, p0, Lagh;->f:Lug;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lug;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Z)V

    goto :goto_0
.end method

.method public e(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 296
    if-nez p1, :cond_1

    .line 297
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "onDownloadCanceled() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lagh;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lagh;->f:Lug;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lug;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    const-string/jumbo v0, "WebPageDownloadManager"

    const-string/jumbo v1, "onDownloadCanceled() do nothing because app installed"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public f(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 198
    invoke-static {}, Lhl;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string/jumbo v0, "\u65e0\u53ef\u7528sd\u5361\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-direct {p0, p1, v0}, Lagh;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a()I

    move-result v1

    .line 202
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->l()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v4

    const v5, 0xc3c09

    move-object v0, p0

    .line 201
    invoke-direct/range {v0 .. v5}, Lagh;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lagh;->b:Landroid/content/Context;

    invoke-static {v0}, Lqe;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    iget-object v0, p0, Lagh;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 212
    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-direct {p0, p1, v0}, Lagh;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a()I

    move-result v1

    .line 215
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->l()Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x66

    move-object v0, p0

    .line 214
    invoke-direct/range {v0 .. v5}, Lagh;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v0, p0, Lagh;->b:Landroid/content/Context;

    invoke-static {v0}, Lhl;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-direct {p0, p1}, Lagh;->i(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-direct {p0, p1}, Lagh;->j(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0
.end method
