.class Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$1;
.super Ljava/lang/Object;
.source "ScheduleTriggerDialog.java"

# interfaces
.implements Lazi$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->onCreate(Landroid/os/Bundle;)V
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
    .line 118
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 122
    const-string/jumbo v0, "ScheduleTriggerDialog"

    const-string/jumbo v1, "onHomePressed()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->finish()V

    .line 126
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "ScheduleTriggerDialog"

    const-string/jumbo v1, "onHomeLongPressed()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method
