.class public Lcom/iflytek/common/adaptation/mms/HtcCdmaMmsAdapter;
.super Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;
.source "HtcCdmaMmsAdapter.java"


# instance fields
.field private final PHONE_TYPE_CDMA:I

.field private final PHONE_TYPE_GSM:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/mms/HTCDualSimMmsAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/mms/HtcCdmaMmsAdapter;->PHONE_TYPE_GSM:I

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/common/adaptation/mms/HtcCdmaMmsAdapter;->PHONE_TYPE_CDMA:I

    .line 20
    return-void
.end method


# virtual methods
.method public getPhoneType()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    return v0
.end method

.method public getSubPhoneType()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    return v0
.end method
