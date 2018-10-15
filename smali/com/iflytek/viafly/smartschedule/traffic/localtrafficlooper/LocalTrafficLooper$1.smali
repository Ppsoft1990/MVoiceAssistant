.class Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;
.super Ljava/lang/Object;
.source "LocalTrafficLooper.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/INetworkChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged()V
    .locals 3

    .prologue
    .line 24
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-static {v1}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->access$000(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;

    .line 26
    .local v0, "executeLooper":Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
    invoke-virtual {v0}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->getTrafficLooperStrategy()Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/ITrafficLooperStrategy;->isTrafficLooper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;->onBeginCalTraffic(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V

    .line 28
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-static {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->access$100(Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;)V

    .line 29
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;

    invoke-virtual {v2}, Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/LocalTrafficLooper;->startLoop()V

    goto :goto_0

    .line 33
    .end local v0    # "executeLooper":Lcom/iflytek/viafly/smartschedule/traffic/localtrafficlooper/IExecuteLooper;
    :cond_1
    return-void
.end method
