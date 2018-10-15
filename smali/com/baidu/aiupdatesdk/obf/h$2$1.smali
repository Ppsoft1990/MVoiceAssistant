.class Lcom/baidu/aiupdatesdk/obf/h$2$1;
.super Ljava/lang/Object;
.source "AsUpdateFlow.java"

# interfaces
.implements Lcom/baidu/aiupdatesdk/obf/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/aiupdatesdk/obf/h$2;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/aiupdatesdk/obf/h$2;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/h$2;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/baidu/aiupdatesdk/obf/h$2;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/h$2$1;->b:Lcom/baidu/aiupdatesdk/obf/h$2;

    iput-object p2, p0, Lcom/baidu/aiupdatesdk/obf/h$2$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/h$2$1;->b:Lcom/baidu/aiupdatesdk/obf/h$2;

    iget-object v0, v0, Lcom/baidu/aiupdatesdk/obf/h$2;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/aiupdatesdk/obf/h$2$1;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/aiupdatesdk/obf/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    return-void
.end method
