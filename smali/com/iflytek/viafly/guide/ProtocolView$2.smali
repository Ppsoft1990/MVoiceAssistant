.class Lcom/iflytek/viafly/guide/ProtocolView$2;
.super Ljava/lang/Object;
.source "ProtocolView.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/guide/ProtocolView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/guide/ProtocolView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/guide/ProtocolView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/guide/ProtocolView;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/iflytek/viafly/guide/ProtocolView$2;->a:Lcom/iflytek/viafly/guide/ProtocolView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 561
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 576
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 551
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 581
    return-void
.end method
