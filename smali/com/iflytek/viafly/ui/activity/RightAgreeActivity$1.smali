.class Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$1;
.super Ljava/util/TimerTask;
.source "RightAgreeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;->delayKillProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/RightAgreeActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/RightAgreeActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 197
    return-void
.end method
