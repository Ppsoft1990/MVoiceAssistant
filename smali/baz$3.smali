.class Lbaz$3;
.super Ljava/lang/Object;
.source "VoiceNoteTtsDialog.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaz;


# direct methods
.method constructor <init>(Lbaz;)V
    .locals 0
    .param p1, "this$0"    # Lbaz;

    .prologue
    .line 145
    iput-object p1, p0, Lbaz$3;->a:Lbaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 157
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 151
    return-void
.end method
