.class Lcom/iflytek/common/cmccauth/AuthenticationService$2;
.super Ljava/util/TimerTask;
.source "AuthenticationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/cmccauth/AuthenticationService;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/common/cmccauth/AuthenticationService;


# direct methods
.method constructor <init>(Lcom/iflytek/common/cmccauth/AuthenticationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    .line 567
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$2;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 570
    const-string/jumbo v0, "AuthenticationService"

    const-string/jumbo v1, "timer is overtime  start to query auth"

    invoke-static {v0, v1}, Lhj;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$2;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->b(Lcom/iflytek/common/cmccauth/AuthenticationService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {v4}, Lmz;->d(Z)V

    .line 574
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$2;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v0}, Lcom/iflytek/common/cmccauth/AuthenticationService;->c(Lcom/iflytek/common/cmccauth/AuthenticationService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lni;->a(Landroid/content/Context;)Lni;

    move-result-object v0

    sget-object v1, Lcom/iflytek/common/cmccauth/log/SmsAuthState;->SMS_SEND_OVERTIME:Lcom/iflytek/common/cmccauth/log/SmsAuthState;

    invoke-virtual {v0, v1}, Lni;->a(Lcom/iflytek/common/cmccauth/log/SmsAuthState;)V

    .line 575
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$2;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;IJ)V

    .line 576
    iget-object v0, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$2;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v0, v4}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;Z)V

    .line 577
    invoke-static {v4}, Lmz;->b(Z)V

    .line 579
    :cond_0
    return-void
.end method
