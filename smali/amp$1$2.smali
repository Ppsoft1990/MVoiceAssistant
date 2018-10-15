.class Lamp$1$2;
.super Ljava/lang/Object;
.source "BookBizManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lamp$1;->onContentInfoResult(Lamm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lamp$1;


# direct methods
.method constructor <init>(Lamp$1;)V
    .locals 0
    .param p1, "this$1"    # Lamp$1;

    .prologue
    .line 1186
    iput-object p1, p0, Lamp$1$2;->a:Lamp$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lamp$1$2;->a:Lamp$1;

    iget-object v0, v0, Lamp$1;->a:Lamp;

    invoke-virtual {v0}, Lamp;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lamp$1$2;->a:Lamp$1;

    iget-object v0, v0, Lamp$1;->a:Lamp;

    invoke-static {v0}, Lamp;->d(Lamp;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1192
    :cond_0
    return-void
.end method
