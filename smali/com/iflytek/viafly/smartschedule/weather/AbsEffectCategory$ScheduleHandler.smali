.class Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;
.super Landroid/os/Handler;
.source "AbsEffectCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduleHandler"
.end annotation


# instance fields
.field private mPReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;)V
    .locals 1
    .param p2, "effectCategory"    # Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;->this$0:Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;->mPReference:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 233
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;->mPReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;

    .line 234
    .local v0, "impl":Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;
    if-nez v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory$ScheduleHandler;->this$0:Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;

    invoke-virtual {v1, p1}, Lcom/iflytek/viafly/smartschedule/weather/AbsEffectCategory;->handleMessageImpl(Landroid/os/Message;)V

    goto :goto_0
.end method
