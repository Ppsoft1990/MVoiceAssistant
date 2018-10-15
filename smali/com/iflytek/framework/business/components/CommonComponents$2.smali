.class Lcom/iflytek/framework/business/components/CommonComponents$2;
.super Ljava/lang/Object;
.source "CommonComponents.java"

# interfaces
.implements Lajm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/framework/business/components/CommonComponents;->onExec(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/iflytek/mmp/core/componentsManager/ComponentsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/CommonComponents;


# direct methods
.method constructor <init>(Lcom/iflytek/framework/business/components/CommonComponents;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/framework/business/components/CommonComponents;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/iflytek/framework/business/components/CommonComponents$2;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 481
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string/jumbo v0, "000000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    const/4 v0, 0x0

    sput-boolean v0, Laxp;->a:Z

    .line 471
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents$2;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Lcom/iflytek/framework/business/components/CommonComponents;->access$100(Lcom/iflytek/framework/business/components/CommonComponents;Ljava/lang/String;)V

    .line 472
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Layh;

    invoke-direct {v1}, Layh;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 477
    :goto_0
    return-void

    .line 474
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Laxp;->a:Z

    .line 475
    iget-object v0, p0, Lcom/iflytek/framework/business/components/CommonComponents$2;->this$0:Lcom/iflytek/framework/business/components/CommonComponents;

    invoke-static {v0, p1}, Lcom/iflytek/framework/business/components/CommonComponents;->access$100(Lcom/iflytek/framework/business/components/CommonComponents;Ljava/lang/String;)V

    goto :goto_0
.end method
