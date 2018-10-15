.class Lpk$1;
.super Landroid/os/Handler;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lpk;


# direct methods
.method constructor <init>(Lpk;)V
    .locals 0
    .param p1, "this$0"    # Lpk;

    .prologue
    .line 37
    iput-object p1, p0, Lpk$1;->a:Lpk;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const/4 v2, 0x0

    .line 45
    .local v2, "interceptor":Lpi;
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Lpi;

    move-object v2, v0

    .line 46
    iget-object v3, p0, Lpk$1;->a:Lpk;

    invoke-static {v3, v2}, Lpk;->a(Lpk;Lpi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PermissionManager"

    const-string/jumbo v4, "handleMessage error"

    invoke-static {v3, v4, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v2}, Lpi;->c()V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
