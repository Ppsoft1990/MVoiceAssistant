.class Lcom/iflytek/common/cmccauth/AuthenticationService$1;
.super Ljava/lang/Object;
.source "AuthenticationService.java"

# interfaces
.implements Lnf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/adaptation/entity/SimCard;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/iflytek/common/cmccauth/AuthenticationService;


# direct methods
.method constructor <init>(Lcom/iflytek/common/cmccauth/AuthenticationService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/common/cmccauth/AuthenticationService;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$1;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    iput p2, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILyj;I)V
    .locals 2
    .param p1, "requestType"    # I
    .param p2, "info"    # Lyj;
    .param p3, "errorCode"    # I

    .prologue
    .line 431
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$1;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;)Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 432
    .local v0, "message":Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 433
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 434
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 435
    iget v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$1;->a:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 436
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$1;->b:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;)Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->sendMessage(Landroid/os/Message;)Z

    .line 437
    return-void
.end method
