.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$2;
.super Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;
.source "ScheduleRingToneItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    invoke-direct {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;-><init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)V

    return-void
.end method


# virtual methods
.method public onPlayCompletedCallBack(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$b;->onPlayCompletedCallBack(I)V

    .line 418
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Laxa;->a(Landroid/content/Context;)Laxa;

    move-result-object v0

    invoke-virtual {v0}, Laxa;->b()V

    .line 419
    return-void
.end method
