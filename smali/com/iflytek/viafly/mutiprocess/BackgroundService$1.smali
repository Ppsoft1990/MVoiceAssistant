.class Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;
.super Ljava/lang/Object;
.source "BackgroundService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mutiprocess/BackgroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-static {p2}, Laqk$a;->a(Landroid/os/IBinder;)Laqk;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a(Lcom/iflytek/viafly/mutiprocess/BackgroundService;Laqk;)Laqk;

    .line 151
    const-string/jumbo v0, "BackgroundService"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-static {v0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)Lcom/iflytek/base/mms/MmsReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-static {v0}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)Lcom/iflytek/base/mms/MmsReceiver;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    invoke-static {v1}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->b(Lcom/iflytek/viafly/mutiprocess/BackgroundService;)Laqk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/base/mms/MmsReceiver;->a(Laqk;)V

    .line 155
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 158
    const-string/jumbo v0, "BackgroundService"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/iflytek/yd/log/Logging;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/iflytek/viafly/mutiprocess/BackgroundService$1;->a:Lcom/iflytek/viafly/mutiprocess/BackgroundService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/mutiprocess/BackgroundService;->a(Lcom/iflytek/viafly/mutiprocess/BackgroundService;Laqk;)Laqk;

    .line 160
    return-void
.end method
