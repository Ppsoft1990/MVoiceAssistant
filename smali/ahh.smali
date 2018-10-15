.class public Lahh;
.super Laht;
.source "HomeNetworkHelper.java"


# direct methods
.method public constructor <init>(Lahu;)V
    .locals 0
    .param p1, "homeContext"    # Lahu;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Laht;-><init>(Lahu;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-super {p0, p1, p2}, Laht;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 34
    const-string/jumbo v3, "com.iflytek.cmcc.EXT_MSC_NET_QUALITY"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 36
    .local v2, "netQuality":I
    const-string/jumbo v3, "com.iflytek.cmcc.EXT_MSC_NET_EVENT_SRC"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "eventSrc":I
    invoke-virtual {p0}, Lahh;->q()Lahw;

    move-result-object v3

    const/16 v4, 0x1a

    invoke-virtual {v3, v4, v2, v0}, Lahw;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 38
    .local v1, "msg":Landroid/os/Message;
    const-string/jumbo v3, "HomeNetworkHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_MSC_NET_STATUS eventSrc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lahh;->q()Lahw;

    move-result-object v3

    invoke-virtual {v3, v1}, Lahw;->sendMessage(Landroid/os/Message;)Z

    .line 40
    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-super {p0, p1}, Laht;->a(Landroid/os/Message;)V

    .line 46
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_1

    .line 47
    .local v1, "isNeedToast":Z
    :goto_0
    const-string/jumbo v2, "HomeNetworkHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , src = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-lez v2, :cond_0

    .line 50
    :try_start_0
    invoke-static {}, Lagv;->c()Lcom/iflytek/viafly/HomeRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/iflytek/viafly/HomeRootView;->getHomePageView()Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/iflytek/framework/browser/pageFlow/page/HomePageView;->a(Z)V

    .line 51
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lqh;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 46
    .end local v1    # "isNeedToast":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    .restart local v1    # "isNeedToast":Z
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeNetworkHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public c(Z)Z
    .locals 1
    .param p1, "isFirst"    # Z

    .prologue
    .line 28
    invoke-super {p0, p1}, Laht;->c(Z)Z

    move-result v0

    return v0
.end method
