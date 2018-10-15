.class Lcom/iflytek/framework/business/components/UIComponents$1;
.super Ljava/lang/Object;
.source "UIComponents.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/UIComponents;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/UIComponents;

.field final synthetic val$urlString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/UIComponents;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/UIComponents;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/iflytek/framework/business/components/UIComponents$1;->this$0:Lcom/iflytek/framework/business/components/UIComponents;

    iput-object p2, p0, Lcom/iflytek/framework/business/components/UIComponents$1;->val$urlString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 156
    invoke-static {}, Lagv;->q()Lqh;

    move-result-object v0

    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/iflytek/framework/business/components/UIComponents$1;->val$urlString:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lqh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method
