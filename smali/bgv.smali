.class Lbgv;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lbfu;


# direct methods
.method constructor <init>(Lbfu;)V
    .locals 0

    iput-object p1, p0, Lbgv;->a:Lbfu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lbgv;->a:Lbfu;

    invoke-static {v0}, Lbfu;->a(Lbfu;)Lbhh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgv;->a:Lbfu;

    invoke-static {v0}, Lbfu;->a(Lbfu;)Lbhh;

    move-result-object v0

    new-instance v1, Lbha;

    invoke-direct {v1, p0}, Lbha;-><init>(Lbgv;)V

    invoke-virtual {v0, v1}, Lbhh;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
