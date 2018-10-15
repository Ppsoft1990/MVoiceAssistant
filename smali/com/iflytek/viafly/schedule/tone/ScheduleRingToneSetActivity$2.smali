.class Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$2;
.super Landroid/os/Handler;
.source "ScheduleRingToneSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$2;->a:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$2;->a:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
