.class Lcom/baidu/aiupdatesdk/obf/d$a$1;
.super Ljava/lang/Object;
.source "TagRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/aiupdatesdk/obf/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/aiupdatesdk/obf/d$a;


# direct methods
.method constructor <init>(Lcom/baidu/aiupdatesdk/obf/d$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/baidu/aiupdatesdk/obf/d$a;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/baidu/aiupdatesdk/obf/d$a$1;->a:Lcom/baidu/aiupdatesdk/obf/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/baidu/aiupdatesdk/obf/d$a$1;->a:Lcom/baidu/aiupdatesdk/obf/d$a;

    invoke-static {v0}, Lcom/baidu/aiupdatesdk/obf/d$a;->a(Lcom/baidu/aiupdatesdk/obf/d$a;)V

    .line 172
    return-void
.end method
