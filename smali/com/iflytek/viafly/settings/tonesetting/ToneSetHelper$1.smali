.class Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper$1;
.super Ljava/lang/Object;
.source "ToneSetHelper.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper$1;->this$0:Lcom/iflytek/viafly/settings/tonesetting/ToneSetHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "ToneSetHelper"

    const-string/jumbo v1, "tts onInterruptedCallback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 2

    .prologue
    .line 61
    const-string/jumbo v0, "ToneSetHelper"

    const-string/jumbo v1, "tts onPlayBeginCallBack"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 55
    const-string/jumbo v0, "ToneSetHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tts onPlayCompletedCallBack| error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 51
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 82
    return-void
.end method
