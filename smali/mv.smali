.class public Lmv;
.super Ljava/lang/Object;
.source "EarPlugHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmv$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field private c:Ljava/lang/String;

.field private volatile d:I

.field private e:Landroid/content/Context;

.field private f:Landroid/os/Handler;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Lmw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "EarPlugHelper"

    sput-object v0, Lmv;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "HeadsetApp"

    iput-object v0, p0, Lmv;->c:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lmv;->d:I

    .line 62
    sget v0, Lmx;->c:I

    iput v0, p0, Lmv;->g:I

    .line 64
    iput-object v1, p0, Lmv;->h:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lmv;->e:Landroid/content/Context;

    .line 74
    new-instance v0, Lmv$a;

    invoke-direct {v0, p0, v1}, Lmv$a;-><init>(Lmv;Lmv$1;)V

    iput-object v0, p0, Lmv;->f:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic a(Lmv;I)I
    .locals 0
    .param p0, "x0"    # Lmv;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lmv;->d:I

    return p1
.end method

.method static synthetic a(Lmv;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmv;

    .prologue
    .line 28
    iget-object v0, p0, Lmv;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmv;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .param p1, "re"    # I

    .prologue
    .line 373
    const-string/jumbo v0, ""

    .line 374
    .local v0, "des":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 409
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    .line 412
    :goto_0
    return-object v0

    .line 376
    :sswitch_0
    const-string/jumbo v0, "\u5185\u90e8\u9519\u8bef"

    .line 377
    goto :goto_0

    .line 379
    :sswitch_1
    const-string/jumbo v0, "\u4e0d\u5408\u6cd5\u7684APK"

    .line 380
    goto :goto_0

    .line 382
    :sswitch_2
    const-string/jumbo v0, "\u76f8\u540c\u7248\u672c\u7684APK\u5df2\u5b58\u5728"

    .line 383
    goto :goto_0

    .line 385
    :sswitch_3
    const-string/jumbo v0, "\u63d2\u4ef6\u6743\u9650\u8d8a\u754c"

    .line 386
    goto :goto_0

    .line 388
    :sswitch_4
    const-string/jumbo v0, "\u63d2\u4ef6so abi\u4e0e\u5bbf\u4e3b\u4e0d\u517c\u5bb9"

    .line 389
    goto :goto_0

    .line 391
    :sswitch_5
    const-string/jumbo v0, "\u65e0\u6b64\u63d2\u4ef6"

    .line 392
    goto :goto_0

    .line 394
    :sswitch_6
    const-string/jumbo v0, "\u8d85\u65f6"

    .line 395
    goto :goto_0

    .line 397
    :sswitch_7
    const-string/jumbo v0, "\u4e0d\u652f\u6301\u5728\u4e3b\u7ebf\u7a0b\u8c03\u7528\u540c\u6b65\u63a5\u53e3"

    .line 398
    goto :goto_0

    .line 400
    :sswitch_8
    const-string/jumbo v0, "\u5ef6\u8fdf\u6267\u884c"

    .line 401
    goto :goto_0

    .line 403
    :sswitch_9
    const-string/jumbo v0, "\u521d\u59cb\u672a\u6267\u884c"

    .line 404
    goto :goto_0

    .line 406
    :sswitch_a
    const-string/jumbo v0, "\u8001\u7248\u672c\u7684\u63d2\u4ef6\u6b63\u5728\u8fd0\u884c\uff0c\u65b0\u63d2\u4ef6\u653e\u5165\u7f13\u5b58\u533a\uff0c\u4e0b\u6b21\u542f\u52a8\u65f6\u518d\u66f4\u65b0"

    .line 407
    goto :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        -0x64 -> :sswitch_9
        -0x63 -> :sswitch_8
        -0x8 -> :sswitch_7
        -0x7 -> :sswitch_6
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x1 -> :sswitch_a
    .end sparse-switch
.end method

.method static synthetic a(Lmv;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lmv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lmv;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/greenplug/client/PluginManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lmx;->a:Ljava/lang/String;

    iget v2, p0, Lmv;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 254
    iget-object v1, p0, Lmv;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp: plugin startBegin----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {v0}, Lcom/iflytek/greenplug/client/GreenPlug;->startActivity(Landroid/content/Intent;)I

    .line 258
    iget-object v1, p0, Lmv;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp: plugin startEnd----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    sget-object v1, Lmv;->b:Ljava/lang/String;

    const-string/jumbo v2, "startPlugin()"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method private declared-synchronized a(Lmu;)V
    .locals 6
    .param p1, "item"    # Lmu;

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lmv;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timestamp: plugin installBegin----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v2, 0x1

    iput-boolean v2, p1, Lmu;->g:Z

    .line 328
    iget-object v2, p1, Lmu;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/iflytek/greenplug/client/GreenPlug;->installPackage(Ljava/lang/String;)I

    move-result v1

    .line 330
    .local v1, "re":I
    const/4 v2, 0x0

    iput-boolean v2, p1, Lmu;->g:Z

    .line 332
    iget-object v2, p0, Lmv;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timestamp: plugin installEnd----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v2, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->SUCCESS:Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;

    invoke-virtual {v2}, Lcom/iflytek/greenplug/client/GPTask$TASK_RESULT;->CODE()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 334
    iget-object v2, p0, Lmv;->f:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 335
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lmv;->f:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    :goto_0
    iget-object v2, p0, Lmv;->f:Landroid/os/Handler;

    new-instance v3, Lmv$2;

    invoke-direct {v3, p0, v1}, Lmv$2;-><init>(Lmv;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 338
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lmv;->f:Landroid/os/Handler;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 339
    .restart local v0    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lmv;->f:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "re":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method static synthetic a(Lmv;Lmu;)V
    .locals 0
    .param p0, "x0"    # Lmv;
    .param p1, "x1"    # Lmu;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lmv;->a(Lmu;)V

    return-void
.end method

.method static synthetic b(Lmv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lmv;

    .prologue
    .line 28
    iget-object v0, p0, Lmv;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lmv;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmv;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lmv;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 122
    iget-object v0, p0, Lmv;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timestamp: plugin scanBegin----"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x2

    iget v1, p0, Lmv;->d:I

    if-ne v0, v1, :cond_1

    .line 125
    sget-object v0, Lmv;->b:Ljava/lang/String;

    const-string/jumbo v1, "\u63d2\u4ef6\u6b63\u5728\u5378\u8f7d\uff0c\u65e0\u6cd5\u8fdb\u884c\u5b89\u88c5"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lmv;->i:Lmw;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lmv;->i:Lmw;

    const/16 v1, 0x3e9

    invoke-interface {v0, v1}, Lmw;->a(I)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget v0, p0, Lmv;->d:I

    if-ne v4, v0, :cond_2

    .line 134
    sget-object v0, Lmv;->b:Ljava/lang/String;

    const-string/jumbo v1, "\u63d2\u4ef6\u5df2\u7ecf\u6b63\u5728\u5b89\u88c5"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lmv;->i:Lmw;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmv;->i:Lmw;

    const/16 v1, 0x3ea

    invoke-interface {v0, v1}, Lmw;->a(I)V

    goto :goto_0

    .line 143
    :cond_2
    iput v4, p0, Lmv;->d:I

    .line 146
    new-instance v0, Lmv$1;

    const-string/jumbo v1, "ApkScanner"

    invoke-direct {v0, p0, v1}, Lmv$1;-><init>(Lmv;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0}, Lmv$1;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lmv;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lmv;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lmv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmv;

    .prologue
    .line 28
    iget-object v0, p0, Lmv;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lmv;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lmv;

    .prologue
    .line 28
    iget-object v0, p0, Lmv;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lmv;)Lmw;
    .locals 1
    .param p0, "x0"    # Lmv;

    .prologue
    .line 28
    iget-object v0, p0, Lmv;->i:Lmw;

    return-object v0
.end method


# virtual methods
.method public a(ILmw;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "listener"    # Lmw;

    .prologue
    const/4 v6, 0x1

    .line 79
    iput-object p2, p0, Lmv;->i:Lmw;

    .line 80
    iput p1, p0, Lmv;->g:I

    .line 84
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v1

    const-string/jumbo v2, "com.cmcc.viafly.headset"

    invoke-virtual {v1, v2}, Lcom/iflytek/greenplug/client/PluginManager;->isPluginRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lmx;->c:I

    if-eq v1, p1, :cond_1

    .line 85
    sget-object v1, Lmv;->b:Ljava/lang/String;

    const-string/jumbo v2, "\u63d2\u4ef6\u5df2\u542f\u52a8"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v1, p0, Lmv;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp: plugin getInfoBegin----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string/jumbo v1, "com.cmcc.viafly.headset"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/greenplug/client/GreenPlug;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 92
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lmv;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timestamp: plugin getInfoEnd----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v0, :cond_2

    .line 95
    sget-object v1, Lmv;->b:Ljava/lang/String;

    const-string/jumbo v2, "\u63d2\u4ef6\u5df2\u5b89\u88c5\uff0c\u6b63\u5728\u5df2\u542f\u52a8"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lmv;->e:Landroid/content/Context;

    const-string/jumbo v2, "\u63d2\u4ef6\u5df2\u5b89\u88c5\uff0c\u6b63\u5728\u542f\u52a8"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 97
    const-string/jumbo v1, "com.cmcc.viafly.headset"

    invoke-direct {p0, v1}, Lmv;->a(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lmv;->i:Lmw;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lmv;->i:Lmw;

    invoke-interface {v1}, Lmw;->b()V

    goto :goto_0

    .line 105
    :cond_2
    sget-object v1, Lmv;->b:Ljava/lang/String;

    const-string/jumbo v2, "\u63d2\u4ef6\u672a\u5b89\u88c5\uff0c\u5f00\u59cb\u5b89\u88c5\u5e76\u542f\u52a8"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lmv;->i:Lmw;

    if-eqz v1, :cond_3

    .line 108
    iget-object v1, p0, Lmv;->i:Lmw;

    invoke-interface {v1}, Lmw;->c()V

    .line 111
    :cond_3
    iget-object v1, p0, Lmv;->e:Landroid/content/Context;

    const-string/jumbo v2, "\u63d2\u4ef6\u672a\u5b89\u88c5\uff0c\u5f00\u59cb\u5b89\u88c5\u5e76\u542f\u52a8"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 112
    invoke-direct {p0}, Lmv;->b()V

    goto/16 :goto_0
.end method
