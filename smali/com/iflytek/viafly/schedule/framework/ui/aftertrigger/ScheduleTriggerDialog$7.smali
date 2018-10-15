.class Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$7;
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
    .line 837
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$7;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 840
    invoke-static {}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->a()Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;

    move-result-object v0

    .line 841
    .local v0, "newsMediaHandler":Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;
    if-eqz v0, :cond_0

    .line 842
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    sget-object v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->playing:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    if-ne v1, v2, :cond_1

    .line 843
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->f()V

    .line 852
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    sget-object v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->pause:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    if-ne v1, v2, :cond_2

    .line 845
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->g()V

    goto :goto_0

    .line 846
    :cond_2
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    sget-object v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->stop:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    if-ne v1, v2, :cond_3

    .line 847
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->h()V

    goto :goto_0

    .line 848
    :cond_3
    iget-object v1, v0, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler;->c:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    sget-object v2, Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;->specialState:Lcom/iflytek/viafly/schedule/newsschedule/NewsMediaHandler$PlayerState;

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method
