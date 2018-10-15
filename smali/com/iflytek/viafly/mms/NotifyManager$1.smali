.class Lcom/iflytek/viafly/mms/NotifyManager$1;
.super Landroid/os/Handler;
.source "NotifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/mms/NotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/mms/NotifyManager;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/mms/NotifyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/mms/NotifyManager;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/iflytek/viafly/mms/NotifyManager$1;->a:Lcom/iflytek/viafly/mms/NotifyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 267
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 269
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/iflytek/viafly/mms/NotifyManager$1;->a:Lcom/iflytek/viafly/mms/NotifyManager;

    invoke-virtual {v1, v0}, Lcom/iflytek/viafly/mms/NotifyManager;->a(Landroid/content/Context;)V

    .line 271
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method
