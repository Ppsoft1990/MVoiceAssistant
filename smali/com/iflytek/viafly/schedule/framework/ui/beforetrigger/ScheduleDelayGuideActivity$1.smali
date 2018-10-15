.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$1;
.super Ljava/lang/Object;
.source "ScheduleDelayGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleDelayGuideActivity;->finish()V

    .line 81
    return-void
.end method
