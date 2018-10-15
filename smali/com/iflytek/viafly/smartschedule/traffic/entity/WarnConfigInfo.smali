.class public Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;
.super Ljava/lang/Object;
.source "WarnConfigInfo.java"


# instance fields
.field private mMaxAccess:I

.field private mScales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxAccess()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->mMaxAccess:I

    return v0
.end method

.method public getScales()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->mScales:Ljava/util/List;

    return-object v0
.end method

.method public setMaxAccess(I)V
    .locals 0
    .param p1, "mMaxAccess"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->mMaxAccess:I

    .line 19
    return-void
.end method

.method public setScales(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "mScales":Ljava/util/List;, "Ljava/util/List<Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;>;"
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->mScales:Ljava/util/List;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WarnConfigInfo{mScales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->mScales:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMaxAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnConfigInfo;->mMaxAccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
