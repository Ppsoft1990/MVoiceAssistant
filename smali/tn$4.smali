.class Ltn$4;
.super Ljava/lang/Object;
.source "UserVoiceRegisterFragment.java"

# interfaces
.implements Lcom/iflytek/viafly/account/model/IUserInfoUpdateResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltn;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltn;


# direct methods
.method constructor <init>(Ltn;)V
    .locals 0
    .param p1, "this$0"    # Ltn;

    .prologue
    .line 482
    iput-object p1, p0, Ltn$4;->a:Ltn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startReport onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 485
    const-string/jumbo v0, "UserVoiceRegisterFragment"

    const-string/jumbo v1, "startReport onSuccess "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    return-void
.end method
