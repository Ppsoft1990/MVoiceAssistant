.class Lars;
.super Ljava/lang/Object;
.source "CarmodeDefaultPluginData.java"

# interfaces
.implements Larv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "\u5f00\u8f66\u65f6\uff0c\u5e2e\u4f60\u66f4\u65b9\u4fbf\u5730\u63a5\u6253\u7535\u8bdd"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x3

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "\u9a7e\u9a76\u529f\u80fd"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lars;->b()I

    move-result v0

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "com.iflytek.cmcc"

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
