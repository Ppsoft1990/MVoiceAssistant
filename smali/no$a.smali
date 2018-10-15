.class Lno$a;
.super Landroid/content/BroadcastReceiver;
.source "DownloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lno;


# direct methods
.method private constructor <init>(Lno;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lno$a;->a:Lno;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lno;Lno$1;)V
    .locals 0
    .param p1, "x0"    # Lno;
    .param p2, "x1"    # Lno$1;

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lno$a;-><init>(Lno;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 926
    const-string/jumbo v0, "DownloadController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BroadcastReceiver onReceive, intent\'s action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v0, p0, Lno$a;->a:Lno;

    invoke-static {v0, p2}, Lno;->a(Lno;Landroid/content/Intent;)V

    .line 928
    return-void
.end method
