.class Lanx$a;
.super Landroid/os/Handler;
.source "HomeMiguTokenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lanx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanx;)V
    .locals 1
    .param p1, "activity"    # Lanx;

    .prologue
    .line 236
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 237
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lanx$a;->a:Ljava/lang/ref/WeakReference;

    .line 238
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 242
    iget-object v2, p0, Lanx$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanx;

    .line 243
    .local v1, "outer":Lanx;
    if-eqz v1, :cond_0

    .line 244
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 246
    :try_start_0
    invoke-virtual {v1}, Lanx;->h()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "HomeMiguTokenHelper"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
