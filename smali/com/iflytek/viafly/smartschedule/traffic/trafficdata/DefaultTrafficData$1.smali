.class Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;
.super Ljava/lang/Object;
.source "DefaultTrafficData.java"

# interfaces
.implements Lyn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->getOnOperationResultListener()Lyn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

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
    .line 36
    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    move-object v3, p2

    .line 37
    check-cast v3, Lwa;

    invoke-virtual {v3}, Lwa;->getXmlResult()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "jsonResult":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResult(),requestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    check-cast p2, Lwa;

    .end local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    invoke-static {p2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/TrafficInfoParser;->parseResult(Lwa;)Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;

    move-result-object v2

    .line 41
    .local v2, "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    if-eqz v2, :cond_2

    .line 42
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateTrafficInfo(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V

    .line 43
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    iget-object v3, v3, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    if-eqz v3, :cond_0

    .line 44
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    iget-object v3, v3, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    invoke-interface {v3, v2}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;->onSuccess(Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;)V

    .line 59
    .end local v0    # "jsonResult":Ljava/lang/String;
    .end local v2    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :cond_0
    :goto_0
    const v3, 0xc3ba6

    if-eq v3, p1, :cond_1

    .line 60
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getCurrentTrafficInterfaceCount()I

    move-result v1

    .line 61
    .local v1, "lastCount":I
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateCurrentTrafficInterfaceCount(I)V

    .line 63
    invoke-static {}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->getInstance()Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/iflytek/viafly/smartschedule/traffic/cache/TrafficCacheManager;->updateLastTrafficSuccessTime(J)V

    .line 65
    .end local v1    # "lastCount":I
    :cond_1
    return-void

    .line 48
    .restart local v0    # "jsonResult":Ljava/lang/String;
    .restart local v2    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    iget-object v3, v3, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    if-eqz v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    iget-object v3, v3, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    invoke-interface {v3}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;->onFailed()V

    goto :goto_0

    .line 53
    .end local v0    # "jsonResult":Ljava/lang/String;
    .end local v2    # "trafficInfo":Lcom/iflytek/viafly/smartschedule/traffic/entity/TrafficInfo;
    .restart local p2    # "result":Lcom/iflytek/yd/business/OperationInfo;
    :cond_3
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    iget-object v3, v3, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    if-eqz v3, :cond_0

    .line 54
    iget-object v3, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData$1;->this$0:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;

    iget-object v3, v3, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/DefaultTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    invoke-interface {v3}, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;->onFailed()V

    goto :goto_0
.end method
