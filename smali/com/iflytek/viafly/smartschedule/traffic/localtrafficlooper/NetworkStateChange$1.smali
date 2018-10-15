.class Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStateChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-static {v3, v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$002(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    .line 35
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v3}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$202(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 36
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$200(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;->onConnected()V

    .line 47
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;->access$300(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange;)Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/NetworkStateChange$INetworkConListener;->onUnConnect()V

    goto :goto_0
.end method
