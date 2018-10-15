.class final Lauthcommon/bd;
.super Ljava/util/TimerTask;
.source "SmsHttp.java"


# instance fields
.field private synthetic a:Lauthcommon/bc;


# direct methods
.method constructor <init>(Lauthcommon/bc;)V
    .locals 0

    iput-object p1, p0, Lauthcommon/bd;->a:Lauthcommon/bc;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string/jumbo v0, "send sms timeout"

    invoke-static {v0}, Lcom/cmcc/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lauthcommon/bd;->a:Lauthcommon/bc;

    invoke-static {v0}, Lauthcommon/bc;->a(Lauthcommon/bc;)V

    iget-object v0, p0, Lauthcommon/bd;->a:Lauthcommon/bc;

    iget-object v0, v0, Lauthcommon/bc;->l:Lauthcommon/ae$a;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "resultCode"

    const v2, 0x18f40

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lauthcommon/bd;->a:Lauthcommon/bc;

    iget-object v1, v1, Lauthcommon/bc;->l:Lauthcommon/ae$a;

    invoke-interface {v1, v0}, Lauthcommon/ae$a;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
