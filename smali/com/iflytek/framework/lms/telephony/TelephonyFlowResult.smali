.class public final Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;
.super Lwa;
.source "TelephonyFlowResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7cead080406aa20cL


# instance fields
.field private mTotalFlow:Ljava/lang/String;

.field private mUsedFlow:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lwa;-><init>()V

    return-void
.end method


# virtual methods
.method public getTotalFlow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->mTotalFlow:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedFlow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->mUsedFlow:Ljava/lang/String;

    return-object v0
.end method

.method public setTotalFlow(Ljava/lang/String;)V
    .locals 0
    .param p1, "totalFlow"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->mTotalFlow:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUsedFlow(Ljava/lang/String;)V
    .locals 0
    .param p1, "usedFlow"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/iflytek/framework/lms/telephony/TelephonyFlowResult;->mUsedFlow:Ljava/lang/String;

    .line 34
    return-void
.end method
