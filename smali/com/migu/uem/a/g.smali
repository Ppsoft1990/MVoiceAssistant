.class public final Lcom/migu/uem/a/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/migu/uem/a/g;


# instance fields
.field private b:J

.field private c:Lcom/migu/uem/bean/AccountInfo;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/uem/a/g;->a:Lcom/migu/uem/a/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/migu/uem/a/g;->b:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a()Lcom/migu/uem/a/g;
    .locals 2

    sget-object v0, Lcom/migu/uem/a/g;->a:Lcom/migu/uem/a/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/a/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/a/g;->a:Lcom/migu/uem/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/a/g;

    invoke-direct {v0}, Lcom/migu/uem/a/g;-><init>()V

    sput-object v0, Lcom/migu/uem/a/g;->a:Lcom/migu/uem/a/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/a/g;->a:Lcom/migu/uem/a/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/migu/uem/a/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-wide/32 v6, 0x36ee80

    const/4 v5, 0x3

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "data_upload_control"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastQuestTime_page"

    invoke-virtual {v0, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "uploadFailedNumber_page"

    invoke-virtual {v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_3

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "uploadFailedNumber_page"

    invoke-virtual {v0, v1, v4}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_2
    invoke-static {}, Lcom/migu/uem/a/d/c;->a()Lcom/migu/uem/a/d/c;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "\u4e0a\u4f20\u5931\u8d25\u6b21\u6570\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastQuestTime_event"

    invoke-virtual {v0, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "uploadFailedNumber_event"

    invoke-virtual {v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v5, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v0, v0, v6

    if-lez v0, :cond_6

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "uploadFailedNumber_event"

    invoke-virtual {v0, v1, v4}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    :cond_5
    invoke-static {}, Lcom/migu/uem/a/d/c;->a()Lcom/migu/uem/a/d/c;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "\u4e0a\u4f20\u5931\u8d25\u6b21\u6570\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/migu/uem/a/g;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/migu/uem/a/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0, p1}, Lcom/migu/uem/a/g;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/migu/uem/a/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c(Lcom/migu/uem/a/g;)Lcom/migu/uem/bean/AccountInfo;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/a/g;->c:Lcom/migu/uem/bean/AccountInfo;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "lastQuestTime_all"

    invoke-virtual {v0, v1}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "data_upload_control"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4e0a\u4f20\u63a7\u5236\u5f00\u5173\u503c\u4e3a:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v2, v5, :cond_0

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "uploadFailedNumber_all"

    invoke-virtual {v2, v3}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "uploadFailedNumber_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/migu/uem/c/g;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/migu/uem/a/d/c;->a()Lcom/migu/uem/a/d/c;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, p0, v1}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\u4e0a\u4f20\u5931\u8d25\u6b21\u6570\u8d85\u8fc7\u9650\u5236"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/migu/uem/a/d/c;->a()Lcom/migu/uem/a/d/c;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, p0, v1}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/migu/uem/a/a/b;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;JJ)Lcom/migu/uem/bean/OCInfo;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/statistics/other/a;

    invoke-direct {v1}, Lcom/migu/uem/statistics/other/a;-><init>()V

    invoke-static {p0}, Lcom/migu/uem/statistics/other/a;->b(Landroid/content/Context;)Lcom/migu/uem/bean/AccountInfo;

    move-result-object v1

    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v2

    const-string/jumbo v3, "ocinfo_id"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;Lcom/migu/uem/bean/OCInfo;Lcom/migu/uem/bean/AccountInfo;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {p0}, Lcom/migu/uem/c/g;->a(Landroid/content/Context;)Lcom/migu/uem/c/g;

    move-result-object v0

    const-string/jumbo v1, "data_upload_control"

    invoke-virtual {v0, v1, v5}, Lcom/migu/uem/c/g;->b(Ljava/lang/String;I)I

    move-result v0

    if-ne v5, v0, :cond_0

    const-string/jumbo v0, "\u542f\u52a8\u65f6\u4e0a\u4f20:"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/migu/uem/a/d/c;->a()Lcom/migu/uem/a/d/c;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, p0, v1}, Lcom/migu/uem/a/d/c;->a(Landroid/content/Context;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/migu/uem/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/migu/uem/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/migu/uem/a/g;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/migu/uem/a/g;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/migu/uem/a/g;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/migu/uem/a/g;->b:J

    :cond_1
    return-void
.end method

.method public final a(Landroid/content/Context;J)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/migu/uem/a/a;->a()Lcom/migu/uem/a/a;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/a/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/migu/uem/a/i;-><init>(Lcom/migu/uem/a/g;Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Lcom/migu/uem/a/a;->a(Lcom/migu/uem/a/f;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/migu/uem/a/g;->b:J

    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/migu/uem/a/a;->a()Lcom/migu/uem/a/a;

    move-result-object v0

    new-instance v1, Lcom/migu/uem/a/h;

    invoke-direct {v1, p0, p1}, Lcom/migu/uem/a/h;-><init>(Lcom/migu/uem/a/g;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/migu/uem/a/a;->a(Lcom/migu/uem/a/f;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/a/g;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_0
    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/migu/uem/statistics/other/a;

    invoke-direct {v0}, Lcom/migu/uem/statistics/other/a;-><init>()V

    invoke-static {p1}, Lcom/migu/uem/statistics/other/a;->b(Landroid/content/Context;)Lcom/migu/uem/bean/AccountInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/migu/uem/a/g;->c:Lcom/migu/uem/bean/AccountInfo;

    const-string/jumbo v0, "\u66f4\u65b0\u4ee3\u7801\u5c42\u7f13\u5b58\u8d26\u53f7\u4fe1\u606f"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    return-void
.end method
