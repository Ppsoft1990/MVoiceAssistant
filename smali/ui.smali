.class public Lui;
.super Luj;
.source "AppInstallController.java"

# interfaces
.implements Lug$a;
.implements Luh$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lui$a;
    }
.end annotation


# static fields
.field private static f:Lui;


# instance fields
.field public a:Luh;

.field public b:Lug;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/Activity;

.field private e:Ljava/util/List;
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
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Luj;-><init>()V

    .line 64
    iput-object p1, p0, Lui;->c:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lui;->e:Ljava/util/List;

    .line 66
    new-instance v0, Luh;

    iget-object v1, p0, Lui;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Luh;-><init>(Landroid/content/Context;Luh$a;)V

    iput-object v0, p0, Lui;->a:Luh;

    .line 67
    new-instance v0, Lug;

    iget-object v1, p0, Lui;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lug;-><init>(Landroid/content/Context;Lug$a;)V

    iput-object v0, p0, Lui;->b:Lug;

    .line 68
    return-void
.end method

.method public static a(Landroid/content/Context;)Lui;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lui;->f:Lui;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lui;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lui;->f:Lui;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lui;

    invoke-direct {v0, p0}, Lui;-><init>(Landroid/content/Context;)V

    sput-object v0, Lui;->f:Lui;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lui;->f:Lui;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 342
    const-string/jumbo v1, "APP_AppInstallController"

    const-string/jumbo v2, "showSpaceNotEnoughDialog() "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v0, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    iget-object v1, p0, Lui;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, "builder":Lcom/iflytek/viafly/ui/SimpleDialog$Builder;
    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 345
    const-string/jumbo v1, "\u624b\u673a\u5185\u5b58\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u7a7a\u95f4\u518d\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setDescription(Ljava/lang/String;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 346
    const-string/jumbo v1, "\u77e5\u9053\u4e86"

    sget-object v2, Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;->CONFIRM:Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;

    new-instance v3, Lui$5;

    invoke-direct {v3, p0, v0}, Lui$5;-><init>(Lui;Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)V

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setSingleButton(ZLjava/lang/String;Lcom/iflytek/viafly/ui/SimpleDialog$Builder$ButtonStatus;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 353
    new-instance v1, Lui$6;

    invoke-direct {v1, p0, v0}, Lui$6;-><init>(Lui;Lcom/iflytek/viafly/ui/SimpleDialog$Builder;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 361
    invoke-virtual {v0, v5}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/SimpleDialog$Builder;

    .line 362
    const-string/jumbo v1, "APP_AppInstallController"

    const-string/jumbo v2, "begin show space dialog "

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 v1, 0x51

    invoke-virtual {v0, v1, v4, v4}, Lcom/iflytek/viafly/ui/SimpleDialog$Builder;->show(III)Lcom/iflytek/viafly/ui/SimpleDialog;

    .line 364
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
    .line 217
    iget-object v1, p0, Lui;->c:Landroid/content/Context;

    invoke-static {v1}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lxa;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.iflytek.cmcccom.iflytek.yd.download.error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, "errorIntent":Landroid/content/Intent;
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string/jumbo v1, "entry_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lui;->c:Landroid/content/Context;

    invoke-static {v1}, Lxa;->a(Landroid/content/Context;)Lxa;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lxa;->a(ILandroid/content/Intent;)V

    .line 224
    return-void
.end method

.method private a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Ljava/lang/String;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;
    .param p2, "tip"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 418
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "showToastIfInFront() tip is null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    return-void

    .line 424
    :cond_0
    const-string/jumbo v0, "setting_lock_screen"

    .line 425
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v1

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lui;->c:Landroid/content/Context;

    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 430
    :cond_1
    iget-object v0, p0, Lui;->c:Landroid/content/Context;

    const-class v1, Lcom/iflytek/viafly/Home;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 431
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "showToastIfInFront() activity not front"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 435
    :cond_2
    iget-object v0, p0, Lui;->c:Landroid/content/Context;

    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Lui;)V
    .locals 0
    .param p0, "x0"    # Lui;

    .prologue
    .line 45
    invoke-direct {p0}, Lui;->b()V

    return-void
.end method

.method static synthetic a(Lui;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lui;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # I

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lui;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lui;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 0
    .param p0, "x0"    # Lui;
    .param p1, "x1"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lui;->h(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/iflytek/viafly/app/install/AppInstallInfo;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isAutoOpen"    # Z
    .param p5, "appInstallEntry"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {p1}, Lcom/iflytek/blc/util/StringUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    const/4 v12, 0x0

    .line 248
    :goto_0
    return-object v12

    .line 237
    :cond_0
    iget-object v2, p0, Lui;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .line 238
    .local v12, "historyInfo":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    invoke-virtual {v12}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    invoke-virtual {v12, p2}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b(Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c(Ljava/lang/String;)V

    .line 241
    move/from16 v0, p4

    invoke-virtual {v12, v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->a(Z)V

    goto :goto_0

    .line 245
    .end local v12    # "historyInfo":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    :cond_2
    new-instance v1, Lcom/iflytek/viafly/app/install/AppInstallInfo;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object v11, p2

    invoke-direct/range {v1 .. v11}, Lcom/iflytek/viafly/app/install/AppInstallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .local v1, "newInfo":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    move-object v12, v1

    .line 248
    goto :goto_0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 406
    iget-object v1, p0, Lui;->c:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 407
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    iget-object v1, p0, Lui;->c:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/download/ui/DownloadListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lui;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 413
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private f(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    const/16 v5, 0x66

    .line 132
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lui;->c:Landroid/content/Context;

    invoke-static {v0}, Lqe;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lui;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v0, "\u7f51\u7edc\u65e0\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-direct {p0, p1, v0}, Lui;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lui;->a(Ljava/lang/String;I)V

    .line 141
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->g()I

    move-result v1

    .line 142
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->f()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->c()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    .line 141
    invoke-direct/range {v0 .. v5}, Lui;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lui;->c:Landroid/content/Context;

    invoke-static {v0}, Lhl;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-direct {p0, p1}, Lui;->h(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-direct {p0, p1}, Lui;->g(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0
.end method

.method private g(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 4
    .param p1, "appInstallInfo"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 158
    const-string/jumbo v1, "APP_AppInstallController"

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

    .line 159
    if-nez p1, :cond_0

    .line 160
    const-string/jumbo v1, "APP_AppInstallController"

    const-string/jumbo v2, "showTrafficDialog param is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    iget-object v1, p0, Lui;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, "builder":Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;
    const-string/jumbo v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 166
    const-string/jumbo v1, "\u5f53\u524d\u5728\u975ewifi\u7f51\u7edc\u4e0b\uff0c\u7ee7\u7eed\u4e0b\u8f7d\u53ef\u80fd\u4f1a\u88ab\u8fd0\u8425\u5546\u6536\u53d6\u6d41\u91cf\u8d39\u7528\u3002"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 168
    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lui$1;

    invoke-direct {v2, p0, p1, v0}, Lui$1;-><init>(Lui;Lcom/iflytek/viafly/app/install/AppInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 185
    const-string/jumbo v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Lui$2;

    invoke-direct {v2, p0, p1, v0}, Lui$2;-><init>(Lui;Lcom/iflytek/viafly/app/install/AppInstallInfo;Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;)V

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 196
    new-instance v1, Lui$3;

    invoke-direct {v1, p0, p1}, Lui$3;-><init>(Lui;Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 211
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->setIsCanceledOnTouchOutside(Z)Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;

    .line 212
    const-string/jumbo v1, "APP_AppInstallController"

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

    .line 213
    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/MessageDialog$Builder;->show()Lcom/iflytek/viafly/ui/dialog/MessageDialog;

    goto :goto_0
.end method

.method private h(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 227
    iget-object v0, p0, Lui;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lui;->a:Luh;

    invoke-virtual {v0, p1}, Luh;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    .line 229
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v0, p0, Lui;->b:Lug;

    invoke-virtual {v0, p1, p2}, Lug;->a(ILjava/lang/String;)V

    .line 443
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 82
    iput-object p1, p0, Lui;->d:Landroid/app/Activity;

    .line 83
    return-void
.end method

.method public a(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 253
    if-nez p1, :cond_1

    .line 254
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "onInstallSuccess() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lui;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lui;->b(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lui;->b:Lug;

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
    .line 321
    if-nez p1, :cond_1

    .line 322
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "onDownloadFail() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 333
    const-string/jumbo v0, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-direct {p0, p1, v0}, Lui;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Ljava/lang/String;)V

    .line 336
    :goto_1
    const/16 v0, 0x38b

    if-eq p2, v0, :cond_0

    .line 337
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lui;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 327
    :sswitch_0
    invoke-virtual {p0, p1}, Lui;->d(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_1

    .line 330
    :sswitch_1
    invoke-direct {p0}, Lui;->a()V

    goto :goto_1

    .line 325
    nop

    :sswitch_data_0
    .sparse-switch
        0x38b -> :sswitch_0
        0xc3c0a -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lcom/iflytek/viafly/app/install/AppInstallInfo;JJ)V
    .locals 6
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;
    .param p2, "receivedBytes"    # J
    .param p4, "totalBytes"    # J

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "onDownloadProgress() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lui;->a(Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "isAutoOpen"    # Z
    .param p5, "appInstallEntry"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    :cond_0
    const/16 v2, 0x65

    invoke-virtual {p0, p1, v2}, Lui;->a(Ljava/lang/String;I)V

    .line 129
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v2, p0, Lui;->c:Landroid/content/Context;

    invoke-static {v2, p3}, Lasa;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 99
    iget-object v2, p0, Lui;->b:Lug;

    invoke-virtual {v2, p3}, Lug;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_3
    invoke-direct/range {p0 .. p5}, Lui;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/iflytek/viafly/app/install/AppInstallInfo;

    move-result-object v1

    .line 104
    .local v1, "info":Lcom/iflytek/viafly/app/install/AppInstallInfo;
    if-eqz v1, :cond_1

    .line 107
    iget-object v2, p0, Lui;->a:Luh;

    invoke-virtual {v2, v1}, Luh;->c(Lcom/iflytek/viafly/app/install/AppInstallInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 126
    invoke-direct {p0, v1}, Lui;->f(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v2, p0, Lui;->a:Luh;

    invoke-virtual {v2, v1}, Luh;->d(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    .line 114
    invoke-direct {p0}, Lui;->b()V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v2, p0, Lui;->a:Luh;

    invoke-virtual {v2, v1}, Luh;->e(Lcom/iflytek/viafly/app/install/AppInstallInfo;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "filePath":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/iflytek/yd/util/FileManager;->checkFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->e(Ljava/lang/String;)V

    .line 120
    iget-object v2, p0, Lui;->b:Lug;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lug;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Z)V

    goto :goto_0

    .line 122
    :cond_4
    invoke-direct {p0, v1}, Lui;->f(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V

    goto :goto_0

    .line 107
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

.method public b(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 267
    const-string/jumbo v1, "APP_AppInstallController"

    const-string/jumbo v2, "onDownloadPending() info is null"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lui;->c:Landroid/content/Context;

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lazk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 272
    const-string/jumbo v1, "APP_AppInstallController"

    const-string/jumbo v2, "onDownloadPending() activity not front"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    :cond_1
    new-instance v0, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    invoke-direct {v0}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;-><init>()V

    .line 276
    .local v0, "builder":Lcom/iflytek/viafly/ui/InteractiveToast$Builder;
    const-string/jumbo v1, "\u5df2\u6dfb\u52a0\u81f3\u4e0b\u8f7d\u7ba1\u7406\u4e2d\uff0c"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setToastTip(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 277
    const-string/jumbo v1, "\u70b9\u51fb\u67e5\u770b"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setBtnContent(Ljava/lang/String;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 278
    new-instance v1, Lui$4;

    invoke-direct {v1, p0, v0}, Lui$4;-><init>(Lui;Lcom/iflytek/viafly/ui/InteractiveToast$Builder;)V

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->setOnClickListener(Lcom/iflytek/viafly/ui/InteractiveToast$OnClickListener;)Lcom/iflytek/viafly/ui/InteractiveToast$Builder;

    .line 287
    iget-object v1, p0, Lui;->d:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/InteractiveToast$Builder;->show(Landroid/app/Activity;)Lcom/iflytek/viafly/ui/InteractiveToast;

    goto :goto_0
.end method

.method public c(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 293
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "onDownloadStart() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lui;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "onDownloadSuccess() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lui;->d(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lui;->b:Lug;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lug;->a(Lcom/iflytek/viafly/app/install/AppInstallInfo;Z)V

    goto :goto_0
.end method

.method public e(Lcom/iflytek/viafly/app/install/AppInstallInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/iflytek/viafly/app/install/AppInstallInfo;

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 369
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "onDownloadCanceled() info = null"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lui;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lui;->b:Lug;

    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lug;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    const-string/jumbo v0, "APP_AppInstallController"

    const-string/jumbo v1, "onDownloadCanceled() do nothing because app installed"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_1
    invoke-virtual {p1}, Lcom/iflytek/viafly/app/install/AppInstallInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lui;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
