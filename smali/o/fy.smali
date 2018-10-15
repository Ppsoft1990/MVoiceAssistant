.class final Lo/fy;
.super Ljava/util/TimerTask;
.source "BindSuccessDialog.java"


# instance fields
.field private synthetic a:Lo/fx;


# direct methods
.method constructor <init>(Lo/fx;)V
    .locals 0

    iput-object p1, p0, Lo/fy;->a:Lo/fx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/fy;->a:Lo/fx;

    invoke-static {v0}, Lo/fx;->a(Lo/fx;)Ljava/util/Timer;

    iget-object v0, p0, Lo/fy;->a:Lo/fx;

    invoke-virtual {v0}, Lo/fx;->dismiss()V

    iget-object v0, p0, Lo/fy;->a:Lo/fx;

    invoke-static {v0}, Lo/fx;->b(Lo/fx;)Lcom/cmcc/migusso/sdk/common/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/fy;->a:Lo/fx;

    invoke-static {v0}, Lo/fx;->b(Lo/fx;)Lcom/cmcc/migusso/sdk/common/ICallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/cmcc/migusso/sdk/common/ICallBack;->callback()V

    :cond_0
    return-void
.end method
