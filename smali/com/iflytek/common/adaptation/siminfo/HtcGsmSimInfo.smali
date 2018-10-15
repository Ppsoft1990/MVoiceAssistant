.class public Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;
.super Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;
.source "HtcGsmSimInfo.java"


# instance fields
.field private final SIM1ID:I

.field private final SIM2ID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/iflytek/common/adaptation/siminfo/HTCDualSimInfo;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;->SIM1ID:I

    .line 22
    const/4 v0, 0x5

    iput v0, p0, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;->SIM2ID:I

    .line 26
    return-void
.end method


# virtual methods
.method protected getPhoneType()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public getSimState(Lcom/iflytek/common/adaptation/entity/SimCard;)I
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;->getPhoneType()I

    move-result v0

    .line 54
    .local v0, "simId":I
    sget-object v1, Lcom/iflytek/common/adaptation/entity/SimCard;->second:Lcom/iflytek/common/adaptation/entity/SimCard;

    if-ne p1, v1, :cond_0

    .line 55
    const/4 v0, 0x3

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;->getIccState:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;->invokeWithIntReturn(ILjava/lang/reflect/Method;)I

    move-result v1

    return v1
.end method

.method protected getSubPhoneType()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x5

    return v0
.end method

.method public isDoubleCard()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected isDoubleSimReady()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;->isSimReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/iflytek/common/adaptation/siminfo/HtcGsmSimInfo;->isSimReady(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
