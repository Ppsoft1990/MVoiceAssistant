.class Lcom/iflytek/viafly/smarthome/SmartHomeManager$1;
.super Ljava/lang/Object;
.source "SmartHomeManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smarthome/SmartHomeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smarthome/SmartHomeManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smarthome/SmartHomeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager$1;->this$0:Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 550
    const-string/jumbo v0, "SmartHomeManager"

    const-string/jumbo v1, "ServiceConnection.onServiceConnected"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager$1;->this$0:Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    invoke-static {p2}, Lcom/iflytek/viafly/smarthome/XHomeInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/iflytek/viafly/smarthome/XHomeInterface;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->access$002(Lcom/iflytek/viafly/smarthome/SmartHomeManager;Lcom/iflytek/viafly/smarthome/XHomeInterface;)Lcom/iflytek/viafly/smarthome/XHomeInterface;

    .line 552
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 555
    const-string/jumbo v0, "SmartHomeManager"

    const-string/jumbo v1, "ServiceConnection.onServiceDisconnected"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/iflytek/viafly/smarthome/SmartHomeManager$1;->this$0:Lcom/iflytek/viafly/smarthome/SmartHomeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/smarthome/SmartHomeManager;->access$002(Lcom/iflytek/viafly/smarthome/SmartHomeManager;Lcom/iflytek/viafly/smarthome/XHomeInterface;)Lcom/iflytek/viafly/smarthome/XHomeInterface;

    .line 557
    return-void
.end method
