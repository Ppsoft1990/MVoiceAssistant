.class public Lcom/iflytek/common/adaptation/call/HtcCdmaCallAdapter;
.super Lcom/iflytek/common/adaptation/call/HtcDualSimCallAdapter;
.source "HtcCdmaCallAdapter.java"


# instance fields
.field private final PHONE_TYPE_CDMA:I

.field private final PHONE_TYPE_GSM:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simInfoAdapter"    # Lcom/iflytek/common/adaptation/ISimInfoAdaptation;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/iflytek/common/adaptation/call/HtcDualSimCallAdapter;-><init>(Landroid/content/Context;Lcom/iflytek/common/adaptation/ISimInfoAdaptation;)V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lcom/iflytek/common/adaptation/call/HtcCdmaCallAdapter;->PHONE_TYPE_GSM:I

    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/iflytek/common/adaptation/call/HtcCdmaCallAdapter;->PHONE_TYPE_CDMA:I

    .line 23
    return-void
.end method


# virtual methods
.method public getPhoneType()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x2

    return v0
.end method

.method public getSubPhoneType()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
