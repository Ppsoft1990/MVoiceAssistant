.class public Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;
.super Ljava/lang/Object;
.source "WarnScale.java"


# instance fields
.field private mLevel:I

.field private mTip:Ljava/lang/String;

.field private mValue:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mLevel:I

    return v0
.end method

.method public getTip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mTip:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mValue:F

    return v0
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "mLevel"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mLevel:I

    .line 19
    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTip"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mTip:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "mValue"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mValue:F

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WarnScale{mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mTip=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/smartschedule/traffic/entity/WarnScale;->mValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
