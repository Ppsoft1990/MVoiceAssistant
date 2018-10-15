.class public Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/framework/ScheduleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenStateReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v1

    invoke-interface {v1}, Lave;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "ScheduleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive() | Action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ScheduleService$ScreenStateReceiver;->a:Lcom/iflytek/viafly/schedule/framework/ScheduleService;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ScheduleService;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lavg;->a(Landroid/content/Context;)Lave;

    move-result-object v1

    sget-object v2, Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;->Screen_Off:Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;

    invoke-interface {v1, v2}, Lave;->a(Lcom/iflytek/viafly/schedule/framework/ScheduleEvent;)V

    .line 199
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 192
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
