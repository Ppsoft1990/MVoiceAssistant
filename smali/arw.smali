.class Larw;
.super Ljava/lang/Object;
.source "LockScreenDefaultPluginData.java"

# interfaces
.implements Larv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "\u8bf4\u8bdd\u5c31\u80fd\u89e3\u9501\uff0c\u4e0d\u52a8\u624b\u73a9\u8f6c\u624b\u673a"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x4

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "\u58f0\u63a7\u9501\u5c4f"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Larw;->b()I

    move-result v0

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "com.iflytek.lockscreen"

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method
