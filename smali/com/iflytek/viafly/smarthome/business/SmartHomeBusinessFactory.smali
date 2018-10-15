.class public final Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;
.super Ljava/lang/Object;
.source "SmartHomeBusinessFactory.java"


# static fields
.field private static mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

.field private static mRecognizeFilter:Lcom/iflytek/yd/speech/RecognizeFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBusinessHandler()Lcom/iflytek/framework/business/interfaces/IBusinessHandler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessHandler;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    .line 22
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;->mBusinessHandler:Lcom/iflytek/framework/business/interfaces/IBusinessHandler;

    return-object v0
.end method

.method public static getRecognizeFilter()Lcom/iflytek/yd/speech/RecognizeFilter;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;->mRecognizeFilter:Lcom/iflytek/yd/speech/RecognizeFilter;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;

    invoke-direct {v0}, Lcom/iflytek/viafly/smarthome/business/SmartSpeechResultFilter;-><init>()V

    sput-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;->mRecognizeFilter:Lcom/iflytek/yd/speech/RecognizeFilter;

    .line 30
    :cond_0
    sget-object v0, Lcom/iflytek/viafly/smarthome/business/SmartHomeBusinessFactory;->mRecognizeFilter:Lcom/iflytek/yd/speech/RecognizeFilter;

    return-object v0
.end method
