.class Lazi$a;
.super Landroid/content/BroadcastReceiver;
.source "HomeWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final synthetic e:Lazi;


# direct methods
.method constructor <init>(Lazi;)V
    .locals 1
    .param p1, "this$0"    # Lazi;

    .prologue
    .line 72
    iput-object p1, p0, Lazi$a;->e:Lazi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    const-string/jumbo v0, "reason"

    iput-object v0, p0, Lazi$a;->a:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "globalactions"

    iput-object v0, p0, Lazi$a;->b:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "recentapps"

    iput-object v0, p0, Lazi$a;->c:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "homekey"

    iput-object v0, p0, Lazi$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    const-string/jumbo v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "reason":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 84
    const-string/jumbo v2, "HomeWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lazi$a;->e:Lazi;

    invoke-static {v2}, Lazi;->a(Lazi;)Lazi$b;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    const-string/jumbo v2, "homekey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lazi$a;->e:Lazi;

    invoke-static {v2}, Lazi;->a(Lazi;)Lazi$b;

    move-result-object v2

    invoke-interface {v2}, Lazi$b;->b()V

    .line 97
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v1    # "reason":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "recentapps"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lazi$a;->e:Lazi;

    invoke-static {v2}, Lazi;->a(Lazi;)Lazi$b;

    move-result-object v2

    invoke-interface {v2}, Lazi$b;->c()V

    goto :goto_0
.end method
