.class Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$6;
.super Ljava/lang/Object;
.source "ScheduleTriggerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    .prologue
    .line 774
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$6;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 777
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$6;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    .line 778
    invoke-virtual {v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 779
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.iflytek.cmcc.ACTION_ENTER_NEWS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 782
    invoke-static {}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a()Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    move-result-object v1

    .line 783
    .local v1, "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    if-eqz v1, :cond_0

    .line 784
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->d:Z

    .line 786
    :cond_0
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$6;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-virtual {v2, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->startActivity(Landroid/content/Intent;)V

    .line 787
    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$6;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    iget-object v2, v2, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;->a(I)V

    .line 788
    return-void
.end method
