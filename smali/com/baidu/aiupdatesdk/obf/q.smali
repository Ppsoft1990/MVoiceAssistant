.class public Lcom/baidu/aiupdatesdk/obf/q;
.super Ljava/lang/Object;
.source "UICallback.java"

# interfaces
.implements Lcom/baidu/aiupdatesdk/obf/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/baidu/aiupdatesdk/obf/n",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/baidu/aiupdatesdk/obf/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/baidu/aiupdatesdk/obf/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/q;, "Lcom/baidu/aiupdatesdk/obf/q<TT;>;"
    .local p1, "base":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/q;->a:Lcom/baidu/aiupdatesdk/obf/n;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/baidu/aiupdatesdk/obf/q;)Lcom/baidu/aiupdatesdk/obf/n;
    .locals 1
    .param p0, "x0"    # Lcom/baidu/aiupdatesdk/obf/q;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/q;->a:Lcom/baidu/aiupdatesdk/obf/n;

    return-object v0
.end method

.method public static a(Lcom/baidu/aiupdatesdk/obf/n;)Lcom/baidu/aiupdatesdk/obf/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/baidu/aiupdatesdk/obf/n",
            "<TT;>;)",
            "Lcom/baidu/aiupdatesdk/obf/q",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "base":Lcom/baidu/aiupdatesdk/obf/n;, "Lcom/baidu/aiupdatesdk/obf/n<TT;>;"
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/q;

    invoke-direct {v0, p0}, Lcom/baidu/aiupdatesdk/obf/q;-><init>(Lcom/baidu/aiupdatesdk/obf/n;)V

    return-object v0
.end method

.method private b(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/q;, "Lcom/baidu/aiupdatesdk/obf/q<TT;>;"
    .local p3, "extraData":Ljava/lang/Object;, "TT;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/aiupdatesdk/obf/q$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/baidu/aiupdatesdk/obf/q$1;-><init>(Lcom/baidu/aiupdatesdk/obf/q;ILjava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/baidu/aiupdatesdk/obf/q;, "Lcom/baidu/aiupdatesdk/obf/q<TT;>;"
    .local p3, "extraData":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/q;->a:Lcom/baidu/aiupdatesdk/obf/n;

    if-nez v2, :cond_0

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 32
    .local v1, "looper":Landroid/os/Looper;
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/aiupdatesdk/obf/q;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/baidu/aiupdatesdk/obf/q;->a:Lcom/baidu/aiupdatesdk/obf/n;

    invoke-interface {v2, p1, p2, p3}, Lcom/baidu/aiupdatesdk/obf/n;->a(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/aiupdatesdk/obf/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
