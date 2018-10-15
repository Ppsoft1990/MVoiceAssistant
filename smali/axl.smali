.class public abstract Laxl;
.super Ljava/lang/Object;
.source "TrafficInforReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)Laxl;
    .locals 5
    .param p0, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    const/4 v1, 0x0

    .line 22
    const-string/jumbo v2, "TrafficInforReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createReader(), business= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    if-nez p0, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-object v1

    .line 26
    :cond_1
    invoke-static {}, Lhl;->k()I

    move-result v0

    .line 28
    .local v0, "version":I
    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    .line 32
    sget-object v2, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->Video:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;->Music:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    if-ne p0, v2, :cond_4

    .line 34
    :cond_2
    const/16 v2, 0xe

    if-lt v0, v2, :cond_0

    .line 38
    const/16 v1, 0x13

    if-ge v0, v1, :cond_3

    .line 39
    new-instance v1, Laxi;

    invoke-direct {v1}, Laxi;-><init>()V

    goto :goto_0

    .line 43
    :cond_3
    new-instance v1, Laxg;

    invoke-direct {v1}, Laxg;-><init>()V

    goto :goto_0

    .line 46
    :cond_4
    new-instance v1, Laxg;

    invoke-direct {v1}, Laxg;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)Laxk;
.end method
