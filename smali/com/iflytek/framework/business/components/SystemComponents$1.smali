.class Lcom/iflytek/framework/business/components/SystemComponents$1;
.super Ljava/lang/Object;
.source "SystemComponents.java"

# interfaces
.implements Lcom/cmcc/migusso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/SystemComponents;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/SystemComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/SystemComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/SystemComponents;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/iflytek/framework/business/components/SystemComponents$1;->this$0:Lcom/iflytek/framework/business/components/SystemComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 335
    const-string/jumbo v0, ""

    .line 336
    .local v0, "token":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 337
    const-string/jumbo v1, "token"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/iflytek/framework/business/components/SystemComponents$1;->this$0:Lcom/iflytek/framework/business/components/SystemComponents;

    invoke-static {v1, v0}, Lcom/iflytek/framework/business/components/SystemComponents;->access$000(Lcom/iflytek/framework/business/components/SystemComponents;Ljava/lang/String;)V

    .line 340
    return-void
.end method
