.class public Lauthcommon/bs;
.super Ljava/lang/Object;
.source "TrackPointUtil.java"


# static fields
.field private static f:Lauthcommon/bs;


# instance fields
.field public a:Lauthcommon/b;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lauthcommon/bs;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lauthcommon/bs;
    .locals 2

    sget-object v0, Lauthcommon/bs;->f:Lauthcommon/bs;

    if-nez v0, :cond_1

    const-class v1, Lauthcommon/bs;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lauthcommon/bs;->f:Lauthcommon/bs;

    if-nez v0, :cond_0

    new-instance v0, Lauthcommon/bs;

    invoke-direct {v0, p0}, Lauthcommon/bs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lauthcommon/bs;->f:Lauthcommon/bs;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lauthcommon/bs;->f:Lauthcommon/bs;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lauthcommon/bs;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lauthcommon/bs;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lauthcommon/bs;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lauthcommon/bt;

    invoke-direct {v1, p0}, Lauthcommon/bt;-><init>(Lauthcommon/bs;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    iget-object v0, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    const-string/jumbo v1, "TrackPointData"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/cmcc/util/ConstantUtil;->getAESKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cmcc/util/AESUtil;->decryptSso(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ">\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method static synthetic c(Lauthcommon/bs;)V
    .locals 2

    iget-object v0, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    const-string/jumbo v1, "TrackPointData"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lauthcommon/bs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauthcommon/bs;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lauthcommon/bs;->d()V

    :cond_2
    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iget-object v1, p0, Lauthcommon/bs;->c:Ljava/lang/String;

    iput-object v1, v0, Lauthcommon/b;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method private d()V
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lauthcommon/bs;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    if-nez v0, :cond_0

    const-string/jumbo v0, "getMsgId null"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->info(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iget-object v0, v0, Lauthcommon/b;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iput-object p1, v0, Lauthcommon/b;->l:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iget-object v1, p0, Lauthcommon/bs;->e:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lauthcommon/b;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v2, 0x0

    new-instance v0, Lauthcommon/b;

    invoke-direct {v0}, Lauthcommon/b;-><init>()V

    iput-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    invoke-static {}, Lauthcommon/a;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lauthcommon/b;->j:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iput v3, v0, Lauthcommon/b;->f:I

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iput-object p2, v0, Lauthcommon/b;->k:Ljava/lang/String;

    invoke-static {p3}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iput-object p3, v0, Lauthcommon/b;->c:Ljava/lang/String;

    invoke-static {p3}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightPhoneNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "1"

    iput-object v1, v0, Lauthcommon/b;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "TOKEN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400400"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    iget-object v1, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iget-object v1, v1, Lauthcommon/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cmcc/migusso/auth/common/LoginInfo;->getBtidByUserName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    aget-object v0, v0, v3

    iget-object v1, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iput-object v0, v1, Lauthcommon/b;->i:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iget-object v1, p0, Lauthcommon/bs;->e:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lauthcommon/b;->g:Ljava/lang/String;

    return-void

    :cond_2
    invoke-static {p3}, Lcom/cmcc/migusso/ssoutil/EncUtil;->isRightEmail(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "2"

    iput-object v1, v0, Lauthcommon/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "0"

    iput-object v1, v0, Lauthcommon/b;->b:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "RG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400001"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    const-string/jumbo v0, "1"

    invoke-direct {p0, v0}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "CP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400101"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "RP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400201"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    const-string/jumbo v0, "2"

    invoke-direct {p0, v0}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "UP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400401"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "DUP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400402"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    const-string/jumbo v0, "3"

    invoke-direct {p0, v0}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "WP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400403"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "HS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400404"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "CK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400405"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v0, "TPL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400406"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v0, "VC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10401701"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "6"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, "7"

    iget-object v1, p0, Lauthcommon/bs;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lauthcommon/bs;->c:Ljava/lang/String;

    if-nez v0, :cond_f

    :cond_e
    invoke-direct {p0}, Lauthcommon/bs;->d()V

    :cond_f
    iput-object p4, p0, Lauthcommon/bs;->d:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iget-object v1, p0, Lauthcommon/bs;->c:Ljava/lang/String;

    iput-object v1, v0, Lauthcommon/b;->i:Ljava/lang/String;

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v0, "LT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10499901"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v0, "QU"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410101"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v0, "AS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410201"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_13
    const-string/jumbo v0, "NS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410301"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_14
    const-string/jumbo v0, "BD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410401"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    const-string/jumbo v0, "6"

    invoke-direct {p0, v0}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v0, "CV_UBD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410501"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    const-string/jumbo v0, "7"

    invoke-direct {p0, v0}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v0, "UG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410601"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v0, "UC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410701"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v0, "UG_CV"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410801"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    const-string/jumbo v0, "8"

    invoke-direct {p0, v0}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v0, "QRC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10400407"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v0, "VCC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410901"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, p4}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v0, "SCANED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10411001"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v0, "LOGIN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10411002"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    const-string/jumbo v0, "QTR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410402"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    invoke-direct {p0, v2}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v0, "UG_BD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-string/jumbo v1, "10410403"

    iput-object v1, v0, Lauthcommon/b;->d:Ljava/lang/String;

    const-string/jumbo v0, "10"

    invoke-direct {p0, v0}, Lauthcommon/bs;->c(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iput-object p1, v0, Lauthcommon/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    iget-object v1, p0, Lauthcommon/bs;->e:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lauthcommon/b;->a:Ljava/lang/String;

    iget-object v0, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    invoke-virtual {v0}, Lauthcommon/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cmcc/util/ConstantUtil;->getAESKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cmcc/util/AESUtil;->encryptSso(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :try_start_2
    iget-object v1, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    const-string/jumbo v3, "TrackPointData"

    const v6, 0x8000

    invoke-virtual {v1, v3, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    :try_start_3
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TrackPoint = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    invoke-virtual {v2}, Lauthcommon/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_1
    :try_start_6
    iget-object v0, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    const-string/jumbo v1, "logSum"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/cmcc/migusso/ssoutil/SpUtils;->get4Sp(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    const-string/jumbo v3, "logSum"

    invoke-static {v2, v3, v0, v1}, Lcom/cmcc/migusso/ssoutil/SpUtils;->save2Sp(Landroid/content/Context;Ljava/lang/String;J)V

    const/4 v2, 0x0

    iput-object v2, p0, Lauthcommon/bs;->a:Lauthcommon/b;

    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    iget-object v2, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/cmcc/util/CommonUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lauthcommon/bs;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v1, :cond_3

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_3
    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_5
    :goto_4
    :try_start_c
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/cmcc/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_6
    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lauthcommon/bs;->b:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v4, :cond_7

    move v0, v4

    :goto_5
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lauthcommon/bs;->b()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :cond_7
    move v0, v5

    goto :goto_5

    :cond_8
    move v0, v5

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method
