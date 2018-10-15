.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$1;
.super Ljava/lang/Object;
.source "ScheduleManageView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/16 v1, 0x8

    .line 141
    if-eqz p2, :cond_1

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
