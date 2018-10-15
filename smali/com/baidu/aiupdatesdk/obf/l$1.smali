.class Lcom/baidu/aiupdatesdk/obf/l$1;
.super Ljava/lang/Object;
.source "BDPlatformRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/aiupdatesdk/obf/l;->c(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/obf/p;

.field final synthetic b:Lcom/baidu/aiupdatesdk/obf/n;

.field final synthetic c:Lcom/baidu/aiupdatesdk/obf/l;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/l;Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/aiupdatesdk/obf/l;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/l$1;->c:Lcom/baidu/aiupdatesdk/obf/l;

    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/l$1;->a:Lcom/baidu/aiupdatesdk/obf/p;

    iput-object p3, p0, Lcom/baidu/aiupdatesdk/obf/l$1;->b:Lcom/baidu/aiupdatesdk/obf/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/l$1;->c:Lcom/baidu/aiupdatesdk/obf/l;

    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/l$1;->a:Lcom/baidu/aiupdatesdk/obf/p;

    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/l$1;->b:Lcom/baidu/aiupdatesdk/obf/n;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/aiupdatesdk/obf/l;->b(Lcom/baidu/aiupdatesdk/obf/p;Lcom/baidu/aiupdatesdk/obf/n;)V

    .line 62
    return-void
.end method
