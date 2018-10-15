.class Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;
.super Landroid/os/Handler;
.source "HotEventController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HotEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;


# direct methods
.method private constructor <init>(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->this$0:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;
    .param p2, "x1"    # Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$1;

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;-><init>(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 528
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController$HotEventHandler;->this$0:Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;

    invoke-static {v0, p1}, Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;->access$100(Lcom/iflytek/viafly/smartschedule/hotevent/HotEventController;Landroid/os/Message;)V

    .line 529
    return-void
.end method
