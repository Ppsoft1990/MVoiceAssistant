.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$2;
.super Ljava/lang/Object;
.source "ScheduleModifyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field final synthetic b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$2;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity;

    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$2;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/ScheduleModifyActivity$2;->a:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    .line 219
    return-void
.end method
