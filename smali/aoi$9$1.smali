.class Laoi$9$1;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoi$9;->onResult(ILcom/iflytek/yd/business/OperationInfo;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoi$9;


# direct methods
.method constructor <init>(Laoi$9;)V
    .locals 0
    .param p1, "this$1"    # Laoi$9;

    .prologue
    .line 508
    iput-object p1, p0, Laoi$9$1;->a:Laoi$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 519
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "bind error"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void
.end method

.method public onSuccess(Lcom/iflytek/viafly/account/entity/User;)V
    .locals 3
    .param p1, "user"    # Lcom/iflytek/viafly/account/entity/User;

    .prologue
    .line 511
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "bind success,notify H5"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/iflytek/viafly/account/model/BindSuccessEvent;

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/iflytek/viafly/account/model/BindSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 515
    :cond_0
    return-void
.end method
