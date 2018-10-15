.class Larx;
.super Ljava/lang/Object;
.source "OfflineSpeechDefaultPluginData.java"

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
    const-string/jumbo v0, "\u652f\u6301\u65e0\u7f51\u7edc\u65f6\u8bed\u97f3\u6253\u7535\u8bdd\u53d1\u77ed\u4fe1"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

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
    const-string/jumbo v0, "\u79bb\u7ebf\u8bed\u97f3\u5f15\u64ce"

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
    invoke-virtual {p0}, Larx;->b()I

    move-result v0

    invoke-static {v0}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getPluginIdWithType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "com.iflytek.cmcc"

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
