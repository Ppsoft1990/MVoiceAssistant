.class public Lcom/iflytek/common/adaptation/siminfo/HtcCdmaSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;
.source "HtcCdmaSimInfo.java"


# instance fields
.field private final SIM1ID:I

.field private final SIM2ID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/HtcCdmaSimInfo;->SIM1ID:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/HtcCdmaSimInfo;->SIM2ID:I

    .line 22
    return-void
.end method


# virtual methods
.method protected getPhoneType()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    return v0
.end method

.method protected getSubPhoneType()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method protected isDoubleSimReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 44
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/iflytek/common/adaptation/siminfo/HtcCdmaSimInfo;->isSimReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/HtcCdmaSimInfo;->isSimReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
