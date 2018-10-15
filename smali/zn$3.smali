.class Lzn$3;
.super Landroid/content/BroadcastReceiver;
.source "CAFNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzn;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzn;


# direct methods
.method constructor <init>(Lzn;)V
    .locals 0
    .param p1, "this$0"    # Lzn;

    .prologue
    .line 702
    iput-object p1, p0, Lzn$3;->a:Lzn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 705
    const-string/jumbo v0, "CAFNotificationManager"

    const-string/jumbo v1, "sim state changed."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lzn$3;->a:Lzn;

    invoke-virtual {v0}, Lzn;->t()V

    .line 707
    return-void
.end method
