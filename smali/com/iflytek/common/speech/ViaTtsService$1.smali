.class Lcom/iflytek/common/speech/ViaTtsService$1;
.super Ljava/lang/Object;
.source "ViaTtsService.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/speech/ViaTtsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/speech/ViaTtsService;


# direct methods
.method constructor <init>(Lcom/iflytek/common/speech/ViaTtsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/speech/ViaTtsService;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/iflytek/common/speech/ViaTtsService$1;->a:Lcom/iflytek/common/speech/ViaTtsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 145
    const-string/jumbo v0, "SPEECH_ViaTtsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayCompletedCallBack code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 137
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 162
    return-void
.end method
