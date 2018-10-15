.class public Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;
.super Ljava/lang/Object;
.source "JdVoiceModel.java"


# static fields
.field public static STREAM:Ljava/lang/String;


# instance fields
.field private currentValue:Ljava/lang/String;

.field private feeId:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private streamId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "stream"

    sput-object v0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->STREAM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->currentValue:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->feeId:Ljava/lang/String;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "currentValue"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->currentValue:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFeeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "feeId"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->feeId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->info:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setStreamId(Ljava/lang/String;)V
    .locals 0
    .param p1, "streamId"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/protocol/JdVoiceModel;->streamId:Ljava/lang/String;

    .line 28
    return-void
.end method
