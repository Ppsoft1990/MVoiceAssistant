.class public Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;
.super Ljava/lang/Object;
.source "TrafficStatsBlcOpLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0, v0}, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;-><init>(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->a:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    .line 66
    iput-object p2, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->b:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->c:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public a()Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->a:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Scene="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->a:Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$JmpOtherAppScene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", AppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", PackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/blc/log/helper/impl/TrafficStatsBlcOpLogHelper$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
