.class Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;
.super Landroid/os/Handler;
.source "AbsComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/AbsComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComponentHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/framework/business/components/AbsComponents;


# direct methods
.method private constructor <init>(Lcom/iflytek/framework/business/components/AbsComponents;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;->this$0:Lcom/iflytek/framework/business/components/AbsComponents;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/framework/business/components/AbsComponents;Lcom/iflytek/framework/business/components/AbsComponents$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iflytek/framework/business/components/AbsComponents;
    .param p2, "x1"    # Lcom/iflytek/framework/business/components/AbsComponents$1;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;-><init>(Lcom/iflytek/framework/business/components/AbsComponents;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/framework/business/components/AbsComponents$ComponentHandler;->this$0:Lcom/iflytek/framework/business/components/AbsComponents;

    invoke-virtual {v1, p1}, Lcom/iflytek/framework/business/components/AbsComponents;->onHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Business_Components"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
