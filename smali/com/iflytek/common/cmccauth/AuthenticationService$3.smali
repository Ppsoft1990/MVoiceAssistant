.class Lcom/iflytek/common/cmccauth/AuthenticationService$3;
.super Ljava/lang/Object;
.source "AuthenticationService.java"

# interfaces
.implements Lne;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/common/cmccauth/AuthenticationService;->b(Lcom/iflytek/common/adaptation/entity/SimCard;)V
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
    .line 633
    iput-object p1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$3;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lyj;I)V
    .locals 2
    .param p1, "info"    # Lyj;
    .param p2, "errorCode"    # I

    .prologue
    .line 637
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$3;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;)Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 638
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 639
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 640
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 641
    iget-object v1, p0, Lcom/iflytek/common/cmccauth/AuthenticationService$3;->a:Lcom/iflytek/common/cmccauth/AuthenticationService;

    invoke-static {v1}, Lcom/iflytek/common/cmccauth/AuthenticationService;->a(Lcom/iflytek/common/cmccauth/AuthenticationService;)Lcom/iflytek/common/cmccauth/AuthenticationService$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/iflytek/common/cmccauth/AuthenticationService$a;->sendMessage(Landroid/os/Message;)Z

    .line 642
    return-void
.end method
