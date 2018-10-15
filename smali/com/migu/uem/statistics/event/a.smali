.class public final Lcom/migu/uem/statistics/event/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/migu/uem/statistics/event/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/migu/uem/statistics/event/a;
    .locals 2

    sget-object v0, Lcom/migu/uem/statistics/event/a;->a:Lcom/migu/uem/statistics/event/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/migu/uem/statistics/event/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/migu/uem/statistics/event/a;->a:Lcom/migu/uem/statistics/event/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/migu/uem/statistics/event/a;

    invoke-direct {v0}, Lcom/migu/uem/statistics/event/a;-><init>()V

    sput-object v0, Lcom/migu/uem/statistics/event/a;->a:Lcom/migu/uem/statistics/event/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/migu/uem/statistics/event/a;->a:Lcom/migu/uem/statistics/event/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/migu/uem/statistics/deeplink/a;->a(Landroid/content/Context;)Lcom/migu/uem/statistics/deeplink/a;

    move-result-object v0

    const/16 v1, 0x194

    invoke-virtual {v0, v1}, Lcom/migu/uem/statistics/deeplink/a;->b(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/migu/uem/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.migu.uem.noti_to_remote"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/migu/uem/a/a/b;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "noti_romote_key_id"

    const/16 v3, 0x576

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
