.class public abstract Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/AbsTrafficWarningData;
.super Ljava/lang/Object;
.source "AbsTrafficWarningData.java"

# interfaces
.implements Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningData;


# instance fields
.field protected trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;)V
    .locals 0
    .param p1, "trafficWarningListener"    # Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/AbsTrafficWarningData;->trafficWarningListener:Lcom/iflytek/viafly/smartschedule/traffic/trafficwarningdata/ITrafficWarningListener;

    .line 11
    return-void
.end method
