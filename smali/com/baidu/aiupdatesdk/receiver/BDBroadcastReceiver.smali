.class public Lcom/baidu/aiupdatesdk/receiver/BDBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BDBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    const-string/jumbo v1, "com.baidu.aiupdatesdk.ACTION_AS_DOWNLOAD_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/f;->a:Lcom/baidu/aiupdatesdk/obf/f$a;

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/baidu/aiupdatesdk/obf/f;->a:Lcom/baidu/aiupdatesdk/obf/f$a;

    invoke-interface {v1}, Lcom/baidu/aiupdatesdk/obf/f$a;->a()V

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.baidu.appsearch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/b;->a(I)Lcom/baidu/aiupdatesdk/obf/b;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/baidu/aiupdatesdk/obf/d;->a(Landroid/content/Context;Lcom/baidu/aiupdatesdk/obf/b;)V

    .line 28
    invoke-static {p1}, Lcom/baidu/aiupdatesdk/obf/f;->a(Landroid/content/Context;)Lcom/baidu/aiupdatesdk/obf/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/aiupdatesdk/obf/f;->a()V

    .line 29
    invoke-static {}, Lcom/baidu/aiupdatesdk/obf/e;->a()Lcom/baidu/aiupdatesdk/obf/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/aiupdatesdk/obf/e;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
