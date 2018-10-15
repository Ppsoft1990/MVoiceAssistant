.class public abstract Laxm;
.super Ljava/lang/Object;
.source "TrafficStatsHelper.java"


# instance fields
.field protected a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V
    .locals 2
    .param p1, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Laxm;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "current OS\'s version is lower than FROYO"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput-object p1, p0, Laxm;->a:Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .line 29
    return-void
.end method

.method public static a(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)Laxm;
    .locals 3
    .param p0, "type"    # Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;

    .prologue
    const/4 v0, 0x0

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 38
    const-string/jumbo v1, "TrafficStatsHelper"

    const-string/jumbo v2, "current OS\'s version is lower than FROYO"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-object v0

    .line 41
    :cond_0
    if-nez p0, :cond_1

    .line 42
    const-string/jumbo v1, "TrafficStatsHelper"

    const-string/jumbo v2, "parameter type can\'t be null"

    invoke-static {v1, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    new-instance v0, Laxn;

    invoke-direct {v0, p0}, Laxn;-><init>(Lcom/iflytek/viafly/trafficstats/TrafficBusinessType;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method
