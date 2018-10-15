.class final Lo/fl;
.super Ljava/lang/Object;
.source "AuthImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/fh;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lo/fh;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lo/fl;->a:Lo/fh;

    iput-object p2, p0, Lo/fl;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lo/fl;->b:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/fl;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lo/ge;

    iget-object v1, p0, Lo/fl;->b:Landroid/content/Context;

    new-instance v2, Lo/fm;

    invoke-direct {v2, p0}, Lo/fm;-><init>(Lo/fl;)V

    invoke-direct {v0, v1, v2}, Lo/ge;-><init>(Landroid/content/Context;Lcom/cmcc/migusso/sdk/common/BoolCallBack;)V

    new-instance v1, Lo/fn;

    invoke-direct {v1, p0}, Lo/fn;-><init>(Lo/fl;)V

    invoke-virtual {v0, v1}, Lo/ge;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lo/ge;->show()V

    :cond_0
    return-void
.end method
