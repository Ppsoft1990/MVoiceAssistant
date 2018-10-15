.class Ltm$2;
.super Ljava/lang/Object;
.source "UserVoiceLoginFragment.java"

# interfaces
.implements Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltm;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltm;


# direct methods
.method constructor <init>(Ltm;)V
    .locals 0
    .param p1, "this$0"    # Ltm;

    .prologue
    .line 223
    iput-object p1, p0, Ltm$2;->a:Ltm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 233
    const-string/jumbo v0, "UserVoiceLoginFragment"

    const-string/jumbo v1, "startLogin onSuccess"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Ltm$2;->a:Ltm;

    invoke-static {v0}, Ltm;->c(Ltm;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    return-void
.end method

.method public onSuccess(Lcom/iflytek/viafly/account/entity/User;)V
    .locals 0
    .param p1, "user"    # Lcom/iflytek/viafly/account/entity/User;

    .prologue
    .line 229
    return-void
.end method
