.class public Lcom/iflytek/viafly/smartschedule/traffic/TrafficDataAPIReader;
.super Ljava/lang/Object;
.source "TrafficDataAPIReader.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrafficDataAPIReader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllGPRSTraffic()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x400

    .line 20
    const-string/jumbo v0, "TrafficDataAPIReader"

    const-string/jumbo v1, "\u7cfb\u7edfapi\u8bfb\u53d6"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    div-long/2addr v0, v4

    div-long/2addr v0, v4

    return-wide v0
.end method
