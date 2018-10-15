.class public Lcom/iflytek/framework/business/entities/HandlerResult;
.super Ljava/lang/Object;
.source "HandlerResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mMessageObj:Ljava/lang/Object;

.field private mMessageSummary:Ljava/lang/String;

.field private mMessageTitle:Ljava/lang/String;

.field private mMessageWhat:I

.field private transient mRecognizerResult:Lcom/iflytek/yd/speech/ViaAsrResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageWhat:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageObj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMessageObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessageSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageWhat()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageWhat:I

    return v0
.end method

.method public getRecognizerResult()Lcom/iflytek/yd/speech/ViaAsrResult;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mRecognizerResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    return-object v0
.end method

.method public setMessageObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "messageObj"    # Ljava/lang/Object;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageObj:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public setMessageSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageSummary"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageSummary:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setMessageTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageTitle"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageTitle:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMessageWhat(I)V
    .locals 0
    .param p1, "messageWhat"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mMessageWhat:I

    .line 29
    return-void
.end method

.method public setRecognizerResult(Lcom/iflytek/yd/speech/ViaAsrResult;)V
    .locals 0
    .param p1, "recognizerResult"    # Lcom/iflytek/yd/speech/ViaAsrResult;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/iflytek/framework/business/entities/HandlerResult;->mRecognizerResult:Lcom/iflytek/yd/speech/ViaAsrResult;

    .line 61
    return-void
.end method
