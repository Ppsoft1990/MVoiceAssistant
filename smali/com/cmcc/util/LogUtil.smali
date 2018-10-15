.class public Lcom/cmcc/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "CMCC_AUTH_PAY_SDK"

.field private static LOG_LEVEL:I = 0x0

.field private static final LOG_LEVEL_FATAL:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static enableStoreLog(Landroid/content/Context;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lauthcommon/bw$a;->a()Lauthcommon/bw;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lauthcommon/bw;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, v0, Lauthcommon/bw;->b:Lauthcommon/bx;

    if-nez v1, :cond_1

    new-instance v1, Lauthcommon/bx;

    invoke-direct {v1, p0}, Lauthcommon/bx;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lauthcommon/bw;->b:Lauthcommon/bx;

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, v0, Lauthcommon/bw;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lauthcommon/bw;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, v0, Lauthcommon/bw;->a:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    :cond_3
    iput-object v2, v0, Lauthcommon/bw;->b:Lauthcommon/bx;

    goto :goto_1
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cmcc/util/LogUtil;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    invoke-static {v0, p0, p1}, Lcom/cmcc/util/LogUtil;->fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static fatal(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/util/LogUtil;->fatal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lauthcommon/bw$a;->a()Lauthcommon/bw;

    return-void
.end method

.method public static fatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-static {}, Lauthcommon/bw$a;->a()Lauthcommon/bw;

    return-void
.end method

.method public static getStoreFileDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lauthcommon/bw$a;->a()Lauthcommon/bw;

    move-result-object v0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, v0, Lauthcommon/bw;->b:Lauthcommon/bx;

    if-nez v1, :cond_1

    new-instance v1, Lauthcommon/bx;

    invoke-direct {v1, p0}, Lauthcommon/bx;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lauthcommon/bw;->b:Lauthcommon/bx;

    :cond_1
    iget-object v0, v0, Lauthcommon/bw;->b:Lauthcommon/bx;

    iget-object v0, v0, Lauthcommon/bx;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    sput p0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/util/LogUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    invoke-static {v0, p0}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget v0, Lcom/cmcc/util/LogUtil;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string/jumbo v0, "CMCC_AUTH_PAY_SDK"

    invoke-static {v0, p0, p1}, Lcom/cmcc/util/LogUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
