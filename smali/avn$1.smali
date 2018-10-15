.class Lavn$1;
.super Ljava/lang/Object;
.source "ScheduleNotifyGalleryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lavn;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

.field final synthetic b:Lavn;


# direct methods
.method constructor <init>(Lavn;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
    .locals 0
    .param p1, "this$0"    # Lavn;

    .prologue
    .line 120
    iput-object p1, p0, Lavn$1;->b:Lavn;

    iput-object p2, p0, Lavn$1;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 124
    iget-object v0, p0, Lavn$1;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lavn$1;->b:Lavn;

    invoke-static {v0}, Lavn;->a(Lavn;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lavn$1;->a:Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    invoke-static {v0, v1, v2}, Lawb;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;Z)V

    .line 127
    iget-object v0, p0, Lavn$1;->b:Lavn;

    invoke-static {v0}, Lavn;->a(Lavn;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    iget-object v0, v0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    invoke-interface {v0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;->a(I)V

    .line 129
    :cond_0
    return-void
.end method
