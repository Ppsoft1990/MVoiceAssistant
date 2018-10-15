.class Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$5;
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
    .line 761
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$5;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 764
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$5;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    .line 765
    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/iflytek/viafly/Home;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 766
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.iflytek.cmcc.ACTION_OPEN_WEATHER_CHANNEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 769
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$5;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->startActivity(Landroid/content/Intent;)V

    .line 770
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$5;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;->a(I)V

    .line 771
    return-void
.end method
