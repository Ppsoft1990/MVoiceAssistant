.class Lcom/iflytek/blc/push/PushManagerImpl$1;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/iflytek/blc/push/PushManagerImpl;


# direct methods
.method constructor <init>(Lcom/iflytek/blc/push/PushManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/blc/push/PushManagerImpl$1;->a:Lcom/iflytek/blc/push/PushManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "NoticeReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive| intent.getAction = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/blc/push/PushManagerImpl$1;->a:Lcom/iflytek/blc/push/PushManagerImpl;

    invoke-static {p1, v0}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "NoticeReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "noticeReceiver.onReceive() | action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl$1;->a:Lcom/iflytek/blc/push/PushManagerImpl;

    invoke-static {v0}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Lcom/iflytek/blc/push/PushManagerImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl$1;->a:Lcom/iflytek/blc/push/PushManagerImpl;

    invoke-static {v0, p1}, Lcom/iflytek/blc/push/PushManagerImpl;->a(Lcom/iflytek/blc/push/PushManagerImpl;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl$1;->a:Lcom/iflytek/blc/push/PushManagerImpl;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/push/PushManagerImpl;->sendRequest(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1, v0}, Lcom/iflytek/blc/util/StringUtil;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/iflytek/blc/core/NetworkStateProvider;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/blc/push/PushManagerImpl$1;->a:Lcom/iflytek/blc/push/PushManagerImpl;

    invoke-virtual {v0, p1}, Lcom/iflytek/blc/push/PushManagerImpl;->handleNetworkConnectedEvent(Landroid/content/Context;)V

    goto :goto_0
.end method
