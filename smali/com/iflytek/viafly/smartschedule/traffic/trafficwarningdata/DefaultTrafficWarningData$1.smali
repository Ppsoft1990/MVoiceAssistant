.class Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;
.super Ljava/lang/Object;
.source "DefaultTrafficWarningData.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->getOperationResultListener()Lyn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
    .locals 7
    .param p1, "errorCode"    # I
    .param p2, "result"    # Lcom/iflytek/yd/business/OperationInfo;
    .param p3, "requestId"    # J
    .param p5, "requestType"    # I

    .prologue
    .line 34
    if-eqz p2, :cond_4

    if-nez p1, :cond_4

    move-object v2, p2

    .line 35
    check-cast v2, Lwa;

    invoke-virtual {v2}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "jsonResult":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResult(),requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 39
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-static {p2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/WarnConfigParser;->parseStrategyResult(Lwa;)Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;

    move-result-object v1

    .line 40
    .local v1, "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->getScales()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 41
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateWarnConfigInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)V

    .line 42
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    iget-object v2, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    iget-object v2, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    invoke-interface {v2, v1}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;->onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;)V

    .line 46
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateLastWarnConfigSuccessTime(J)V

    .line 69
    .end local v0    # "jsonResult":Ljava/lang/String;
    .end local v1    # "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    :cond_1
    :goto_0
    return-void

    .line 48
    .restart local v0    # "jsonResult":Ljava/lang/String;
    .restart local v1    # "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    :cond_2
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onResult() parse result fail"

    invoke-static {v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    iget-object v2, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    iget-object v2, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    invoke-interface {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;->onFailed()V

    goto :goto_0

    .line 54
    .end local v1    # "warnConfigInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_3
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    iget-object v2, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    iget-object v2, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    invoke-interface {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;->onFailed()V

    goto :goto_0

    .line 60
    .end local v0    # "jsonResult":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8bf7\u6c42\u5931\u8d25  \u7c7b\u578b\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  requestId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  errorCOde:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "errorCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " requestType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    iget-object v2, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;

    iget-object v2, v2, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/DefaultTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    invoke-interface {v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;->onFailed()V

    goto/16 :goto_0
.end method
