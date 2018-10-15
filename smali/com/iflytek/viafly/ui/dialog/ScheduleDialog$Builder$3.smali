.class Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;
.super Ljava/lang/Object;
.source "ScheduleDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->create()Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

.field final synthetic val$dialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    iput-object p2, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;->val$dialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->access$500(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->access$500(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;->this$0:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    invoke-static {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->access$600(Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder$3;->val$dialog:Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog;->dismiss()V

    .line 538
    :cond_1
    return-void
.end method
