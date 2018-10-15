.class public abstract Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/AbsTrafficData;
.super Ljava/lang/Object;
.source "AbsTrafficData.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficData;


# instance fields
.field protected trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;)V
    .locals 0
    .param p1, "trafficListener"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/AbsTrafficData;->trafficListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficdata/ITrafficListener;

    .line 11
    return-void
.end method
