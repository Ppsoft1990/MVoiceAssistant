.class Lbaf$7;
.super Ljava/lang/Object;
.source "BaiduChanelUpdateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaf;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbaf;


# direct methods
.method constructor <init>(Lbaf;)V
    .locals 0
    .param p1, "this$0"    # Lbaf;

    .prologue
    .line 219
    iput-object p1, p0, Lbaf$7;->a:Lbaf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lbaf$7;->a:Lbaf;

    invoke-static {v0}, Lbaf;->c(Lbaf;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbaf$7$1;

    invoke-direct {v1, p0}, Lbaf$7$1;-><init>(Lbaf$7;)V

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/AIUpdateSDK;->updateCheck(Landroid/content/Context;Lcom/baidu/aiupdatesdk/CheckUpdateCallback;)V

    .line 250
    return-void
.end method
