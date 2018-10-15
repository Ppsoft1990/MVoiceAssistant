.class public Lcom/migu/uem/c/f;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/migu/uem/c/f;


# instance fields
.field private a:Lcom/migu/uem/b/a;

.field private b:Lcom/migu/uem/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/migu/uem/c/f;->c:Lcom/migu/uem/c/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/migu/uem/c/f;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/migu/uem/c/f;->c:Lcom/migu/uem/c/f;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/c/f;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/migu/uem/c/f;->c:Lcom/migu/uem/c/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/c/f;

    invoke-direct {v0}, Lcom/migu/uem/c/f;-><init>()V

    sput-object v0, Lcom/migu/uem/c/f;->c:Lcom/migu/uem/c/f;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    sget-object v0, Lcom/migu/uem/c/f;->c:Lcom/migu/uem/c/f;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/migu/uem/b/e;

    invoke-direct {v0}, Lcom/migu/uem/b/e;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "----------------unRegister-------------"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/c/f;->a:Lcom/migu/uem/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/migu/uem/c/f;->a:Lcom/migu/uem/b/a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/migu/uem/c/f;->b:Lcom/migu/uem/b/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/migu/uem/c/f;->b:Lcom/migu/uem/b/d;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "----------------register-------------"

    invoke-static {v0}, Lcom/migu/uem/a/a/b;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/migu/uem/c/f;->a:Lcom/migu/uem/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/b/a;

    invoke-direct {v0}, Lcom/migu/uem/b/a;-><init>()V

    iput-object v0, p0, Lcom/migu/uem/c/f;->a:Lcom/migu/uem/b/a;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/migu/uem/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/c/f;->a:Lcom/migu/uem/b/a;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/migu/uem/c/f;->b:Lcom/migu/uem/b/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/migu/uem/b/d;

    invoke-direct {v0}, Lcom/migu/uem/b/d;-><init>()V

    iput-object v0, p0, Lcom/migu/uem/c/f;->b:Lcom/migu/uem/b/d;

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.migu.uem.noti_to_remote"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/migu/uem/c/f;->b:Lcom/migu/uem/b/d;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
