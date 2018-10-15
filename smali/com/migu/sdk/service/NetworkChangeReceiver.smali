.class public Lcom/migu/sdk/service/NetworkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeReceiver.java"


# static fields
.field public static n:Lcom/migu/sdk/api/InitInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/migu/sdk/service/NetworkChangeReceiver;->n:Lcom/migu/sdk/api/InitInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 27
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/migu/a/b/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/migu/sdk/service/NetworkChangeReceiver;->n:Lcom/migu/sdk/api/InitInfo;

    invoke-static {p1, v0}, Lcom/migu/sdk/a/a;->a(Landroid/content/Context;Lcom/migu/sdk/api/InitInfo;)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/migu/sdk/b/a;

    sget-object v2, Lcom/migu/sdk/a/a;->i:Lcom/migu/a/c/b;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, p1, v2, v3}, Lcom/migu/sdk/b/a;-><init>(Landroid/content/Context;Lcom/migu/a/c/b;[Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1}, Lcom/migu/sdk/b/a;->C()V

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/migu/sdk/service/NetworkChangeReceiver;->n:Lcom/migu/sdk/api/InitInfo;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/migu/sdk/a/a;->j:Lcom/migu/sdk/service/NetworkChangeReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    goto :goto_0
.end method
