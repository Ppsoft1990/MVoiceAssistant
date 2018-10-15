.class Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$MyHandler;
.super Landroid/os/Handler;
.source "CategoryManagerEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    .prologue
    .line 285
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 286
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 291
    iget-object v1, p0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity$MyHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;

    .line 292
    .local v0, "outer":Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;
    if-eqz v0, :cond_0

    .line 293
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 294
    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;->access$400(Lcom/iflytek/viafly/settings/ui/categorygridview/CategoryManagerEditActivity;)V

    .line 297
    :cond_0
    return-void
.end method
