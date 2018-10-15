.class Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$1;
.super Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$a;
.source "ScheduleRingToneSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$1;->b:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$1;->a:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$a;-><init>(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;)V

    return-void
.end method


# virtual methods
.method public onPlayCompletedCallBack(I)V
    .locals 2
    .param p1, "error"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$1;->b:Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity$1;->a:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;->a(Lcom/iflytek/viafly/schedule/tone/ScheduleRingToneSetActivity;Landroid/net/Uri;)V

    .line 230
    return-void
.end method
