.class Laoi$2;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/TokenProcess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoi;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laoi;


# direct methods
.method constructor <init>(Laoi;)V
    .locals 0
    .param p1, "this$0"    # Laoi;

    .prologue
    .line 213
    iput-object p1, p0, Laoi$2;->a:Laoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterLogin(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 235
    return-void
.end method

.method public loginCancel(Z)V
    .locals 2
    .param p1, "isCancel"    # Z

    .prologue
    .line 240
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "loginCancel"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public parseToken(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laoi$2$1;

    invoke-direct {v1, p0, p1}, Laoi$2$1;-><init>(Laoi$2;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 224
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 227
    const/4 v0, 0x0

    return-object v0
.end method
