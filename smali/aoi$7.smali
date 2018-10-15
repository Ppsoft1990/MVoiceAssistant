.class Laoi$7;
.super Ljava/lang/Object;
.source "MiguUiLoginHelper.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/common/JSONCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoi;->c()V
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
    .line 430
    iput-object p1, p0, Laoi$7;->a:Laoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 433
    const-string/jumbo v0, "MiguUiLoginHelper"

    const-string/jumbo v1, "startBindPhone callback"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string/jumbo v0, "MiguUiLoginHelper"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-eqz p1, :cond_0

    const-string/jumbo v0, "resultCode"

    const/4 v1, -0x1

    .line 437
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18e70

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Laoi$7;->a:Laoi;

    invoke-virtual {v0}, Laoi;->d()V

    .line 445
    :cond_0
    return-void
.end method
