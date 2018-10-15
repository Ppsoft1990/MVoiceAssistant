.class Lcom/baidu/aiupdatesdk/obf/q$1;
.super Ljava/lang/Object;
.source "UICallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/aiupdatesdk/obf/q;->b(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/baidu/aiupdatesdk/obf/q;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/q;ILjava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/baidu/aiupdatesdk/obf/q;

    .prologue
    .line 44
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/q$1;, "Lcom/baidu/aiupdatesdk/obf/q$1;"
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/q$1;->d:Lcom/baidu/aiupdatesdk/obf/q;

    iput p2, p0, Lcom/baidu/aiupdatesdk/obf/q$1;->a:I

    iput-object p3, p0, Lcom/baidu/aiupdatesdk/obf/q$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/aiupdatesdk/obf/q$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 49
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/q$1;, "Lcom/baidu/aiupdatesdk/obf/q$1;"
    :try_start_0
    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/q$1;->d:Lcom/baidu/aiupdatesdk/obf/q;

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/q;->a(Lcom/baidu/aiupdatesdk/obf/q;)Lcom/baidu/aiupdatesdk/obf/n;

    move-result-object v1

    iget v2, p0, Lcom/baidu/aiupdatesdk/obf/q$1;->a:I

    iget-object v3, p0, Lcom/baidu/aiupdatesdk/obf/q$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/aiupdatesdk/obf/q$1;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/baidu/aiupdatesdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
