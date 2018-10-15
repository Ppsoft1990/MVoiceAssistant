.class Lcom/baidu/aiupdatesdk/obf/d$b;
.super Ljava/lang/Object;
.source "TagRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/aiupdatesdk/obf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/baidu/aiupdatesdk/obf/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/baidu/aiupdatesdk/obf/d;-><init>(Lcom/baidu/aiupdatesdk/obf/d$1;)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/d$b;->a:Lcom/baidu/aiupdatesdk/obf/d;

    return-void
.end method
