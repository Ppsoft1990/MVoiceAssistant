.class Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$a;
.super Ljava/lang/Object;
.source "ScheduleRingToneSetActivity.java"

# interfaces
.implements Lju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$a;->c:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterruptedCallback()V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public onPlayBeginCallBack()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public onPlayCompletedCallBack(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 426
    return-void
.end method

.method public onPlayPauseCallBack()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method public onPlayResumeCallBack()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onProgressCallBack(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 411
    return-void
.end method

.method public onWatchCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sylText"    # Ljava/lang/String;

    .prologue
    .line 406
    return-void
.end method
