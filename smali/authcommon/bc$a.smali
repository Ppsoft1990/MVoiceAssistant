.class final Lauthcommon/bc$a;
.super Landroid/content/BroadcastReceiver;
.source "SmsHttp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lauthcommon/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lauthcommon/bc;


# direct methods
.method private constructor <init>(Lauthcommon/bc;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/bc$a;->a:Lauthcommon/bc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lauthcommon/bc;B)V
    .locals 0

    invoke-direct {p0, p1}, Lauthcommon/bc$a;-><init>(Lauthcommon/bc;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v0, "SendSmsReceiver onReceive"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceive runs on thread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/bc$a;->a:Lauthcommon/bc;

    invoke-static {v0}, Lauthcommon/bc;->a(Lauthcommon/bc;)V

    invoke-virtual {p0}, Lauthcommon/bc$a;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "send sms succeeded"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lauthcommon/be;

    invoke-direct {v1, p0}, Lauthcommon/be;-><init>(Lauthcommon/bc$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "send sms failed"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "resultCode"

    const v2, 0x18f40

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lauthcommon/bc$a;->a:Lauthcommon/bc;

    iget-object v1, v1, Lauthcommon/bc;->l:Lauthcommon/ae$a;

    invoke-interface {v1, v0}, Lauthcommon/ae$a;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method
