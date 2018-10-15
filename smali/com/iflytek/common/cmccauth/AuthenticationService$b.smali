.class Lcom/iflytek/common/cmccauth/AuthenticationService$b;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/common/cmccauth/AuthenticationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/cmccauth/AuthenticationService;


# direct methods
.method private constructor <init>(Lcom/iflytek/common/cmccauth/AuthenticationService;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/cmccauth/AuthenticationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;
    .param p2, "x1"    # Lcom/iflytek/common/cmccauth/AuthenticationService$1;

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lcom/iflytek/common/cmccauth/AuthenticationService$b;-><init>(Lcom/iflytek/common/cmccauth/AuthenticationService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x65

    const/4 v6, 0x0

    .line 838
    const-string/jumbo v1, "AuthenticationService"

    const-string/jumbo v2, "SendReceiver | onReceive"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->b(Lcom/iflytek/common/cmccauth/AuthenticationService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 840
    const-string/jumbo v1, "AuthenticationService"

    const-string/jumbo v2, "SendReceiver | send msg flag is false"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->e(Lcom/iflytek/common/cmccauth/AuthenticationService;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 844
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->e(Lcom/iflytek/common/cmccauth/AuthenticationService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 845
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 847
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc.SMS_SEND_SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    const-string/jumbo v1, "AuthenticationService"

    const-string/jumbo v2, "receiveSendState | SEND_SUCCESS"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-static {}, Lil;->a()Lil;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmccIFLY_AUTH_SEND_MSG_TIME"

    .line 850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 849
    invoke-virtual {v1, v2, v4, v5}, Lil;->a(Ljava/lang/String;J)V

    .line 851
    const/4 v1, 0x1

    invoke-static {v1}, Lmz;->d(Z)V

    .line 852
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->c(Lcom/iflytek/common/cmccauth/AuthenticationService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/cmccauth/log/SmsAuthState;->SMS_SEND_SUCCESS:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    invoke-virtual {v1, v2}, Lni;->a(Lcom/iflytek/common/cmccauth/log/SmsAuthState;)V

    .line 853
    const-string/jumbo v1, "com.iflytek.cmcc.EXTRA_IS_UITRIGGER"

    const-wide/16 v2, 0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 854
    .local v0, "mode":I
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    const-wide/16 v2, 0x2710

    invoke-static {v1, v0, v2, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;IJ)V

    .line 864
    .end local v0    # "mode":I
    :goto_1
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1, v6}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Z)V

    goto :goto_0

    .line 856
    :cond_2
    const-string/jumbo v1, "AuthenticationService"

    const-string/jumbo v2, "receiveSendState | SEND_FAILURE"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-static {v6}, Lmz;->d(Z)V

    .line 858
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->c(Lcom/iflytek/common/cmccauth/AuthenticationService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v1

    sget-object v2, Lcom/iflytek/common/cmccauth/log/SmsAuthState;->SMS_SEND_FAILURE:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    invoke-virtual {v1, v2}, Lni;->a(Lcom/iflytek/common/cmccauth/log/SmsAuthState;)V

    .line 859
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->c(Lcom/iflytek/common/cmccauth/AuthenticationService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v1

    const/16 v2, 0x2712

    invoke-virtual {v1, v4, v2}, Lni;->a(II)V

    .line 861
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    iget-object v2, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$b;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v2}, Lcom/iflytek/common/cmccauth/AuthenticationService;->f(Lcom/iflytek/common/cmccauth/AuthenticationService;)Lcom/iflytek/common/adaptation/entity/SimCard;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-static {v1, v2, v4, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Lcom/iflytek/common/adaptation/entity/SimCard;II)V

    goto :goto_1
.end method
